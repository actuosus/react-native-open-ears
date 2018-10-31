/*
React Native Speech Recognition Plugin
https://github.com/actuosus/react-native-open-ears

Created by FRANCIS KNARFY ELOPRE
https://github.com/kn4rfy

MIT License
*/

'use strict';

import {
  Alert,
  DeviceEventEmitter,
  NativeEventEmitter,
  NativeModules
} from 'react-native';

const RNOpenEars = NativeModules.OpenEars;
const RNOpenEarsEmitter = new NativeEventEmitter(NativeModules.OpenEars);

function checkIfInitialized() {
  return RNOpenEars !== null;
}

var OpenEars = {
  startListening: function(params) {
    RNOpenEarsEmitter.addListener('micPermissionDenied', reminder => {
      Alert.alert(
        'Permissions',
        'App needs Permission to use Microphone to enable Speech Recognition.',
        [{ text: 'Settings', onPress: () => RNOpenEars.gotoSettings() }]
      );
    });
    RNOpenEars.startListening(params);
  },
  stopListening: function() {
    RNOpenEarsEmitter.removeListener('micPermissionDenied', reminder => {});
    RNOpenEars.stopListening();
  },
  suspendRecognition: function() {
    RNOpenEars.suspendRecognition();
  },
  resumeRecognition: function() {
    RNOpenEars.resumeRecognition();
  }
};

module.exports = OpenEars;
