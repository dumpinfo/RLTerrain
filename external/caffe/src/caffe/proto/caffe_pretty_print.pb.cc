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
    ::google::protobuf::internal::GeneratedMessageReflection::NewGeneratedMessageReflection(
      NetParameterPrettyPrint_descriptor_,
      NetParameterPrettyPrint::default_instance_,
      NetParameterPrettyPrint_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, _has_bits_[0]),
      -1,
      -1,
      sizeof(NetParameterPrettyPrint),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(NetParameterPrettyPrint, _internal_metadata_),
      -1);
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

namespace {

static void MergeFromFail(int line) GOOGLE_ATTRIBUTE_COLD;
static void MergeFromFail(int line) {
  GOOGLE_CHECK(false) << __FILE__ << ":" << line;
}

}  // namespace


// ===================================================================

#ifndef _MSC_VER
const int NetParameterPrettyPrint::kNameFieldNumber;
const int NetParameterPrettyPrint::kForceBackwardFieldNumber;
const int NetParameterPrettyPrint::kInputFieldNumber;
const int NetParameterPrettyPrint::kInputDimFieldNumber;
const int NetParameterPrettyPrint::kLayersFieldNumber;
#endif  // !_MSC_VER

NetParameterPrettyPrint::NetParameterPrettyPrint()
  : ::google::protobuf::Message(), _internal_metadata_(NULL) {
  SharedCtor();
  // @@protoc_insertion_point(constructor:caffe.NetParameterPrettyPrint)
}

void NetParameterPrettyPrint::InitAsDefaultInstance() {
}

NetParameterPrettyPrint::NetParameterPrettyPrint(const NetParameterPrettyPrint& from)
  : ::google::protobuf::Message(),
    _internal_metadata_(NULL) {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:caffe.NetParameterPrettyPrint)
}

void NetParameterPrettyPrint::SharedCtor() {
  ::google::protobuf::internal::GetEmptyString();
  _cached_size_ = 0;
  name_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  force_backward_ = false;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

NetParameterPrettyPrint::~NetParameterPrettyPrint() {
  // @@protoc_insertion_point(destructor:caffe.NetParameterPrettyPrint)
  SharedDtor();
}

void NetParameterPrettyPrint::SharedDtor() {
  name_.DestroyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
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

NetParameterPrettyPrint* NetParameterPrettyPrint::New(::google::protobuf::Arena* arena) const {
  NetParameterPrettyPrint* n = new NetParameterPrettyPrint;
  if (arena != NULL) {
    arena->Own(n);
  }
  return n;
}

void NetParameterPrettyPrint::Clear() {
  if (_has_bits_[0 / 32] & 3u) {
    if (has_name()) {
      name_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    }
    force_backward_ = false;
  }
  input_.Clear();
  input_dim_.Clear();
  layers_.Clear();
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  if (_internal_metadata_.have_unknown_fields()) {
    mutable_unknown_fields()->Clear();
  }
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
            "caffe.NetParameterPrettyPrint.name");
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
            "caffe.NetParameterPrettyPrint.input");
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
          DO_(input->IncrementRecursionDepth());
         parse_loop_layers:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtualNoRecursionDepth(
                input, add_layers()));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(42)) goto parse_loop_layers;
        input->UnsafeDecrementRecursionDepth();
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
      "caffe.NetParameterPrettyPrint.name");
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
      "caffe.NetParameterPrettyPrint.input");
    ::google::protobuf::internal::WireFormatLite::WriteString(
      3, this->input(i), output);
  }

  // repeated int32 input_dim = 4;
  for (int i = 0; i < this->input_dim_size(); i++) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(
      4, this->input_dim(i), output);
  }

  // repeated .caffe.LayerParameter layers = 5;
  for (unsigned int i = 0, n = this->layers_size(); i < n; i++) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      5, this->layers(i), output);
  }

  if (_internal_metadata_.have_unknown_fields()) {
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
      "caffe.NetParameterPrettyPrint.name");
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
      "caffe.NetParameterPrettyPrint.input");
    target = ::google::protobuf::internal::WireFormatLite::
      WriteStringToArray(3, this->input(i), target);
  }

  // repeated int32 input_dim = 4;
  for (int i = 0; i < this->input_dim_size(); i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteInt32ToArray(4, this->input_dim(i), target);
  }

  // repeated .caffe.LayerParameter layers = 5;
  for (unsigned int i = 0, n = this->layers_size(); i < n; i++) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        5, this->layers(i), target);
  }

  if (_internal_metadata_.have_unknown_fields()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:caffe.NetParameterPrettyPrint)
  return target;
}

int NetParameterPrettyPrint::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & 3u) {
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

  if (_internal_metadata_.have_unknown_fields()) {
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
  if (GOOGLE_PREDICT_FALSE(&from == this)) MergeFromFail(__LINE__);
  const NetParameterPrettyPrint* source = 
      ::google::protobuf::internal::DynamicCastToGenerated<const NetParameterPrettyPrint>(
          &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void NetParameterPrettyPrint::MergeFrom(const NetParameterPrettyPrint& from) {
  if (GOOGLE_PREDICT_FALSE(&from == this)) MergeFromFail(__LINE__);
  input_.MergeFrom(from.input_);
  input_dim_.MergeFrom(from.input_dim_);
  layers_.MergeFrom(from.layers_);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_name()) {
      set_has_name();
      name_.AssignWithDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), from.name_);
    }
    if (from.has_force_backward()) {
      set_force_backward(from.force_backward());
    }
  }
  if (from._internal_metadata_.have_unknown_fields()) {
    mutable_unknown_fields()->MergeFrom(from.unknown_fields());
  }
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
  if (other == this) return;
  InternalSwap(other);
}
void NetParameterPrettyPrint::InternalSwap(NetParameterPrettyPrint* other) {
  name_.Swap(&other->name_);
  std::swap(force_backward_, other->force_backward_);
  input_.UnsafeArenaSwap(&other->input_);
  input_dim_.UnsafeArenaSwap(&other->input_dim_);
  layers_.UnsafeArenaSwap(&other->layers_);
  std::swap(_has_bits_[0], other->_has_bits_[0]);
  _internal_metadata_.Swap(&other->_internal_metadata_);
  std::swap(_cached_size_, other->_cached_size_);
}

::google::protobuf::Metadata NetParameterPrettyPrint::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = NetParameterPrettyPrint_descriptor_;
  metadata.reflection = NetParameterPrettyPrint_reflection_;
  return metadata;
}

#if PROTOBUF_INLINE_NOT_IN_HEADERS
// NetParameterPrettyPrint

// optional string name = 1;
bool NetParameterPrettyPrint::has_name() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
void NetParameterPrettyPrint::set_has_name() {
  _has_bits_[0] |= 0x00000001u;
}
void NetParameterPrettyPrint::clear_has_name() {
  _has_bits_[0] &= ~0x00000001u;
}
void NetParameterPrettyPrint::clear_name() {
  name_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  clear_has_name();
}
 const ::std::string& NetParameterPrettyPrint::name() const {
  // @@protoc_insertion_point(field_get:caffe.NetParameterPrettyPrint.name)
  return name_.GetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 void NetParameterPrettyPrint::set_name(const ::std::string& value) {
  set_has_name();
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:caffe.NetParameterPrettyPrint.name)
}
 void NetParameterPrettyPrint::set_name(const char* value) {
  set_has_name();
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:caffe.NetParameterPrettyPrint.name)
}
 void NetParameterPrettyPrint::set_name(const char* value, size_t size) {
  set_has_name();
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:caffe.NetParameterPrettyPrint.name)
}
 ::std::string* NetParameterPrettyPrint::mutable_name() {
  set_has_name();
  // @@protoc_insertion_point(field_mutable:caffe.NetParameterPrettyPrint.name)
  return name_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 ::std::string* NetParameterPrettyPrint::release_name() {
  clear_has_name();
  return name_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 void NetParameterPrettyPrint::set_allocated_name(::std::string* name) {
  if (name != NULL) {
    set_has_name();
  } else {
    clear_has_name();
  }
  name_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), name);
  // @@protoc_insertion_point(field_set_allocated:caffe.NetParameterPrettyPrint.name)
}

// optional bool force_backward = 2 [default = false];
bool NetParameterPrettyPrint::has_force_backward() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
void NetParameterPrettyPrint::set_has_force_backward() {
  _has_bits_[0] |= 0x00000002u;
}
void NetParameterPrettyPrint::clear_has_force_backward() {
  _has_bits_[0] &= ~0x00000002u;
}
void NetParameterPrettyPrint::clear_force_backward() {
  force_backward_ = false;
  clear_has_force_backward();
}
 bool NetParameterPrettyPrint::force_backward() const {
  // @@protoc_insertion_point(field_get:caffe.NetParameterPrettyPrint.force_backward)
  return force_backward_;
}
 void NetParameterPrettyPrint::set_force_backward(bool value) {
  set_has_force_backward();
  force_backward_ = value;
  // @@protoc_insertion_point(field_set:caffe.NetParameterPrettyPrint.force_backward)
}

// repeated string input = 3;
int NetParameterPrettyPrint::input_size() const {
  return input_.size();
}
void NetParameterPrettyPrint::clear_input() {
  input_.Clear();
}
 const ::std::string& NetParameterPrettyPrint::input(int index) const {
  // @@protoc_insertion_point(field_get:caffe.NetParameterPrettyPrint.input)
  return input_.Get(index);
}
 ::std::string* NetParameterPrettyPrint::mutable_input(int index) {
  // @@protoc_insertion_point(field_mutable:caffe.NetParameterPrettyPrint.input)
  return input_.Mutable(index);
}
 void NetParameterPrettyPrint::set_input(int index, const ::std::string& value) {
  // @@protoc_insertion_point(field_set:caffe.NetParameterPrettyPrint.input)
  input_.Mutable(index)->assign(value);
}
 void NetParameterPrettyPrint::set_input(int index, const char* value) {
  input_.Mutable(index)->assign(value);
  // @@protoc_insertion_point(field_set_char:caffe.NetParameterPrettyPrint.input)
}
 void NetParameterPrettyPrint::set_input(int index, const char* value, size_t size) {
  input_.Mutable(index)->assign(
    reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:caffe.NetParameterPrettyPrint.input)
}
 ::std::string* NetParameterPrettyPrint::add_input() {
  return input_.Add();
}
 void NetParameterPrettyPrint::add_input(const ::std::string& value) {
  input_.Add()->assign(value);
  // @@protoc_insertion_point(field_add:caffe.NetParameterPrettyPrint.input)
}
 void NetParameterPrettyPrint::add_input(const char* value) {
  input_.Add()->assign(value);
  // @@protoc_insertion_point(field_add_char:caffe.NetParameterPrettyPrint.input)
}
 void NetParameterPrettyPrint::add_input(const char* value, size_t size) {
  input_.Add()->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_add_pointer:caffe.NetParameterPrettyPrint.input)
}
 const ::google::protobuf::RepeatedPtrField< ::std::string>&
NetParameterPrettyPrint::input() const {
  // @@protoc_insertion_point(field_list:caffe.NetParameterPrettyPrint.input)
  return input_;
}
 ::google::protobuf::RepeatedPtrField< ::std::string>*
NetParameterPrettyPrint::mutable_input() {
  // @@protoc_insertion_point(field_mutable_list:caffe.NetParameterPrettyPrint.input)
  return &input_;
}

// repeated int32 input_dim = 4;
int NetParameterPrettyPrint::input_dim_size() const {
  return input_dim_.size();
}
void NetParameterPrettyPrint::clear_input_dim() {
  input_dim_.Clear();
}
 ::google::protobuf::int32 NetParameterPrettyPrint::input_dim(int index) const {
  // @@protoc_insertion_point(field_get:caffe.NetParameterPrettyPrint.input_dim)
  return input_dim_.Get(index);
}
 void NetParameterPrettyPrint::set_input_dim(int index, ::google::protobuf::int32 value) {
  input_dim_.Set(index, value);
  // @@protoc_insertion_point(field_set:caffe.NetParameterPrettyPrint.input_dim)
}
 void NetParameterPrettyPrint::add_input_dim(::google::protobuf::int32 value) {
  input_dim_.Add(value);
  // @@protoc_insertion_point(field_add:caffe.NetParameterPrettyPrint.input_dim)
}
 const ::google::protobuf::RepeatedField< ::google::protobuf::int32 >&
NetParameterPrettyPrint::input_dim() const {
  // @@protoc_insertion_point(field_list:caffe.NetParameterPrettyPrint.input_dim)
  return input_dim_;
}
 ::google::protobuf::RepeatedField< ::google::protobuf::int32 >*
NetParameterPrettyPrint::mutable_input_dim() {
  // @@protoc_insertion_point(field_mutable_list:caffe.NetParameterPrettyPrint.input_dim)
  return &input_dim_;
}

// repeated .caffe.LayerParameter layers = 5;
int NetParameterPrettyPrint::layers_size() const {
  return layers_.size();
}
void NetParameterPrettyPrint::clear_layers() {
  layers_.Clear();
}
const ::caffe::LayerParameter& NetParameterPrettyPrint::layers(int index) const {
  // @@protoc_insertion_point(field_get:caffe.NetParameterPrettyPrint.layers)
  return layers_.Get(index);
}
::caffe::LayerParameter* NetParameterPrettyPrint::mutable_layers(int index) {
  // @@protoc_insertion_point(field_mutable:caffe.NetParameterPrettyPrint.layers)
  return layers_.Mutable(index);
}
::caffe::LayerParameter* NetParameterPrettyPrint::add_layers() {
  // @@protoc_insertion_point(field_add:caffe.NetParameterPrettyPrint.layers)
  return layers_.Add();
}
::google::protobuf::RepeatedPtrField< ::caffe::LayerParameter >*
NetParameterPrettyPrint::mutable_layers() {
  // @@protoc_insertion_point(field_mutable_list:caffe.NetParameterPrettyPrint.layers)
  return &layers_;
}
const ::google::protobuf::RepeatedPtrField< ::caffe::LayerParameter >&
NetParameterPrettyPrint::layers() const {
  // @@protoc_insertion_point(field_list:caffe.NetParameterPrettyPrint.layers)
  return layers_;
}

#endif  // PROTOBUF_INLINE_NOT_IN_HEADERS

// @@protoc_insertion_point(namespace_scope)

}  // namespace caffe

// @@protoc_insertion_point(global_scope)
