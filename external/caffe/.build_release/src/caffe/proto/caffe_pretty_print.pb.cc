// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: caffe_pretty_print.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "caffe_pretty_print.pb.h"

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)

namespace caffe {

namespace {

const ::google::protobuf::Descriptor* NetParameterPrettyPrint_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  NetParameterPrettyPrint_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_caffe_5fpretty_5fprint_2eproto() {
  protobuf_AddDesc_caffe_5fpretty_5fprint_2eproto();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "caffe_pretty_print.proto");
  GOOGLE_CHECK(file != NULL);
  NetParameterPrettyPrint_descriptor_ = file->message_type(0);
  static const int NetParameterPrettyPrint_offsets_[5] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, name_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, force_backward_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, input_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, input_dim_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, layers_),
  };
  NetParameterPrettyPrint_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      NetParameterPrettyPrint_descriptor_,
      NetParameterPrettyPrint::default_instance_,
      NetParameterPrettyPrint_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(NetParameterPrettyPrint));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_caffe_5fpretty_5fprint_2eproto);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    NetParameterPrettyPrint_descriptor_, &NetParameterPrettyPrint::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_caffe_5fpretty_5fprint_2eproto() {
  delete NetParameterPrettyPrint::default_instance_;
  delete NetParameterPrettyPrint_reflection_;
}

void protobuf_AddDesc_caffe_5fpretty_5fprint_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::caffe::protobuf_AddDesc_caffe_2eproto();
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\030caffe_pretty_print.proto\022\005caffe\032\013caffe"
    ".proto\"\217\001\n\027NetParameterPrettyPrint\022\014\n\004na"
    "me\030\001 \001(\t\022\035\n\016force_backward\030\002 \001(\010:\005false\022"
    "\r\n\005input\030\003 \003(\t\022\021\n\tinput_dim\030\004 \003(\005\022%\n\006lay"
    "ers\030\005 \003(\0132\025.caffe.LayerParameter", 192);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "caffe_pretty_print.proto", &protobuf_RegisterTypes);
  NetParameterPrettyPrint::default_instance_ = new NetParameterPrettyPrint();
  NetParameterPrettyPrint::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_caffe_5fpretty_5fprint_2eproto);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_caffe_5fpretty_5fprint_2eproto {
  StaticDescriptorInitializer_caffe_5fpretty_5fprint_2eproto() {
    protobuf_AddDesc_caffe_5fpretty_5fprint_2eproto();
  }
} static_descriptor_initializer_caffe_5fpretty_5fprint_2eproto_;

// ===================================================================

#ifndef _MSC_VER
const int NetParameterPrettyPrint::kNameFieldNumber;
const int NetParameterPrettyPrint::kForceBackwardFieldNumber;
const int NetParameterPrettyPrint::kInputFieldNumber;
const int NetParameterPrettyPrint::kInputDimFieldNumber;
const int NetParameterPrettyPrint::kLayersFieldNumber;
#endif  // !_MSC_VER

NetParameterPrettyPrint::NetParameterPrettyPrint()
  : ::google::protobuf::Message() {
  SharedCtor();
  // @@protoc_insertion_point(constructor:caffe.NetParameterPrettyPrint)
}

void NetParameterPrettyPrint::InitAsDefaultInstance() {
}

NetParameterPrettyPrint::NetParameterPrettyPrint(const NetParameterPrettyPrint& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:caffe.NetParameterPrettyPrint)
}

void NetParameterPrettyPrint::SharedCtor() {
  ::google::protobuf::internal::GetEmptyString();
  _cached_size_ = 0;
  name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  force_backward_ = false;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

NetParameterPrettyPrint::~NetParameterPrettyPrint() {
  // @@protoc_insertion_point(destructor:caffe.NetParameterPrettyPrint)
  SharedDtor();
}

void NetParameterPrettyPrint::SharedDtor() {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete name_;
  }
  if (this != default_instance_) {
  }
}

void NetParameterPrettyPrint::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* NetParameterPrettyPrint::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return NetParameterPrettyPrint_descriptor_;
}

const NetParameterPrettyPrint& NetParameterPrettyPrint::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_caffe_5fpretty_5fprint_2eproto();
  return *default_instance_;
}

NetParameterPrettyPrint* NetParameterPrettyPrint::default_instance_ = NULL;

NetParameterPrettyPrint* NetParameterPrettyPrint::New() const {
  return new NetParameterPrettyPrint;
}

void NetParameterPrettyPrint::Clear() {
  if (_has_bits_[0 / 32] & 3) {
    if (has_name()) {
      if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
        name_->clear();
      }
    }
    force_backward_ = false;
  }
  input_.Clear();
  input_dim_.Clear();
  layers_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool NetParameterPrettyPrint::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:caffe.NetParameterPrettyPrint)
  for (;;) {
    ::std::pair< ::google::protobuf::uint32, bool> p = input->ReadTagWithCutoff(127);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // optional string name = 1;
      case 1: {
        if (tag == 10) {
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->mutable_name()));
          ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
            this->name().data(), this->name().length(),
            ::google::protobuf::internal::WireFormat::PARSE,
            "name");
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(16)) goto parse_force_backward;
        break;
      }

      // optional bool force_backward = 2 [default = false];
      case 2: {
        if (tag == 16) {
         parse_force_backward:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   bool, ::google::protobuf::internal::WireFormatLite::TYPE_BOOL>(
                 input, &force_backward_)));
          set_has_force_backward();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(26)) goto parse_input;
        break;
      }

      // repeated string input = 3;
      case 3: {
        if (tag == 26) {
         parse_input:
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->add_input()));
          ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
            this->input(this->input_size() - 1).data(),
            this->input(this->input_size() - 1).length(),
            ::google::protobuf::internal::WireFormat::PARSE,
            "input");
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(26)) goto parse_input;
        if (input->ExpectTag(32)) goto parse_input_dim;
        break;
      }

      // repeated int32 input_dim = 4;
      case 4: {
        if (tag == 32) {
         parse_input_dim:
          DO_((::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 1, 32, input, this->mutable_input_dim())));
        } else if (tag == 34) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, this->mutable_input_dim())));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(32)) goto parse_input_dim;
        if (input->ExpectTag(42)) goto parse_layers;
        break;
      }

      // repeated .caffe.LayerParameter layers = 5;
      case 5: {
        if (tag == 42) {
         parse_layers:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
                input, add_layers()));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(42)) goto parse_layers;
        if (input->ExpectAtEnd()) goto success;
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0 ||
            ::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:caffe.NetParameterPrettyPrint)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:caffe.NetParameterPrettyPrint)
  return false;
#undef DO_
}

void NetParameterPrettyPrint::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:caffe.NetParameterPrettyPrint)
  // optional string name = 1;
  if (has_name()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
      this->name().data(), this->name().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE,
      "name");
    ::google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(
      1, this->name(), output);
  }

  // optional bool force_backward = 2 [default = false];
  if (has_force_backward()) {
    ::google::protobuf::internal::WireFormatLite::WriteBool(2, this->force_backward(), output);
  }

  // repeated string input = 3;
  for (int i = 0; i < this->input_size(); i++) {
  ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
    this->input(i).data(), this->input(i).length(),
    ::google::protobuf::internal::WireFormat::SERIALIZE,
    "input");
    ::google::protobuf::internal::WireFormatLite::WriteString(
      3, this->input(i), output);
  }

  // repeated int32 input_dim = 4;
  for (int i = 0; i < this->input_dim_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(
      4, this->input_dim(i), output);
  }

  // repeated .caffe.LayerParameter layers = 5;
  for (int i = 0; i < this->layers_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      5, this->layers(i), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
  // @@protoc_insertion_point(serialize_end:caffe.NetParameterPrettyPrint)
}

::google::protobuf::uint8* NetParameterPrettyPrint::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // @@protoc_insertion_point(serialize_to_array_start:caffe.NetParameterPrettyPrint)
  // optional string name = 1;
  if (has_name()) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
      this->name().data(), this->name().length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE,
      "name");
    target =
      ::google::protobuf::internal::WireFormatLite::WriteStringToArray(
        1, this->name(), target);
  }

  // optional bool force_backward = 2 [default = false];
  if (has_force_backward()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteBoolToArray(2, this->force_backward(), target);
  }

  // repeated string input = 3;
  for (int i = 0; i < this->input_size(); i++) {
    ::google::protobuf::internal::WireFormat::VerifyUTF8StringNamedField(
      this->input(i).data(), this->input(i).length(),
      ::google::protobuf::internal::WireFormat::SERIALIZE,
      "input");
    target = ::google::protobuf::internal::WireFormatLite::
      WriteStringToArray(3, this->input(i), target);
  }

  // repeated int32 input_dim = 4;
  for (int i = 0; i < this->input_dim_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteInt32ToArray(4, this->input_dim(i), target);
  }

  // repeated .caffe.LayerParameter layers = 5;
  for (int i = 0; i < this->layers_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        5, this->layers(i), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:caffe.NetParameterPrettyPrint)
  return target;
}

int NetParameterPrettyPrint::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // optional string name = 1;
    if (has_name()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::StringSize(
          this->name());
    }

    // optional bool force_backward = 2 [default = false];
    if (has_force_backward()) {
      total_size += 1 + 1;
    }

  }
  // repeated string input = 3;
  total_size += 1 * this->input_size();
  for (int i = 0; i < this->input_size(); i++) {
    total_size += ::google::protobuf::internal::WireFormatLite::StringSize(
      this->input(i));
  }

  // repeated int32 input_dim = 4;
  {
    int data_size = 0;
    for (int i = 0; i < this->input_dim_size(); i++) {
      data_size += ::google::protobuf::internal::WireFormatLite::
        Int32Size(this->input_dim(i));
    }
    total_size += 1 * this->input_dim_size() + data_size;
  }

  // repeated .caffe.LayerParameter layers = 5;
  total_size += 1 * this->layers_size();
  for (int i = 0; i < this->layers_size(); i++) {
    total_size +=
      ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
        this->layers(i));
  }

  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void NetParameterPrettyPrint::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const NetParameterPrettyPrint* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const NetParameterPrettyPrint*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void NetParameterPrettyPrint::MergeFrom(const NetParameterPrettyPrint& from) {
  GOOGLE_CHECK_NE(&from, this);
  input_.MergeFrom(from.input_);
  input_dim_.MergeFrom(from.input_dim_);
  layers_.MergeFrom(from.layers_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_name()) {
      set_name(from.name());
    }
    if (from.has_force_backward()) {
      set_force_backward(from.force_backward());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void NetParameterPrettyPrint::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void NetParameterPrettyPrint::CopyFrom(const NetParameterPrettyPrint& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool NetParameterPrettyPrint::IsInitialized() const {

  return true;
}

void NetParameterPrettyPrint::Swap(NetParameterPrettyPrint* other) {
  if (other != this) {
    std::swap(name_, other->name_);
    std::swap(force_backward_, other->force_backward_);
    input_.Swap(&other->input_);
    input_dim_.Swap(&other->input_dim_);
    layers_.Swap(&other->layers_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata NetParameterPrettyPrint::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = NetParameterPrettyPrint_descriptor_;
  metadata.reflection = NetParameterPrettyPrint_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace caffe

// @@protoc_insertion_point(global_scope)