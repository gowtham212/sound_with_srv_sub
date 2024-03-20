// Generated by gencpp from file sound_package/SetVolume.msg
// DO NOT EDIT!


#ifndef SOUND_PACKAGE_MESSAGE_SETVOLUME_H
#define SOUND_PACKAGE_MESSAGE_SETVOLUME_H

#include <ros/service_traits.h>


#include <sound_package/SetVolumeRequest.h>
#include <sound_package/SetVolumeResponse.h>


namespace sound_package
{

struct SetVolume
{

typedef SetVolumeRequest Request;
typedef SetVolumeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetVolume
} // namespace sound_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sound_package::SetVolume > {
  static const char* value()
  {
    return "3ea4fc3516d511dfc066b57616115ae9";
  }

  static const char* value(const ::sound_package::SetVolume&) { return value(); }
};

template<>
struct DataType< ::sound_package::SetVolume > {
  static const char* value()
  {
    return "sound_package/SetVolume";
  }

  static const char* value(const ::sound_package::SetVolume&) { return value(); }
};


// service_traits::MD5Sum< ::sound_package::SetVolumeRequest> should match
// service_traits::MD5Sum< ::sound_package::SetVolume >
template<>
struct MD5Sum< ::sound_package::SetVolumeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sound_package::SetVolume >::value();
  }
  static const char* value(const ::sound_package::SetVolumeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sound_package::SetVolumeRequest> should match
// service_traits::DataType< ::sound_package::SetVolume >
template<>
struct DataType< ::sound_package::SetVolumeRequest>
{
  static const char* value()
  {
    return DataType< ::sound_package::SetVolume >::value();
  }
  static const char* value(const ::sound_package::SetVolumeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sound_package::SetVolumeResponse> should match
// service_traits::MD5Sum< ::sound_package::SetVolume >
template<>
struct MD5Sum< ::sound_package::SetVolumeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sound_package::SetVolume >::value();
  }
  static const char* value(const ::sound_package::SetVolumeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sound_package::SetVolumeResponse> should match
// service_traits::DataType< ::sound_package::SetVolume >
template<>
struct DataType< ::sound_package::SetVolumeResponse>
{
  static const char* value()
  {
    return DataType< ::sound_package::SetVolume >::value();
  }
  static const char* value(const ::sound_package::SetVolumeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SOUND_PACKAGE_MESSAGE_SETVOLUME_H