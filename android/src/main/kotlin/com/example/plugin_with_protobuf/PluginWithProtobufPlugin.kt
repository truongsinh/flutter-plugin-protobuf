package pro.truongsinh.flutter.example.plugin_with_protobuf

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

fun getMyPerson(): PersonOuterClass.Person {
  return PersonOuterClass.Person.newBuilder()
          .setName("TruongSinh")
          .addAllSupervisorOf(listOf(
                  PersonOuterClass.Person.newBuilder()
                          .setName("Jane Dane")
                          .addAllAddresses(listOf(
                                  PersonOuterClass.UsaAddress.newBuilder()
                                          .setStreetNameAndNumber("1 Infinity Loop")
                                          .setCity("Cupertino")
                                          .setState(PersonOuterClass.UsaState.CA)
                                          .setPostCode(95014)
                                          .build(),
                                  PersonOuterClass.UsaAddress.newBuilder()
                                          .setStreetNameAndNumber("1 Microsoft Way")
                                          .setCity("Redmond")
                                          .setState(PersonOuterClass.UsaState.WA)
                                          .setPostCode(98052)
                                          .build()
                          ))
                          .build(),
                  PersonOuterClass.Person.newBuilder()
                          .setName("Joe Doe")
                          .addAllAddresses(listOf(
                                  PersonOuterClass.UsaAddress.newBuilder()
                                          .setStreetNameAndNumber("1 Infinity Loop")
                                          .setCity("Cupertino")
                                          .setState(PersonOuterClass.UsaState.CA)
                                          .setPostCode(95014)
                                          .build(),
                                  PersonOuterClass.UsaAddress.newBuilder()
                                          .setStreetNameAndNumber("1 Microsoft Way")
                                          .setCity("Redmond")
                                          .setState(PersonOuterClass.UsaState.WA)
                                          .setPostCode(98052)
                                          .build()
                                  ))
                          .build()
          ))
          .build()
}

class PluginWithProtobufPlugin: MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "plugin_with_protobuf")
      channel.setMethodCallHandler(PluginWithProtobufPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
        try {
            result.success(getMyPerson().toByteArray())
        } catch (e: Exception) {
            result.error("Cannot serialize data", null, null)
        }
    } else {
      result.notImplemented()
    }
  }
}
