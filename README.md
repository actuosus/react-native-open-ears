# react-native-react-open-ears

## Getting started

`$ npm install react-native-open-ears --save`

### Mostly automatic installation

`$ react-native link react-native-open-ears`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-open-ears` and add `RCTOpenEars.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeOpenEars.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`

- Add `import com.reactlibrary.RCTOpenEars;` to the imports at the top of the file
- Add `new RCTOpenEars()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:
   ```
   include ':react-native-open-ears'
   project(':react-native-open-ears').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-open-ears/android')
   ```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
   ```
     compile project(':react-native-open-ears')
   ```

#### Windows

[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RCTOpenEars.sln` in `node_modules/react-native-open-ears/windows/RCTOpenEars.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app

- Add `using React.Native.Pay.Cards.RCTOpenEars;` to the usings at the top of the file
- Add `new RCTOpenEars()` to the `List<IReactPackage>` returned by the `Packages` method

## Usage

```javascript
import RCTOpenEars from "react-native-open-ears";

// TODO: What to do with the module?
RCTOpenEars;
```

### API

`startListening`

`stopListening`

`suspendRecognition`

`resumeRecognition`
