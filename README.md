# FacebookTestSwift
Using Facebook API to login and logout in Swift

#### Instalation

Run `pod install` after you clone the repo, then follow pods instructions like opening .xcworkspace from now on.

#### Facebook Configuration project
 
Open [Facebook Start guide](https://developers.facebook.com/docs/ios/getting-started/), This is the main guide to use the Facebook API.

As the guide says, open [Facebook Project platform](https://developers.facebook.com/apps)

Create your project and a secret key, as the instructions say.

Follow the guide and configure your plist file, with the xml the Facebook gives you, according to your app id.

Once finish.


#### Code in your project

  Add the following code on your viewDidLoad function on the ViewController class. This will make a button appear when you run your project.
   ```
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
        
    }
   
   ```
   
   Add the following code to AppDelegate file after adding the `import FacebookCore` at the top of the file
   ```
       func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let sourceApplication: String? = options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String
        return SDKApplicationDelegate.shared.application(app, open: url, sourceApplication: sourceApplication, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
    }
    ```
    Modify your application didFinishLaunchingWithOptions function adding this line.
    
    ```
    SDKApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
    ```

Run the project and you'll have the login working.
