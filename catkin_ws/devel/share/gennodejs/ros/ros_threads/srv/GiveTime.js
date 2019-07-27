// Auto-generated. Do not edit!

// (in-package ros_threads.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GiveTimeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Delay_s = null;
    }
    else {
      if (initObj.hasOwnProperty('Delay_s')) {
        this.Delay_s = initObj.Delay_s
      }
      else {
        this.Delay_s = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GiveTimeRequest
    // Serialize message field [Delay_s]
    bufferOffset = _serializer.int64(obj.Delay_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GiveTimeRequest
    let len;
    let data = new GiveTimeRequest(null);
    // Deserialize message field [Delay_s]
    data.Delay_s = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_threads/GiveTimeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a1ca202dab30bdc43d00f5365748e22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 Delay_s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GiveTimeRequest(null);
    if (msg.Delay_s !== undefined) {
      resolved.Delay_s = msg.Delay_s;
    }
    else {
      resolved.Delay_s = 0
    }

    return resolved;
    }
};

class GiveTimeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Time_str = null;
    }
    else {
      if (initObj.hasOwnProperty('Time_str')) {
        this.Time_str = initObj.Time_str
      }
      else {
        this.Time_str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GiveTimeResponse
    // Serialize message field [Time_str]
    bufferOffset = _serializer.string(obj.Time_str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GiveTimeResponse
    let len;
    let data = new GiveTimeResponse(null);
    // Deserialize message field [Time_str]
    data.Time_str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Time_str.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_threads/GiveTimeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d739f867d84b6419fed8a84a9f73e83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Time_str
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GiveTimeResponse(null);
    if (msg.Time_str !== undefined) {
      resolved.Time_str = msg.Time_str;
    }
    else {
      resolved.Time_str = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GiveTimeRequest,
  Response: GiveTimeResponse,
  md5sum() { return 'd2ce10c62679a0d54a33dc31ebd4da74'; },
  datatype() { return 'ros_threads/GiveTime'; }
};
