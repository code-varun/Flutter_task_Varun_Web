## 
Metaio for social like insta by codehox.inc 


<lib 
    {
        utils {
            colors.dart for color and theme data of the all the version ios web andriod 
        }
    }

>
Resposive for web and mobile view 
{
    main.dart : home => resposnivelayout.dart with layoutbuilder and a if condition 
    builder of resposivelayout : 

    return LayoutBuilder(
      builder: (context,constraint){
        if(constraint.maxWidth > webScreenSize){
          return webScreenLayout;
          // web screen
        }
        return mobileScreenLayout;
      }
    );
now add these dep {
    cloud_firestore: ^3.1.6
    cupertino_icons: ^1.0.2
    firebase_auth: ^3.3.5
    firebase_core: ^1.11.0
    firebase_storage: ^10.2.5
}
}
 firebase for ios and andriod ! 
 <for web we use option tag in main! >

firebase : 
main asyn to ensure flutter widgets as well as firebse ensure running ! 


## is kweb is useed to tooggle between web and andior or ios ! 


