// Generated by gencpp from file sound_package/PlaySongResponse.msg
// DO NOT EDIT!


#ifndef SOUND_PACKAGE_MESSAGE_PLAYSONGRESPONSE_H
#define SOUND_PACKAGE_MESSAGE_PLAYSONGRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sound_package
{
template <class ContainerAllocator>
struct PlaySongResponse_
{
  typedef PlaySongResponse_<ContainerAllocator> Type;

  PlaySongResponse_()
    : success(false)  {
    }
  PlaySongResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::sound_package::PlaySongResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sound_package::PlaySongResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PlaySongResponse_

typedef ::sound_package::PlaySongResponse_<std::allocator<void> > PlaySongResponse;

typedef boost::shared_ptr< ::sound_package::PlaySongResponse > PlaySongResponsePtr;
typedef boost::shared_ptr< ::sound_package::PlaySongResponse const> PlaySongResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sound_package::PlaySongResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sound_package::PlaySongResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sound_package::PlaySongResponse_<ContainerAllocator1> & lhs, const ::sound_package::PlaySongResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sound_package::PlaySongResponse_<ContainerAllocator1> & lhs, const ::sound_package::PlaySongResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sound_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sound_package::PlaySongResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sound_package::PlaySongResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sound_package::PlaySongResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sound_package::PlaySongResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sound_package::PlaySongResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sound_package::PlaySongResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sound_package::PlaySongResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::sound_package::PlaySongResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::sound_package::PlaySongResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sound_package/PlaySongResponse";
  }

  static const char* value(const ::sound_package::PlaySongResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sound_package::PlaySongResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::sound_package::PlaySongResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sound_package::PlaySongResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlaySongResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sound_package::PlaySongResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sound_package::PlaySongResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SOUND_PACKAGE_MESSAGE_PLAYSONGRESPONSE_H
