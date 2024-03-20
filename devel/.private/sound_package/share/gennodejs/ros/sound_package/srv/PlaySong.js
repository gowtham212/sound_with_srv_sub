// Auto-generated. Do not edit!

// (in-package sound_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlaySongRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.song_name = null;
    }
    else {
      if (initObj.hasOwnProperty('song_name')) {
        this.song_name = initObj.song_name
      }
      else {
        this.song_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaySongRequest
    // Serialize message field [song_name]
    bufferOffset = _serializer.string(obj.song_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySongRequest
    let len;
    let data = new PlaySongRequest(null);
    // Deserialize message field [song_name]
    data.song_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.song_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sound_package/PlaySongRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '255f71252667ebf7fa55ca7b065dd180';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # PlaySong.srv
    string song_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySongRequest(null);
    if (msg.song_name !== undefined) {
      resolved.song_name = msg.song_name;
    }
    else {
      resolved.song_name = ''
    }

    return resolved;
    }
};

class PlaySongResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaySongResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySongResponse
    let len;
    let data = new PlaySongResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sound_package/PlaySongResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySongResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PlaySongRequest,
  Response: PlaySongResponse,
  md5sum() { return '80c5c0485165c4384c0ff23ac3873126'; },
  datatype() { return 'sound_package/PlaySong'; }
};
