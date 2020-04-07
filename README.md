# React-Native-IOS-Bridge

#### Steps for building react native bundle for release

```

react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios/main.jsbundle --assets-dest ios

```

#### Steps for loading from a main.jsbundle instead of server (Swift)

```

  let jsCodeLocation: URL! = 
    RCTBundleURLProvider.sharedSettings().jsBundleURL(forFallbackResource: "main", fallbackExtension: "jsbundle")

```

