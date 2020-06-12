#include <vector>

#include "caffe/layers/weighted_memory_data_layer.hpp"

namespace caffe {

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::DataLayerSetUp(const vector<Blob<Dtype>*>& bottom,
     const vector<Blob<Dtype>*>& top) {
  batch_size_ = this->layer_param_.weighted_memory_data_param().batch_size();
  channels_ = this->layer_param_.weighted_memory_data_param().channels();
  height_ = this->layer_param_.weighted_memory_data_param().height();
  width_ = this->layer_param_.weighted_memory_data_param().width();
  label_size_ = this->layer_param_.weighted_memory_data_param().label_size();
  size_ = channels_ * height_ * width_;
  n_ = 0;
  pos_ = 0;

  CHECK_GT(batch_size_ * size_, 0) <<
      "batch_size, channels, height, and width must be specified and"
      " positive in weighted_memory_data_param";
  
  top[0]->Reshape(batch_size_, channels_, height_, width_);
  top[1]->Reshape(batch_size_, label_size_, 1, 1);
  top[2]->Reshape(batch_size_, label_size_, 1, 1);

  added_data_.Reshape(batch_size_, channels_, height_, width_);
  added_label_.Reshape(batch_size_, label_size_, 1, 1);
  added_weights_.Reshape(batch_size_, label_size_, 1, 1);

  data_ = NULL;
  labels_ = NULL;
  weights_ = NULL;

  added_data_.cpu_data();
  added_label_.cpu_data();
  added_weights_.cpu_data();

  InitWeights();
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::AddDataLabel(const vector<Dtype>& data, const vector<Dtype>& labels)
{
	size_t num = data.size() / size_;
	CHECK_GT(num, 0) << "There is no mat to add";
	CHECK_EQ(num, batch_size_) <<
		"The added data must be a multiple of the batch size.";
	CHECK_EQ(labels.size() / label_size_, num) <<
		"Number of labels must be the same as data.";

	Dtype* top_data = added_data_.mutable_cpu_data();
	for (int item_id = 0; item_id < data.size(); ++item_id) {
		top_data[item_id] = data[item_id];
	}

	// Copy Labels
	Dtype* top_label = added_label_.mutable_cpu_data();
	for (int item_id = 0; item_id < labels.size(); ++item_id) {
		top_label[item_id] = labels[item_id];
	}

	// num_images == batch_size_
	Reset(top_data, top_label, num);
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::AddData(const vector<Dtype>& data)
{
	size_t num = data.size() / size_;
	CHECK_GT(num, 0) << "There is no mat to add";
	CHECK_EQ(num % batch_size_, 0) <<
		"The added data must be a multiple of the batch size.";
	added_data_.Reshape(num, channels_, height_, width_);

	Dtype* top_data = added_data_.mutable_cpu_data();
	for (int item_id = 0; item_id < data.size(); ++item_id) {
		top_data[item_id] = data[item_id];
	}

	Dtype* top_label = added_label_.mutable_cpu_data();
	Reset(top_data, top_label, num);
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::AddWeights(const vector<Dtype>& weights)
{
	size_t num = weights.size() / label_size_;
	CHECK_GT(num, 0) << "There is no mat to add";
	CHECK_EQ(num, batch_size_) <<
		"The added data must be equal to the batch size.";

	// Copy Weights
	Dtype* top_weights = added_weights_.mutable_cpu_data();
	for (int item_id = 0; item_id < weights.size(); ++item_id) {
		top_weights[item_id] = weights[item_id];
	}

	weights_ = top_weights;
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::Reset(Dtype* data, Dtype* labels, int n) {
  CHECK(data);
  CHECK(labels);
  CHECK_EQ(n % batch_size_, 0) << "n must be a multiple of batch size";
  // Warn with transformation parameters since a memory array is meant to
  // be generic and no transformations are done with Reset().
  if (this->layer_param_.has_transform_param()) {
    LOG(WARNING) << this->type() << " does not transform array data on Reset()";
  }
  data_ = data;
  labels_ = labels;
  n_ = n;
  pos_ = 0;
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::set_batch_size(int new_size) {
  batch_size_ = new_size;
  added_data_.Reshape(batch_size_, channels_, height_, width_);
  added_label_.Reshape(batch_size_, label_size_, 1, 1);
  added_weights_.Reshape(batch_size_, label_size_, 1, 1);
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::Forward_cpu(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top) {
  CHECK(data_) << "WeightedMemoryDataLayer needs to be initalized by calling Reset";
  top[0]->Reshape(batch_size_, channels_, height_, width_);
  top[1]->Reshape(batch_size_, label_size_, 1, 1);
  top[2]->Reshape(batch_size_, label_size_, 1, 1);

  top[0]->set_cpu_data(data_ + pos_ * size_);
  top[1]->set_cpu_data(labels_ + pos_ * label_size_);
  top[2]->set_cpu_data(weights_ + pos_ * label_size_);
}

template <typename Dtype>
void WeightedMemoryDataLayer<Dtype>::InitWeights()
{
	Dtype* cpu_data = added_weights_.mutable_cpu_data();
	for (int item_id = 0; item_id < batch_size_ * label_size_; ++item_id) {
		cpu_data[item_id] = 1;
	}

	weights_ = cpu_data;
}

INSTANTIATE_CLASS(WeightedMemoryDataLayer);
REGISTER_LAYER_CLASS(WeightedMemoryData);

}  // namespace caffe
