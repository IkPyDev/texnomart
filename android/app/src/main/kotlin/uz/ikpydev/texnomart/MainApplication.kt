package uz.ikpydev.texnomart

import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
  override fun onCreate() {
    super.onCreate()
//    MapKitFactory.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
    MapKitFactory.setApiKey("985292b0-d62d-4ccf-9e92-818841e8b553") // Your generated API key
  }
}