#ifndef CAFFE_WEIGHTED_MEMORY_DATA_LAYER_HPP_
#define CAFFE_WEIGHTED_MEMORY_DATA_LAYER_HPP_

#include <vector>

#include "caffe/blob.hpp"
#include "caffe/layer.hpp"
#include "caffe/proto/caffe.pb.h"

#include "caffe/layers/base_data_layer.hpp"

namespace caffe {

template <typename Dtype>
class WeightedMemoryDataLayer : public BaseDataLayer<Dtype> {
 public:
  explicit WeightedMemoryDataLayer(const LayerParameter& param)
      : BaseDataLayer<Dtype>(param) {}
  virtual void DataLayerSetUp(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top);

  virtual inline const char* type() const { return "WeightedMemoryData"; }
  virtual inline int ExactNumBottomBlobs() const { return 0; }
  virtual inline int ExactNumTopBlobs() const { return 3; }

  virtual void AddDataLabel(const vector<Dtype>& data, const vector<Dtype>& labels);
  virtual void AddData(const vector<Dtype>& data);
  virtual void AddWeights(const vector<Dtype>& weights);

  // Reset should accept const pointers, but can't, because the memory
  //  will be given to Blob, which is mutable
  void Reset(Dtype* data, Dtype* label, int n);
  void set_batch_size(int new_size);

  int batch_size() { return batch_size_; }
  int channels() { return channels_; }
  int height() { return height_; }
  int width() { return width_; }

 protected:
  virtual void Forward_cpu(const vector<Blob<Dtype>*>& bottom,
      const vector<Blob<Dtype>*>& top);

  int batch_size_, channels_, height_, width_, size_, label_size_;
  Dtype* data_;
  Dtype* labels_;
  Dtype* weights_;

  int n_;
  size_t pos_;
  Blob<Dtype> added_data_;
  Blob<Dtype> added_label_;
  Blob<Dtype> added_weights_;

  virtual void InitWeights();
};

}  // namespace caffe

#endif  // CAFFE_WEIGHTED_MEMORY_DATA_LAYER_HPP_
