
unit clisitef;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.Bluetooth,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JUsbAccessory = interface;//android.hardware.usb.UsbAccessory
  JUsbConfiguration = interface;//android.hardware.usb.UsbConfiguration
  JUsbDevice = interface;//android.hardware.usb.UsbDevice
  JUsbDeviceConnection = interface;//android.hardware.usb.UsbDeviceConnection
  JUsbEndpoint = interface;//android.hardware.usb.UsbEndpoint
  JUsbInterface = interface;//android.hardware.usb.UsbInterface
  JUsbManager = interface;//android.hardware.usb.UsbManager
  JUsbRequest = interface;//android.hardware.usb.UsbRequest
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  JJCliSiTefI = interface;//br.com.softwareexpress.sitef.JCliSiTefI
  JCliSiTef = interface;//br.com.softwareexpress.sitef.android.CliSiTef
  JCliSiTefI = interface;//br.com.softwareexpress.sitef.android.CliSiTefI
  JPinPadCtrlLogger = interface;//br.com.softwareexpress.sitef.android.PinPadCtrlLogger
  JCliSiTefI_1 = interface;//br.com.softwareexpress.sitef.android.CliSiTefI$1
  JCliSiTefI_2 = interface;//br.com.softwareexpress.sitef.android.CliSiTefI$2
  JCliSiTefI_INIFile = interface;//br.com.softwareexpress.sitef.android.CliSiTefI$INIFile
  JFuncoesInternas = interface;//br.com.softwareexpress.sitef.android.FuncoesInternas
  JFuncoesInternas_1 = interface;//br.com.softwareexpress.sitef.android.FuncoesInternas$1
  J1_1 = interface;//br.com.softwareexpress.sitef.android.FuncoesInternas$1$1
  J1_2 = interface;//br.com.softwareexpress.sitef.android.FuncoesInternas$1$2
  JGerComunicacao = interface;//br.com.softwareexpress.sitef.android.GerComunicacao
  JEventListener = interface;//java.util.EventListener
  JICliSiTefListener = interface;//br.com.softwareexpress.sitef.android.ICliSiTefListener
  JIComunicacaoExterna = interface;//br.com.softwareexpress.sitef.android.IComunicacaoExterna
  JIPinPadDriver = interface;//br.com.softwareexpress.sitef.android.IPinPadDriver
  JIBarcode = interface;//br.com.softwareexpress.sitef.android.modules.IBarcode
  JModuleBarcode = interface;//br.com.softwareexpress.sitef.android.ModuleBarcode
  JIPinPad = interface;//br.com.softwareexpress.sitef.android.modules.IPinPad
  JModulePinPad = interface;//br.com.softwareexpress.sitef.android.ModulePinPad
  JPPDisplayLogger = interface;//br.com.softwareexpress.sitef.android.PPDisplayLogger
  JParametros = interface;//br.com.softwareexpress.sitef.android.Parametros
  JPinPadCtrl = interface;//br.com.softwareexpress.sitef.android.PinPadCtrl
  JPinPadDriverApos = interface;//br.com.softwareexpress.sitef.android.PinPadDriverApos
  JPinPadDriverBT = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT
  JPinPadDriverBT_BluetoothSocketWrapper = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$BluetoothSocketWrapper
  JPinPadDriverBT_Driver = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$Driver
  JDriver_1 = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$Driver$1
  JPinPadDriverBT_NativeBluetoothSocket = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$NativeBluetoothSocket
  JPinPadDriverBT_FallbackBluetoothSocket = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$FallbackBluetoothSocket
  JPinPadDriverBT_FallbackException = interface;//br.com.softwareexpress.sitef.android.PinPadDriverBT$FallbackException
  JPinPadDriverUSB = interface;//br.com.softwareexpress.sitef.android.PinPadDriverUSB
  JPinPadDriverUSB_Driver = interface;//br.com.softwareexpress.sitef.android.PinPadDriverUSB$Driver
  JPinPadDriverUSB_Driver_1 = interface;//br.com.softwareexpress.sitef.android.PinPadDriverUSB$Driver$1
  JDriver_2 = interface;//br.com.softwareexpress.sitef.android.PinPadDriverUSB$Driver$2

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;
    {class} function clone: JAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getDuration: Int64; cdecl;
    {class} function isPaused: Boolean; cdecl;//Deprecated
    {class} function isRunning: Boolean; cdecl;//Deprecated
    {class} function isStarted: Boolean; cdecl;//Deprecated
    {class} procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} function setDuration(duration: Int64): JAnimator; cdecl;//Deprecated
    {class} procedure setupEndValues; cdecl;//Deprecated
    {class} procedure setupStartValues; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure addListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    procedure cancel; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    function getListeners: JArrayList; cdecl;//Deprecated
    function getStartDelay: Int64; cdecl;//Deprecated
    procedure pause; cdecl;//Deprecated
    procedure removeAllListeners; cdecl;//Deprecated
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;//Deprecated
    procedure setInterpolator(value: JTimeInterpolator); cdecl;//Deprecated
    procedure setStartDelay(startDelay: Int64); cdecl;//Deprecated
    procedure setTarget(target: JObject); cdecl;//Deprecated
    procedure start; cdecl;//Deprecated
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationStart(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationCancel(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationEnd(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationRepeat(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
    {class} procedure onAnimationResume(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationPause(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getType: Jlang_Class; cdecl;
    {class} function getValue: JObject; cdecl;
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
    {class} procedure setValue(value: JObject); cdecl;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function clone: JKeyframe; cdecl;
    function getFraction: Single; cdecl;
    function hasValue: Boolean; cdecl;
    procedure setFraction(fraction: Single); cdecl;
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;
    {class} procedure enableTransitionType(transitionType: Integer); cdecl;//Deprecated
    {class} function getAnimator(transitionType: Integer): JAnimator; cdecl;//Deprecated
    {class} function getDuration(transitionType: Integer): Int64; cdecl;//Deprecated
    {class} function getTransitionListeners: JList; cdecl;
    {class} procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;
    {class} procedure removeChild(parent: JViewGroup; child: JView); cdecl;
    {class} procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    {class} procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;
    {class} procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    {class} procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    {class} procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;//Deprecated
    procedure disableTransitionType(transitionType: Integer); cdecl;//Deprecated
    function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;
    function getStagger(transitionType: Integer): Int64; cdecl;
    function getStartDelay(transitionType: Integer): Int64; cdecl;
    function isChangingLayout: Boolean; cdecl;
    function isRunning: Boolean; cdecl;
    function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;
    procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    procedure setDuration(duration: Int64); cdecl; overload;
    procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
    procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} procedure setConverter(converter: JTypeConverter); cdecl;
    {class} procedure setProperty(property_: JProperty); cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    function clone: JPropertyValuesHolder; cdecl;//Deprecated
    function getPropertyName: JString; cdecl;//Deprecated
    procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    procedure setPropertyName(propertyName: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;
    {class} function clone: JStateListAnimator; cdecl;//Deprecated
    {class} procedure jumpToCurrentState; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;//Deprecated
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
    function getInterpolation(input: Single): Single; cdecl;
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;
    {class} function convert(value: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
    function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;
    {class} function clone: JValueAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getAnimatedFraction: Single; cdecl;
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function getFrameDelay: Int64; cdecl;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    {class} function getStartDelay: Int64; cdecl;//Deprecated
    {class} function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;//Deprecated
    {class} function isRunning: Boolean; cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} procedure reverse; cdecl;//Deprecated
    {class} procedure setCurrentFraction(fraction: Single); cdecl;//Deprecated
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} procedure setRepeatMode(value: Integer); cdecl;
    {class} procedure setStartDelay(startDelay: Int64); cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure cancel; cdecl;
    function getAnimatedValue: JObject; cdecl; overload;//Deprecated
    function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;//Deprecated
    function getCurrentPlayTime: Int64; cdecl;//Deprecated
    function getRepeatCount: Integer; cdecl;//Deprecated
    function getRepeatMode: Integer; cdecl;//Deprecated
    function isStarted: Boolean; cdecl;//Deprecated
    procedure pause; cdecl;//Deprecated
    procedure removeAllUpdateListeners; cdecl;//Deprecated
    procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    procedure setCurrentPlayTime(playTime: Int64); cdecl;
    function setDuration(duration: Int64): JValueAnimator; cdecl;
    procedure setEvaluator(value: JTypeEvaluator); cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setRepeatCount(value: Integer); cdecl;
    procedure start; cdecl;
    function toString: JString; cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
    procedure onAnimationUpdate(animation: JValueAnimator); cdecl;//Deprecated
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JUsbAccessoryClass = interface(JObjectClass)
    ['{1D9B9887-3355-48AD-9E48-30EA6B124537}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getManufacturer: JString; cdecl;//Deprecated
    {class} function getModel: JString; cdecl;//Deprecated
    {class} function getSerial: JString; cdecl;//Deprecated
    {class} function toString: JString; cdecl;
    {class} procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbAccessory')]
  JUsbAccessory = interface(JObject)
    ['{083B13FB-2A1A-4659-BECD-9C245475B724}']
    function describeContents: Integer; cdecl;//Deprecated
    function equals(obj: JObject): Boolean; cdecl;//Deprecated
    function getDescription: JString; cdecl;//Deprecated
    function getUri: JString; cdecl;
    function getVersion: JString; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJUsbAccessory = class(TJavaGenericImport<JUsbAccessoryClass, JUsbAccessory>) end;

  JUsbConfigurationClass = interface(JObjectClass)
    ['{98469519-6EAB-4A27-9B06-2C4A07DC51C8}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function describeContents: Integer; cdecl;
    {class} function getMaxPower: Integer; cdecl;
    {class} function getName: JString; cdecl;
    {class} function isRemoteWakeup: Boolean; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbConfiguration')]
  JUsbConfiguration = interface(JObject)
    ['{3CAF57A3-D977-4A31-BD15-1CFDE08316F5}']
    function getId: Integer; cdecl;
    function getInterface(index: Integer): JUsbInterface; cdecl;
    function getInterfaceCount: Integer; cdecl;
    function isSelfPowered: Boolean; cdecl;
    function toString: JString; cdecl;
    procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
  end;
  TJUsbConfiguration = class(TJavaGenericImport<JUsbConfigurationClass, JUsbConfiguration>) end;

  JUsbDeviceClass = interface(JObjectClass)
    ['{23359F82-699F-48E1-B1DD-43DD18455D2D}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function equals(o: JObject): Boolean; cdecl;
    {class} function getConfiguration(index: Integer): JUsbConfiguration; cdecl;
    {class} function getConfigurationCount: Integer; cdecl;
    {class} function getDeviceId(name: JString): Integer; cdecl; overload;
    {class} function getDeviceName: JString; cdecl; overload;
    {class} function getDeviceName(id: Integer): JString; cdecl; overload;
    {class} function getDeviceProtocol: Integer; cdecl;
    {class} function getInterfaceCount: Integer; cdecl;//Deprecated
    {class} function getManufacturerName: JString; cdecl;//Deprecated
    {class} function getProductId: Integer; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbDevice')]
  JUsbDevice = interface(JObject)
    ['{EAD5113C-AC54-4131-BED2-46F449FFD4B7}']
    function describeContents: Integer; cdecl;
    function getDeviceClass: Integer; cdecl;
    function getDeviceId: Integer; cdecl; overload;
    function getDeviceSubclass: Integer; cdecl;//Deprecated
    function getInterface(index: Integer): JUsbInterface; cdecl;//Deprecated
    function getProductName: JString; cdecl;//Deprecated
    function getSerialNumber: JString; cdecl;//Deprecated
    function getVendorId: Integer; cdecl;//Deprecated
    procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;//Deprecated
  end;
  TJUsbDevice = class(TJavaGenericImport<JUsbDeviceClass, JUsbDevice>) end;

  JUsbDeviceConnectionClass = interface(JObjectClass)
    ['{83888555-657F-42A1-9BC1-8B23E2F69899}']
    {class} function bulkTransfer(endpoint: JUsbEndpoint; buffer: TJavaArray<Byte>; length: Integer; timeout: Integer): Integer; cdecl; overload;//Deprecated
    {class} function bulkTransfer(endpoint: JUsbEndpoint; buffer: TJavaArray<Byte>; offset: Integer; length: Integer; timeout: Integer): Integer; cdecl; overload;//Deprecated
    {class} function controlTransfer(requestType: Integer; request: Integer; value: Integer; index: Integer; buffer: TJavaArray<Byte>; offset: Integer; length: Integer; timeout: Integer): Integer; cdecl; overload;
    {class} function getFileDescriptor: Integer; cdecl;
    {class} function getRawDescriptors: TJavaArray<Byte>; cdecl;
    {class} function setConfiguration(configuration: JUsbConfiguration): Boolean; cdecl;
    {class} function setInterface(intf: JUsbInterface): Boolean; cdecl;
  end;

  [JavaSignature('android/hardware/usb/UsbDeviceConnection')]
  JUsbDeviceConnection = interface(JObject)
    ['{6CC94621-8592-4C7F-B28A-2E644692B85A}']
    function claimInterface(intf: JUsbInterface; force: Boolean): Boolean; cdecl;
    procedure close; cdecl;
    function controlTransfer(requestType: Integer; request: Integer; value: Integer; index: Integer; buffer: TJavaArray<Byte>; length: Integer; timeout: Integer): Integer; cdecl; overload;
    function getSerial: JString; cdecl;
    function releaseInterface(intf: JUsbInterface): Boolean; cdecl;
    function requestWait: JUsbRequest; cdecl;
  end;
  TJUsbDeviceConnection = class(TJavaGenericImport<JUsbDeviceConnectionClass, JUsbDeviceConnection>) end;

  JUsbEndpointClass = interface(JObjectClass)
    ['{53DC559E-4126-4589-9CDF-681B6A461496}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getDirection: Integer; cdecl;
    {class} function getEndpointNumber: Integer; cdecl;
    {class} function getInterval: Integer; cdecl;
    {class} procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbEndpoint')]
  JUsbEndpoint = interface(JObject)
    ['{A9A1F612-B537-4C37-8523-1B7AEADB1D43}']
    function describeContents: Integer; cdecl;
    function getAddress: Integer; cdecl;
    function getAttributes: Integer; cdecl;
    function getMaxPacketSize: Integer; cdecl;
    function getType: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJUsbEndpoint = class(TJavaGenericImport<JUsbEndpointClass, JUsbEndpoint>) end;

  JUsbInterfaceClass = interface(JObjectClass)
    ['{59313EE2-7603-4BBC-ACBC-4BC863D31B6C}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getAlternateSetting: Integer; cdecl;
    {class} function getEndpoint(index: Integer): JUsbEndpoint; cdecl;
    {class} function getEndpointCount: Integer; cdecl;
    {class} function getInterfaceSubclass: Integer; cdecl;
    {class} function getName: JString; cdecl;
    {class} function toString: JString; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('android/hardware/usb/UsbInterface')]
  JUsbInterface = interface(JObject)
    ['{026556E6-07DF-422D-AF28-BC06795B91E7}']
    function describeContents: Integer; cdecl;
    function getId: Integer; cdecl;
    function getInterfaceClass: Integer; cdecl;
    function getInterfaceProtocol: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; flags: Integer); cdecl;//Deprecated
  end;
  TJUsbInterface = class(TJavaGenericImport<JUsbInterfaceClass, JUsbInterface>) end;

  JUsbManagerClass = interface(JObjectClass)
    ['{1048A6E9-E1B5-4DA5-A168-ED91E8DE5284}']
    {class} function _GetACTION_USB_ACCESSORY_ATTACHED: JString; cdecl;
    {class} function _GetACTION_USB_ACCESSORY_DETACHED: JString; cdecl;
    {class} function _GetACTION_USB_DEVICE_ATTACHED: JString; cdecl;
    {class} function _GetACTION_USB_DEVICE_DETACHED: JString; cdecl;
    {class} function _GetEXTRA_ACCESSORY: JString; cdecl;
    {class} function _GetEXTRA_DEVICE: JString; cdecl;
    {class} function _GetEXTRA_PERMISSION_GRANTED: JString; cdecl;
    {class} function hasPermission(device: JUsbDevice): Boolean; cdecl; overload;
    {class} function hasPermission(accessory: JUsbAccessory): Boolean; cdecl; overload;
    {class} function openAccessory(accessory: JUsbAccessory): JParcelFileDescriptor; cdecl;
    {class} property ACTION_USB_ACCESSORY_ATTACHED: JString read _GetACTION_USB_ACCESSORY_ATTACHED;
    {class} property ACTION_USB_ACCESSORY_DETACHED: JString read _GetACTION_USB_ACCESSORY_DETACHED;
    {class} property ACTION_USB_DEVICE_ATTACHED: JString read _GetACTION_USB_DEVICE_ATTACHED;
    {class} property ACTION_USB_DEVICE_DETACHED: JString read _GetACTION_USB_DEVICE_DETACHED;
    {class} property EXTRA_ACCESSORY: JString read _GetEXTRA_ACCESSORY;
    {class} property EXTRA_DEVICE: JString read _GetEXTRA_DEVICE;
    {class} property EXTRA_PERMISSION_GRANTED: JString read _GetEXTRA_PERMISSION_GRANTED;
  end;

  [JavaSignature('android/hardware/usb/UsbManager')]
  JUsbManager = interface(JObject)
    ['{6F603A25-E816-4012-9B23-054B428A4A75}']
    function getAccessoryList: TJavaObjectArray<JUsbAccessory>; cdecl;
    function getDeviceList: JHashMap; cdecl;
    function openDevice(device: JUsbDevice): JUsbDeviceConnection; cdecl;
    procedure requestPermission(device: JUsbDevice; pi: JPendingIntent); cdecl; overload;
    procedure requestPermission(accessory: JUsbAccessory; pi: JPendingIntent); cdecl; overload;
  end;
  TJUsbManager = class(TJavaGenericImport<JUsbManagerClass, JUsbManager>) end;

  JUsbRequestClass = interface(JObjectClass)
    ['{8A8E6489-7B33-4CCC-B25E-2847FD29DA80}']
    {class} function init: JUsbRequest; cdecl;
    {class} function getEndpoint: JUsbEndpoint; cdecl;//Deprecated
    {class} function initialize(connection: JUsbDeviceConnection; endpoint: JUsbEndpoint): Boolean; cdecl;//Deprecated
    {class} function queue(buffer: JByteBuffer; length: Integer): Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('android/hardware/usb/UsbRequest')]
  JUsbRequest = interface(JObject)
    ['{C192EBAE-64F9-46FD-9E81-CB44E9D42FB1}']
    function cancel: Boolean; cdecl;//Deprecated
    procedure close; cdecl;//Deprecated
    function getClientData: JObject; cdecl;//Deprecated
    procedure setClientData(data: JObject); cdecl;
  end;
  TJUsbRequest = class(TJavaGenericImport<JUsbRequestClass, JUsbRequest>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;
    {class} function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} procedure enter; cdecl;//Deprecated
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;//Deprecated
    {class} procedure setEnterAction(action: JRunnable); cdecl;//Deprecated
    {class} procedure setExitAction(action: JRunnable); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    procedure exit; cdecl;//Deprecated
    function getSceneRoot: JViewGroup; cdecl;//Deprecated
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;
    {class} function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;//Deprecated
    {class} function addTarget(target: JView): JTransition; cdecl; overload;//Deprecated
    {class} function canRemoveViews: Boolean; cdecl;//Deprecated
    {class} function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;//Deprecated
    {class} function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeTarget(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function getName: JString; cdecl;
    {class} function getPathMotion: JPathMotion; cdecl;
    {class} function getTargetNames: JList; cdecl;
    {class} function getTargetTypes: JList; cdecl;
    {class} function getTargets: JList; cdecl;
    {class} function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    {class} function removeTarget(targetId: Integer): JTransition; cdecl; overload;
    {class} function removeTarget(targetName: JString): JTransition; cdecl; overload;
    {class} procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;
    {class} function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;
    {class} function toString: JString; cdecl;//Deprecated
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    function addTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    function addTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    procedure captureEndValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    procedure captureStartValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    function clone: JTransition; cdecl;//Deprecated
    function excludeChildren(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function getEpicenter: JRect; cdecl;
    function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getPropagation: JTransitionPropagation; cdecl;
    function getStartDelay: Int64; cdecl;
    function getTargetIds: JList; cdecl;
    function getTransitionProperties: TJavaObjectArray<JString>; cdecl;
    function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;
    function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;
    function removeTarget(target: JView): JTransition; cdecl; overload;
    function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;
    function setDuration(duration: Int64): JTransition; cdecl;
    procedure setPathMotion(pathMotion: JPathMotion); cdecl;//Deprecated
    procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;//Deprecated
    function setStartDelay(startDelay: Int64): JTransition; cdecl;//Deprecated
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
    function onGetEpicenter(transition: JTransition): JRect; cdecl;//Deprecated
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
    {class} procedure onTransitionCancel(transition: JTransition); cdecl;//Deprecated
    {class} procedure onTransitionEnd(transition: JTransition); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionPause(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionResume(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionStart(transition: JTransition); cdecl;//Deprecated
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;
    {class} procedure go(scene: JScene); cdecl; overload;
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure transitionTo(scene: JScene); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;//Deprecated
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;
    {class} function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
    procedure captureValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    function getPropagationProperties: TJavaObjectArray<JString>; cdecl;//Deprecated
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function _Getview: JView; cdecl;
    {class} procedure _Setview(Value: JView); cdecl;
    {class} function init: JTransitionValues; cdecl;
    {class} function equals(other: JObject): Boolean; cdecl;//Deprecated
    {class} property view: JView read _Getview write _Setview;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function _Getvalues: JMap; cdecl;
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
    property values: JMap read _Getvalues;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  JJCliSiTefIClass = interface(JObjectClass)
    ['{397A4CE0-D700-49F0-A5E0-20374E8D1141}']
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: JString); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: Integer); cdecl; overload;//Deprecated
    {class} function LeTrilhaChipInterativo(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function abrePinPad: Integer; //Deprecated
    {class} function carregaArquivosTraducao: Integer; cdecl; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativo(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx: Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function consultaDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function consultaDescontoSocioTorcedor(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function consultaParametrosSiTef: Integer; cdecl; overload;//Deprecated
    {class} function consultaParametrosSiTef(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function consultaQtdeDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function consultaQtdeDescontoSocioTorcedor(P1: JString; P2: Integer; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function continuaFuncaoSiTefInterativo: Integer; cdecl;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function descarregaMensagens: Integer; cdecl;//Deprecated
    {class} function desfazTransacaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function desfazTransacaoSiTefInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function efetuaPagamentoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function efetuaPagamentoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSitServicos: Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSitServicos(P1: SmallInt; P2: TJavaArray<Byte>; P3: SmallInt; P4: SmallInt; P5: SmallInt; P6: JString; P7: JString; P8: JString; P9: JString): Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPermanentePinPad: Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPermanentePinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPinPad: Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function fechaPinPad: Integer; cdecl;//Deprecated
    {class} function finalizaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function finalizaFuncaoSiTefInterativo(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTef: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTef(P1: SmallInt; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTefBonus: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativo(P1: SmallInt; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoBonus: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoBonus(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function flashVendasSitef: Integer; cdecl; overload;//Deprecated
    {class} function flashVendasSitef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function forneceParametroEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function funcoesGerenciaisSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function funcoesGerenciaisSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCampo: JString; cdecl;//Deprecated
    {class} function getChaveSeguranca: JString; cdecl;//Deprecated
    {class} function getCodigoResposta: SmallInt; cdecl;//Deprecated
    {class} function getCodigoServico: JString; cdecl;//Deprecated
    {class} function getDadosContas: JString; cdecl;//Deprecated
    {class} function getDadosDesfazimento: JString; cdecl;//Deprecated
    {class} function getDadosRx: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getDadosSaida: JString; cdecl;//Deprecated
    {class} function getDadosServico: JString; cdecl;//Deprecated
    {class} function getProximoComando: Integer; cdecl;//Deprecated
    {class} function getSenha: JString; cdecl;//Deprecated
    {class} function getTamanhoMaximo: SmallInt; cdecl;//Deprecated
    {class} function getTamanhoMinimo: SmallInt; cdecl;//Deprecated
    {class} function getTipoCampo: Integer; cdecl;//Deprecated
    {class} function getTipoCodigoEmBarras: SmallInt; cdecl;//Deprecated
    {class} function getTipoTrilha1: JString; cdecl;//Deprecated
    {class} function getTipoTrilha2: JString; cdecl;//Deprecated
    {class} function getTrilha1: JString; cdecl;//Deprecated
    {class} function getTrilha2: JString; cdecl;//Deprecated
    {class} function getTrilha3: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTef: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTefI: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function gravaDadosCriptografados: Integer; cdecl; overload;//Deprecated
    {class} function gravaDadosCriptografados(P1: JString; P2: Integer; P3: TJavaArray<Byte>; P4: Integer; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoCancelamentoVidalink: Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoCancelamentoVidalink(P1: SmallInt; P2: JString; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoVendaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoVendaVidalink(P1: SmallInt; P2: JString; P3: SmallInt; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function informaTotalizadorVenda: Integer; cdecl; overload;//Deprecated
    {class} function informaTotalizadorVenda(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoIdentificadoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoIdentificadoSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoPagamentoContasSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoPagamentoContasSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaConfiguracaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaConfiguracaoSiTefInterativo(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoAASiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoAASiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1: SmallInt; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString; P9: JString; P10: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaPBM: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaPBM(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaVidalink(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoVendaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoVendaVidalink(P1: JString; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function init: JJCliSiTefI; cdecl;//Deprecated
    {class} function interrompeLeCartaoDireto: Integer; cdecl;//Deprecated
    {class} function leCampoCriptografadoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leCampoCriptografadoPinPad(P1: JString; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCampoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leCampoPinPad(P1: JString; P2: SmallInt; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDireto: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDireto(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoEx(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoSeguro: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoSeguro(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoInterativo: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoSeguro: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoSeguro(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leDigitoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leDigitoPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leDoisDigitosPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leDoisDigitosPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDireto: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDireto(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDiretoEx(P1: JString; P2: JString; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaInterativo: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSimNaoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leSimNaoPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leTeclaPinPad: Integer; cdecl;//Deprecated
    {class} function leTrilha3: Integer; cdecl; overload;//Deprecated
    {class} function leTrilha3(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leTrilhaChipInterativo: Integer; cdecl; overload;//Deprecated
    {class} function obtemChaveSeguranca: Integer; cdecl; overload;//Deprecated
    {class} function obtemChaveSeguranca(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPad(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDireto: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDireto(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDiretoEx(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadEx: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadEx(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadosCriptografados: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadosCriptografados(P1: JString; P2: Integer; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemInformacoesPinPad: Integer; cdecl;//Deprecated
    {class} function obtemParametrosSiTef: Integer; cdecl; overload;//Deprecated
    {class} function obtemParametrosSiTef(P1: Integer; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes: Integer; cdecl; overload;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemRetornoEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function obtemSenha: Integer; cdecl; overload;//Deprecated
    {class} function obtemSenha(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemStatusLeitoraSPTrans: Integer; cdecl;//Deprecated
    {class} function obtemVersao: Integer; cdecl;//Deprecated
    {class} function pinPadBTExecuta(P1: Integer; P2: JString): Integer; cdecl;//Deprecated
    {class} function pinPadInterativo(P1: Integer; P2: JString): Integer; cdecl;//Deprecated
    {class} function registraBonusOffLineSiTef: Integer; cdecl; overload;//Deprecated
    {class} function registraBonusOffLineSiTef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedor(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedorSequencial: Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedorSequencial(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: Integer): Integer; cdecl; overload;//Deprecated
    {class} function registraTefPromocaoSiTef: Integer; cdecl; overload;//Deprecated
    {class} function registraTefPromocaoSiTef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} procedure setArqTraducao(P1: JString); cdecl;//Deprecated
    {class} procedure setArqTraducaoCielo(P1: JString); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveAcesso(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveSecreta(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveSeguranca(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveTrnCancelamento(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoAutorizacao(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoEmBarras(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoLoja(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoProduto(P1: JString); cdecl;//Deprecated
    {class} procedure setConfiguraResultado(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setConfiguraResultado(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setConfirma(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setConfirma(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setContinuaNavegacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setDadosCaptura(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosContas(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosDesfazimento(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosEntrada(P1: TJavaArray<Byte>); cdecl;//Deprecated
    {class} procedure setDadosTransacao(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosTx(P1: TJavaArray<Byte>); cdecl;//Deprecated
    {class} procedure setDataFiscal(P1: JString); cdecl;//Deprecated
    {class} procedure setDataFiscalOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setDelimitador(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setDelimitador(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setEnderecoSiTef(P1: JString); cdecl;//Deprecated
    {class} procedure setFuncaoSiTef(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setFuncaoSiTef(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setHorario(P1: JString); cdecl;//Deprecated
    {class} procedure setIdentificacaoPdvOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setIndiceParametro(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setIndiceParametro(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setIndiceProduto(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setIndiceProduto(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setModalidade(P1: Integer); cdecl;//Deprecated
    {class} procedure setMsgDisplay(P1: JString); cdecl;//Deprecated
    {class} procedure setNSUSiTef(P1: JString); cdecl;//Deprecated
    {class} procedure setNomeArquivo(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroCuponFiscal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroCuponFiscalOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroDocumentoOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroProdutos(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setNumeroProdutos(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setNumeroTerminal(P1: JString); cdecl;//Deprecated
    {class} procedure setOffsetCartao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setOffsetCartao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setOperador(P1: JString); cdecl;//Deprecated
    {class} procedure setParametro(P1: JString); cdecl;//Deprecated
    {class} procedure setParametroCartao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setParametroCartao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setParametrosAdicionais(P1: JString); cdecl;//Deprecated
    {class} procedure setProdutos(P1: JString); cdecl;//Deprecated
    {class} procedure setQuantidade(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setQuantidade(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setQuantidadeProduto(P1: Integer); cdecl;//Deprecated
    {class} procedure setRedeDestino(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setRedeDestino(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setRestricoes(P1: JString); cdecl;//Deprecated
    {class} procedure setSenhaPinPad(P1: JString); cdecl;//Deprecated
    {class} procedure setSequencial(P1: Integer); cdecl;//Deprecated
    {class} procedure setSupervisor(P1: JString); cdecl;//Deprecated
    {class} procedure setTamDadosEntrada(P1: Integer); cdecl;//Deprecated
    {class} procedure setTamDadosTx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamDadosTx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosRx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosRx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosServico(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosServico(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMaximo(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMaximo(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMinimo(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMinimo(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTempoEsperaRx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTempoEsperaRx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTimeout(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTimeout(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoCancelamento(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoCancelamento(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoCodigoEmBarras(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoCodigoEmBarras(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoConsulta(P1: Integer); cdecl;//Deprecated
    {class} procedure setTipoOperacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setTipoTransacao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoTransacao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoTrilha1(P1: JString); cdecl;//Deprecated
    {class} procedure setTipoTrilha2(P1: JString); cdecl;//Deprecated
    {class} procedure setTotalGeral(P1: JString); cdecl;//Deprecated
    {class} procedure setTotalizador(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha1(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha2(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha3(P1: JString); cdecl;//Deprecated
    {class} procedure setValor(P1: JString); cdecl;//Deprecated
    {class} procedure setValorTotalBonus(P1: JString); cdecl;//Deprecated
    {class} procedure setValorTotalCupon(P1: JString); cdecl;//Deprecated
    {class} procedure setValorUnitario(P1: JString); cdecl;//Deprecated
    {class} procedure seteSenha(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure seteSenha(P1: SmallInt); cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras: Integer; cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function verificaPresencaPinPad: Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/JCliSiTefI')]
  JJCliSiTefI = interface(JObject)
    ['{397A4CE0-D700-49F0-A5E0-20374E8D1141}']
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: JString); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: Integer); cdecl; overload;//Deprecated
    {class} function LeTrilhaChipInterativo(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function abrePinPad: Integer;//Deprecated
    {class} function carregaArquivosTraducao: Integer; cdecl; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativo(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx: Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function consultaDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function consultaDescontoSocioTorcedor(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function consultaParametrosSiTef: Integer; cdecl; overload;//Deprecated
    {class} function consultaParametrosSiTef(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function consultaQtdeDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function consultaQtdeDescontoSocioTorcedor(P1: JString; P2: Integer; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function continuaFuncaoSiTefInterativo: Integer; cdecl;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function descarregaMensagens: Integer; cdecl;//Deprecated
    {class} function desfazTransacaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function desfazTransacaoSiTefInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function efetuaPagamentoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function efetuaPagamentoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSitServicos: Integer; cdecl; overload;//Deprecated
    {class} function enviaRecebeSitServicos(P1: SmallInt; P2: TJavaArray<Byte>; P3: SmallInt; P4: SmallInt; P5: SmallInt; P6: JString; P7: JString; P8: JString; P9: JString): Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPermanentePinPad: Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPermanentePinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPinPad: Integer; cdecl; overload;//Deprecated
    {class} function escreveMensagemPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function fechaPinPad: Integer; cdecl;//Deprecated
    {class} function finalizaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function finalizaFuncaoSiTefInterativo(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTef: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTef(P1: SmallInt; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTefBonus: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativo(P1: SmallInt; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoBonus: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoBonus(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx: Integer; cdecl; overload;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx(P1: SmallInt; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function flashVendasSitef: Integer; cdecl; overload;//Deprecated
    {class} function flashVendasSitef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function forneceParametroEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function funcoesGerenciaisSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function funcoesGerenciaisSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCampo: JString; cdecl;//Deprecated
    {class} function getChaveSeguranca: JString; cdecl;//Deprecated
    {class} function getCodigoResposta: SmallInt; cdecl;//Deprecated
    {class} function getCodigoServico: JString; cdecl;//Deprecated
    {class} function getDadosContas: JString; cdecl;//Deprecated
    {class} function getDadosDesfazimento: JString; cdecl;//Deprecated
    {class} function getDadosRx: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getDadosSaida: JString; cdecl;//Deprecated
    {class} function getDadosServico: JString; cdecl;//Deprecated
    {class} function getProximoComando: Integer; cdecl;//Deprecated
    {class} function getSenha: JString; cdecl;//Deprecated
    {class} function getTamanhoMaximo: SmallInt; cdecl;//Deprecated
    {class} function getTamanhoMinimo: SmallInt; cdecl;//Deprecated
    {class} function getTipoCampo: Integer; cdecl;//Deprecated
    {class} function getTipoCodigoEmBarras: SmallInt; cdecl;//Deprecated
    {class} function getTipoTrilha1: JString; cdecl;//Deprecated
    {class} function getTipoTrilha2: JString; cdecl;//Deprecated
    {class} function getTrilha1: JString; cdecl;//Deprecated
    {class} function getTrilha2: JString; cdecl;//Deprecated
    {class} function getTrilha3: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTef: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTefI: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function gravaDadosCriptografados: Integer; cdecl; overload;//Deprecated
    {class} function gravaDadosCriptografados(P1: JString; P2: Integer; P3: TJavaArray<Byte>; P4: Integer; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoCancelamentoVidalink: Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoCancelamentoVidalink(P1: SmallInt; P2: JString; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoVendaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function informaProdutoVendaVidalink(P1: SmallInt; P2: JString; P3: SmallInt; P4: JString): Integer; cdecl; overload;//Deprecated
    {class} function informaTotalizadorVenda: Integer; cdecl; overload;//Deprecated
    {class} function informaTotalizadorVenda(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoIdentificadoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoIdentificadoSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoPagamentoContasSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaCancelamentoPagamentoContasSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaConfiguracaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaConfiguracaoSiTefInterativo(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoAASiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoAASiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1: SmallInt; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString; P9: JString; P10: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaPBM: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaPBM(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoConsultaVidalink(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoVendaVidalink: Integer; cdecl; overload;//Deprecated
    {class} function iniciaFuncaoSiTefInterativoVendaVidalink(P1: JString; P2: SmallInt; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function init: JJCliSiTefI; cdecl;//Deprecated
    {class} function interrompeLeCartaoDireto: Integer; cdecl;//Deprecated
    {class} function leCampoCriptografadoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leCampoCriptografadoPinPad(P1: JString; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCampoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leCampoPinPad(P1: JString; P2: SmallInt; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDireto: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDireto(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoEx(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoSeguro: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoDiretoSeguro(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoInterativo: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leCartaoSeguro: Integer; cdecl; overload;//Deprecated
    {class} function leCartaoSeguro(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leDigitoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leDigitoPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leDoisDigitosPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leDoisDigitosPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDireto: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDireto(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaDiretoEx(P1: JString; P2: JString; P3: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function leSenhaInterativo: Integer; cdecl; overload;//Deprecated
    {class} function leSenhaInterativo(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leSimNaoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function leSimNaoPinPad(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leTeclaPinPad: Integer; cdecl;//Deprecated
    {class} function leTrilha3: Integer; cdecl; overload;//Deprecated
    {class} function leTrilha3(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function leTrilhaChipInterativo: Integer; cdecl; overload;//Deprecated
    {class} function obtemChaveSeguranca: Integer; cdecl; overload;//Deprecated
    {class} function obtemChaveSeguranca(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPad: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPad(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDireto: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDireto(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDiretoEx: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadDiretoEx(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadEx: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadoPinPadEx(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemDadosCriptografados: Integer; cdecl; overload;//Deprecated
    {class} function obtemDadosCriptografados(P1: JString; P2: Integer; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemInformacoesPinPad: Integer; cdecl;//Deprecated
    {class} function obtemParametrosSiTef: Integer; cdecl; overload;//Deprecated
    {class} function obtemParametrosSiTef(P1: Integer; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes: Integer; cdecl; overload;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemRetornoEnviaRecebeSiTefDireto: Integer; cdecl; overload;//Deprecated
    {class} function obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function obtemSenha: Integer; cdecl; overload;//Deprecated
    {class} function obtemSenha(P1: JString; P2: JString; P3: JString): Integer; cdecl; overload;//Deprecated
    {class} function obtemStatusLeitoraSPTrans: Integer; cdecl;//Deprecated
    {class} function obtemVersao: Integer; cdecl;//Deprecated
    {class} function pinPadBTExecuta(P1: Integer; P2: JString): Integer; cdecl;//Deprecated
    {class} function pinPadInterativo(P1: Integer; P2: JString): Integer; cdecl;//Deprecated
    {class} function registraBonusOffLineSiTef: Integer; cdecl; overload;//Deprecated
    {class} function registraBonusOffLineSiTef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedor: Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedor(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString): Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedorSequencial: Integer; cdecl; overload;//Deprecated
    {class} function registraDescontoSocioTorcedorSequencial(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: Integer): Integer; cdecl; overload;//Deprecated
    {class} function registraTefPromocaoSiTef: Integer; cdecl; overload;//Deprecated
    {class} function registraTefPromocaoSiTef(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl; overload;//Deprecated
    {class} procedure setArqTraducao(P1: JString); cdecl;//Deprecated
    {class} procedure setArqTraducaoCielo(P1: JString); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveAcesso(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveSecreta(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveSeguranca(P1: JString); cdecl;//Deprecated
    {class} procedure setChaveTrnCancelamento(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoAutorizacao(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoEmBarras(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoLoja(P1: JString); cdecl;//Deprecated
    {class} procedure setCodigoProduto(P1: JString); cdecl;//Deprecated
    {class} procedure setConfiguraResultado(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setConfiguraResultado(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setConfirma(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setConfirma(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setContinuaNavegacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setDadosCaptura(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosContas(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosDesfazimento(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosEntrada(P1: TJavaArray<Byte>); cdecl;//Deprecated
    {class} procedure setDadosTransacao(P1: JString); cdecl;//Deprecated
    {class} procedure setDadosTx(P1: TJavaArray<Byte>); cdecl;//Deprecated
    {class} procedure setDataFiscal(P1: JString); cdecl;//Deprecated
    {class} procedure setDataFiscalOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setDelimitador(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setDelimitador(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setEnderecoSiTef(P1: JString); cdecl;//Deprecated
    {class} procedure setFuncaoSiTef(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setFuncaoSiTef(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setHorario(P1: JString); cdecl;//Deprecated
    {class} procedure setIdentificacaoPdvOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setIndiceParametro(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setIndiceParametro(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setIndiceProduto(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setIndiceProduto(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setModalidade(P1: Integer); cdecl;//Deprecated
    {class} procedure setMsgDisplay(P1: JString); cdecl;//Deprecated
    {class} procedure setNSUSiTef(P1: JString); cdecl;//Deprecated
    {class} procedure setNomeArquivo(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroCuponFiscal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroCuponFiscalOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroDocumentoOriginal(P1: JString); cdecl;//Deprecated
    {class} procedure setNumeroProdutos(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setNumeroProdutos(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setNumeroTerminal(P1: JString); cdecl;//Deprecated
    {class} procedure setOffsetCartao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setOffsetCartao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setOperador(P1: JString); cdecl;//Deprecated
    {class} procedure setParametro(P1: JString); cdecl;//Deprecated
    {class} procedure setParametroCartao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setParametroCartao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setParametrosAdicionais(P1: JString); cdecl;//Deprecated
    {class} procedure setProdutos(P1: JString); cdecl;//Deprecated
    {class} procedure setQuantidade(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setQuantidade(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setQuantidadeProduto(P1: Integer); cdecl;//Deprecated
    {class} procedure setRedeDestino(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setRedeDestino(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setRestricoes(P1: JString); cdecl;//Deprecated
    {class} procedure setSenhaPinPad(P1: JString); cdecl;//Deprecated
    {class} procedure setSequencial(P1: Integer); cdecl;//Deprecated
    {class} procedure setSupervisor(P1: JString); cdecl;//Deprecated
    {class} procedure setTamDadosEntrada(P1: Integer); cdecl;//Deprecated
    {class} procedure setTamDadosTx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamDadosTx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosRx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosRx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosServico(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamMaxDadosServico(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMaximo(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMaximo(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMinimo(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTamanhoMinimo(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTempoEsperaRx(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTempoEsperaRx(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTimeout(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTimeout(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoCancelamento(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoCancelamento(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoCodigoEmBarras(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoCodigoEmBarras(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoConsulta(P1: Integer); cdecl;//Deprecated
    {class} procedure setTipoOperacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setTipoTransacao(P1: SmallInt); cdecl; overload;//Deprecated
    {class} procedure setTipoTransacao(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure setTipoTrilha1(P1: JString); cdecl;//Deprecated
    {class} procedure setTipoTrilha2(P1: JString); cdecl;//Deprecated
    {class} procedure setTotalGeral(P1: JString); cdecl;//Deprecated
    {class} procedure setTotalizador(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha1(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha2(P1: JString); cdecl;//Deprecated
    {class} procedure setTrilha3(P1: JString); cdecl;//Deprecated
    {class} procedure setValor(P1: JString); cdecl;//Deprecated
    {class} procedure setValorTotalBonus(P1: JString); cdecl;//Deprecated
    {class} procedure setValorTotalCupon(P1: JString); cdecl;//Deprecated
    {class} procedure setValorUnitario(P1: JString); cdecl;//Deprecated
    {class} procedure seteSenha(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure seteSenha(P1: SmallInt); cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras: Integer; cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras(P1: JString; P2: SmallInt): Integer; cdecl; overload;//Deprecated
    {class} function verificaPresencaPinPad: Integer; cdecl;//Deprecated
  end;
  TJJCliSiTefI = class(TJavaGenericImport<JJCliSiTefIClass, JJCliSiTefI>) end;

  JCliSiTefClass = interface(JObjectClass)
    ['{2A26BB39-2F1D-4C35-94C2-4C3E6AFC5ECC}']
    {class} function _GetCMD_ABORT_REQUEST: Integer; cdecl;
    {class} function _GetCMD_CLEAR_HEADER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MENU_TITLE: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CASHIER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CASHIER_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_CONFIRMATION: Integer; cdecl;
    {class} function _GetCMD_CONFIRM_GO_BACK: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_BARCODE: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_CHEQUE: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_CURRENCY: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_INTERNAL: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_PASSWORD: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_TRACK: Integer; cdecl;
    {class} function _GetCMD_GET_MASKED_FIELD: Integer; cdecl;
    {class} function _GetCMD_GET_MENU_OPTION: Integer; cdecl;
    {class} function _GetCMD_GET_PINPAD_CONFIRMATION: Integer; cdecl;
    {class} function _GetCMD_MESSAGE_QRCODE: Integer; cdecl;
    {class} function _GetCMD_PRESS_ANY_KEY: Integer; cdecl;
    {class} function _GetCMD_REMOVE_QRCODE_FIELD: Integer; cdecl;
    {class} function _GetCMD_RESULT_DATA: Integer; cdecl;
    {class} function _GetCMD_SHOW_HEADER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MENU_TITLE: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CASHIER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CASHIER_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_SHOW_QRCODE_FIELD: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INITIALIZING_FILES: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_FIELD: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_PATH: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_SITEF_ADDRESS: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_STORE_ID: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_TERMINAL_ID: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MAX_SITEF_IP_REACHED: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MISSING_COLLECT_FUNCTION: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MISSING_RECEIVE_FUNCTION: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_OUT_OF_MEMORY: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_SECURE_MODE: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_TCPIP_SETUP: Integer; cdecl;
    {class} function _GetCONFIG_OK: Integer; cdecl;
    {class} function _GetEVT_BEGIN_BT_STARTUP: Integer; cdecl;
    {class} function _GetEVT_BEGIN_PP_CONFIG: Integer; cdecl;
    {class} function _GetEVT_BEGIN_PP_CONNECT: Integer; cdecl;
    {class} function _GetEVT_BT_PP_DISCONNECT: Integer; cdecl;
    {class} function _GetEVT_END_BT_STARTUP: Integer; cdecl;
    {class} function _GetEVT_END_PP_CONFIG: Integer; cdecl;
    {class} function _GetEVT_END_PP_CONNECT: Integer; cdecl;
    {class} function _Getbarcode: JIBarcode; cdecl;
    {class} function _Getpinpad: JIPinPad; cdecl;
    {class} function abortTransaction(P1: Integer): Integer; cdecl;//Deprecated
    {class} function closePinPad: Integer; cdecl;//Deprecated
    {class} function configure(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl;//Deprecated
    {class} function continueTransaction(P1: JString): Integer; cdecl;//Deprecated
    {class} function execSendReceiveSiTefDirectly(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl;//Deprecated
    {class} function finishTransaction(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function finishTransaction(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCliSiTefIVersion: JString; cdecl;//Deprecated
    {class} function getCliSiTefVersion: JString; cdecl;//Deprecated
    {class} function getCommand: Integer; cdecl;//Deprecated
    {class} function getFieldId: Integer; cdecl;//Deprecated
    {class} function getInstance: JCliSiTef; cdecl;//Deprecated
    {class} function getMaxLength: SmallInt; cdecl;//Deprecated
    {class} function getMinLength: SmallInt; cdecl;//Deprecated
    {class} function getQttPendingTransactions(P1: JString; P2: JString): Integer; cdecl;//Deprecated
    {class} function getResponseCode: SmallInt; cdecl;//Deprecated
    {class} function getRxData: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getSendReceiveSiTefDirectlyResult(P1: SmallInt): Integer; cdecl;//Deprecated
    {class} function getServiceCode: JString; cdecl;//Deprecated
    {class} function getServiceData: JString; cdecl;//Deprecated
    {class} function getTrack1: JString; cdecl;//Deprecated
    {class} function getTrack2: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function init(P1: JContext): JCliSiTef; cdecl;//Deprecated
    {class} function loadTranslationFile(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function loadTranslationFile(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function readCardDirectly(P1: JString): Integer; cdecl;//Deprecated
    {class} function sendReceiveSiTefDirectly(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl;//Deprecated
    {class} procedure setActivity(P1: JActivity); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setContinueFlag(P1: Integer); cdecl;//Deprecated
    {class} procedure setDebug(P1: Boolean); cdecl;//Deprecated
    {class} procedure setMessageHandler(P1: JHandler); cdecl;//Deprecated
    {class} function setSendReceiveSiTefDirectlyParameter(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl;//Deprecated
    {class} function startTransaction(P1: JICliSiTefListener; P2: Integer; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString): Integer; cdecl;//Deprecated
    {class} function stopReadCardDirectly: Integer; cdecl;//Deprecated
    {class} function submitPendingMessages: Integer; cdecl;//Deprecated
    {class} property CMD_ABORT_REQUEST: Integer read _GetCMD_ABORT_REQUEST;
    {class} property CMD_CLEAR_HEADER: Integer read _GetCMD_CLEAR_HEADER;
    {class} property CMD_CLEAR_MENU_TITLE: Integer read _GetCMD_CLEAR_MENU_TITLE;
    {class} property CMD_CLEAR_MSG_CASHIER: Integer read _GetCMD_CLEAR_MSG_CASHIER;
    {class} property CMD_CLEAR_MSG_CASHIER_CUSTOMER: Integer read _GetCMD_CLEAR_MSG_CASHIER_CUSTOMER;
    {class} property CMD_CLEAR_MSG_CUSTOMER: Integer read _GetCMD_CLEAR_MSG_CUSTOMER;
    {class} property CMD_CONFIRMATION: Integer read _GetCMD_CONFIRMATION;
    {class} property CMD_CONFIRM_GO_BACK: Integer read _GetCMD_CONFIRM_GO_BACK;
    {class} property CMD_GET_FIELD: Integer read _GetCMD_GET_FIELD;
    {class} property CMD_GET_FIELD_BARCODE: Integer read _GetCMD_GET_FIELD_BARCODE;
    {class} property CMD_GET_FIELD_CHEQUE: Integer read _GetCMD_GET_FIELD_CHEQUE;
    {class} property CMD_GET_FIELD_CURRENCY: Integer read _GetCMD_GET_FIELD_CURRENCY;
    {class} property CMD_GET_FIELD_INTERNAL: Integer read _GetCMD_GET_FIELD_INTERNAL;
    {class} property CMD_GET_FIELD_PASSWORD: Integer read _GetCMD_GET_FIELD_PASSWORD;
    {class} property CMD_GET_FIELD_TRACK: Integer read _GetCMD_GET_FIELD_TRACK;
    {class} property CMD_GET_MASKED_FIELD: Integer read _GetCMD_GET_MASKED_FIELD;
    {class} property CMD_GET_MENU_OPTION: Integer read _GetCMD_GET_MENU_OPTION;
    {class} property CMD_GET_PINPAD_CONFIRMATION: Integer read _GetCMD_GET_PINPAD_CONFIRMATION;
    {class} property CMD_MESSAGE_QRCODE: Integer read _GetCMD_MESSAGE_QRCODE;
    {class} property CMD_PRESS_ANY_KEY: Integer read _GetCMD_PRESS_ANY_KEY;
    {class} property CMD_REMOVE_QRCODE_FIELD: Integer read _GetCMD_REMOVE_QRCODE_FIELD;
    {class} property CMD_RESULT_DATA: Integer read _GetCMD_RESULT_DATA;
    {class} property CMD_SHOW_HEADER: Integer read _GetCMD_SHOW_HEADER;
    {class} property CMD_SHOW_MENU_TITLE: Integer read _GetCMD_SHOW_MENU_TITLE;
    {class} property CMD_SHOW_MSG_CASHIER: Integer read _GetCMD_SHOW_MSG_CASHIER;
    {class} property CMD_SHOW_MSG_CASHIER_CUSTOMER: Integer read _GetCMD_SHOW_MSG_CASHIER_CUSTOMER;
    {class} property CMD_SHOW_MSG_CUSTOMER: Integer read _GetCMD_SHOW_MSG_CUSTOMER;
    {class} property CMD_SHOW_QRCODE_FIELD: Integer read _GetCMD_SHOW_QRCODE_FIELD;
    {class} property CONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND: Integer read _GetCONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND;
    {class} property CONFIG_ERROR_INITIALIZING_FILES: Integer read _GetCONFIG_ERROR_INITIALIZING_FILES;
    {class} property CONFIG_ERROR_INVALID_FIELD: Integer read _GetCONFIG_ERROR_INVALID_FIELD;
    {class} property CONFIG_ERROR_INVALID_PATH: Integer read _GetCONFIG_ERROR_INVALID_PATH;
    {class} property CONFIG_ERROR_INVALID_SITEF_ADDRESS: Integer read _GetCONFIG_ERROR_INVALID_SITEF_ADDRESS;
    {class} property CONFIG_ERROR_INVALID_STORE_ID: Integer read _GetCONFIG_ERROR_INVALID_STORE_ID;
    {class} property CONFIG_ERROR_INVALID_TERMINAL_ID: Integer read _GetCONFIG_ERROR_INVALID_TERMINAL_ID;
    {class} property CONFIG_ERROR_MAX_SITEF_IP_REACHED: Integer read _GetCONFIG_ERROR_MAX_SITEF_IP_REACHED;
    {class} property CONFIG_ERROR_MISSING_COLLECT_FUNCTION: Integer read _GetCONFIG_ERROR_MISSING_COLLECT_FUNCTION;
    {class} property CONFIG_ERROR_MISSING_RECEIVE_FUNCTION: Integer read _GetCONFIG_ERROR_MISSING_RECEIVE_FUNCTION;
    {class} property CONFIG_ERROR_OUT_OF_MEMORY: Integer read _GetCONFIG_ERROR_OUT_OF_MEMORY;
    {class} property CONFIG_ERROR_SECURE_MODE: Integer read _GetCONFIG_ERROR_SECURE_MODE;
    {class} property CONFIG_ERROR_TCPIP_SETUP: Integer read _GetCONFIG_ERROR_TCPIP_SETUP;
    {class} property CONFIG_OK: Integer read _GetCONFIG_OK;
    {class} property EVT_BEGIN_BT_STARTUP: Integer read _GetEVT_BEGIN_BT_STARTUP;
    {class} property EVT_BEGIN_PP_CONFIG: Integer read _GetEVT_BEGIN_PP_CONFIG;
    {class} property EVT_BEGIN_PP_CONNECT: Integer read _GetEVT_BEGIN_PP_CONNECT;
    {class} property EVT_BT_PP_DISCONNECT: Integer read _GetEVT_BT_PP_DISCONNECT;
    {class} property EVT_END_BT_STARTUP: Integer read _GetEVT_END_BT_STARTUP;
    {class} property EVT_END_PP_CONFIG: Integer read _GetEVT_END_PP_CONFIG;
    {class} property EVT_END_PP_CONNECT: Integer read _GetEVT_END_PP_CONNECT;
    {class} property barcode: JIBarcode read _Getbarcode;
    {class} property pinpad: JIPinPad read _Getpinpad;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/CliSiTef')]
  JCliSiTef = interface(JObject)
['{2A26BB39-2F1D-4C35-94C2-4C3E6AFC5ECC}']
    {class} function _GetCMD_ABORT_REQUEST: Integer; cdecl;
    {class} function _GetCMD_CLEAR_HEADER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MENU_TITLE: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CASHIER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CASHIER_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_CLEAR_MSG_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_CONFIRMATION: Integer; cdecl;
    {class} function _GetCMD_CONFIRM_GO_BACK: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_BARCODE: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_CHEQUE: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_CURRENCY: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_INTERNAL: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_PASSWORD: Integer; cdecl;
    {class} function _GetCMD_GET_FIELD_TRACK: Integer; cdecl;
    {class} function _GetCMD_GET_MASKED_FIELD: Integer; cdecl;
    {class} function _GetCMD_GET_MENU_OPTION: Integer; cdecl;
    {class} function _GetCMD_GET_PINPAD_CONFIRMATION: Integer; cdecl;
    {class} function _GetCMD_MESSAGE_QRCODE: Integer; cdecl;
    {class} function _GetCMD_PRESS_ANY_KEY: Integer; cdecl;
    {class} function _GetCMD_REMOVE_QRCODE_FIELD: Integer; cdecl;
    {class} function _GetCMD_RESULT_DATA: Integer; cdecl;
    {class} function _GetCMD_SHOW_HEADER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MENU_TITLE: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CASHIER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CASHIER_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_SHOW_MSG_CUSTOMER: Integer; cdecl;
    {class} function _GetCMD_SHOW_QRCODE_FIELD: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INITIALIZING_FILES: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_FIELD: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_PATH: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_SITEF_ADDRESS: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_STORE_ID: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_INVALID_TERMINAL_ID: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MAX_SITEF_IP_REACHED: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MISSING_COLLECT_FUNCTION: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_MISSING_RECEIVE_FUNCTION: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_OUT_OF_MEMORY: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_SECURE_MODE: Integer; cdecl;
    {class} function _GetCONFIG_ERROR_TCPIP_SETUP: Integer; cdecl;
    {class} function _GetCONFIG_OK: Integer; cdecl;
    {class} function _GetEVT_BEGIN_BT_STARTUP: Integer; cdecl;
    {class} function _GetEVT_BEGIN_PP_CONFIG: Integer; cdecl;
    {class} function _GetEVT_BEGIN_PP_CONNECT: Integer; cdecl;
    {class} function _GetEVT_BT_PP_DISCONNECT: Integer; cdecl;
    {class} function _GetEVT_END_BT_STARTUP: Integer; cdecl;
    {class} function _GetEVT_END_PP_CONFIG: Integer; cdecl;
    {class} function _GetEVT_END_PP_CONNECT: Integer; cdecl;
    {class} function _Getbarcode: JIBarcode; cdecl;
    {class} function _Getpinpad: JIPinPad; cdecl;
    {class} function abortTransaction(P1: Integer): Integer; cdecl;//Deprecated
    {class} function closePinPad: Integer; cdecl;//Deprecated
    {class} function configure(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl;//Deprecated
    {class} function continueTransaction(P1: JString): Integer; cdecl;//Deprecated
    {class} function execSendReceiveSiTefDirectly(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl;//Deprecated
    {class} function finishTransaction(P1: Integer): Integer; cdecl; overload;//Deprecated
    {class} function finishTransaction(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl; overload;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCliSiTefIVersion: JString; cdecl;//Deprecated
    {class} function getCliSiTefVersion: JString; cdecl;//Deprecated
    {class} function getCommand: Integer; cdecl;//Deprecated
    {class} function getFieldId: Integer; cdecl;//Deprecated
    {class} function getInstance: JCliSiTef; cdecl;//Deprecated
    {class} function getMaxLength: SmallInt; cdecl;//Deprecated
    {class} function getMinLength: SmallInt; cdecl;//Deprecated
    {class} function getQttPendingTransactions(P1: JString; P2: JString): Integer; cdecl;//Deprecated
    {class} function getResponseCode: SmallInt; cdecl;//Deprecated
    {class} function getRxData: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getSendReceiveSiTefDirectlyResult(P1: SmallInt): Integer; cdecl;//Deprecated
    {class} function getServiceCode: JString; cdecl;//Deprecated
    {class} function getServiceData: JString; cdecl;//Deprecated
    {class} function getTrack1: JString; cdecl;//Deprecated
    {class} function getTrack2: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function init(P1: JContext): JCliSiTef; cdecl;//Deprecated
    {class} function loadTranslationFile(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function loadTranslationFile(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function readCardDirectly(P1: JString): Integer; cdecl;//Deprecated
    {class} function sendReceiveSiTefDirectly(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl;//Deprecated
    {class} procedure setActivity(P1: JActivity); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setContinueFlag(P1: Integer); cdecl;//Deprecated
    {class} procedure setDebug(P1: Boolean); cdecl;//Deprecated
    {class} procedure setMessageHandler(P1: JHandler); cdecl;//Deprecated
    {class} function setSendReceiveSiTefDirectlyParameter(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl;//Deprecated
    {class} function startTransaction(P1: JICliSiTefListener; P2: Integer; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString; P8: JString): Integer; cdecl;//Deprecated
    {class} function stopReadCardDirectly: Integer; cdecl;//Deprecated
    {class} function submitPendingMessages: Integer; cdecl;//Deprecated
    {class} property CMD_ABORT_REQUEST: Integer read _GetCMD_ABORT_REQUEST;
    {class} property CMD_CLEAR_HEADER: Integer read _GetCMD_CLEAR_HEADER;
    {class} property CMD_CLEAR_MENU_TITLE: Integer read _GetCMD_CLEAR_MENU_TITLE;
    {class} property CMD_CLEAR_MSG_CASHIER: Integer read _GetCMD_CLEAR_MSG_CASHIER;
    {class} property CMD_CLEAR_MSG_CASHIER_CUSTOMER: Integer read _GetCMD_CLEAR_MSG_CASHIER_CUSTOMER;
    {class} property CMD_CLEAR_MSG_CUSTOMER: Integer read _GetCMD_CLEAR_MSG_CUSTOMER;
    {class} property CMD_CONFIRMATION: Integer read _GetCMD_CONFIRMATION;
    {class} property CMD_CONFIRM_GO_BACK: Integer read _GetCMD_CONFIRM_GO_BACK;
    {class} property CMD_GET_FIELD: Integer read _GetCMD_GET_FIELD;
    {class} property CMD_GET_FIELD_BARCODE: Integer read _GetCMD_GET_FIELD_BARCODE;
    {class} property CMD_GET_FIELD_CHEQUE: Integer read _GetCMD_GET_FIELD_CHEQUE;
    {class} property CMD_GET_FIELD_CURRENCY: Integer read _GetCMD_GET_FIELD_CURRENCY;
    {class} property CMD_GET_FIELD_INTERNAL: Integer read _GetCMD_GET_FIELD_INTERNAL;
    {class} property CMD_GET_FIELD_PASSWORD: Integer read _GetCMD_GET_FIELD_PASSWORD;
    {class} property CMD_GET_FIELD_TRACK: Integer read _GetCMD_GET_FIELD_TRACK;
    {class} property CMD_GET_MASKED_FIELD: Integer read _GetCMD_GET_MASKED_FIELD;
    {class} property CMD_GET_MENU_OPTION: Integer read _GetCMD_GET_MENU_OPTION;
    {class} property CMD_GET_PINPAD_CONFIRMATION: Integer read _GetCMD_GET_PINPAD_CONFIRMATION;
    {class} property CMD_MESSAGE_QRCODE: Integer read _GetCMD_MESSAGE_QRCODE;
    {class} property CMD_PRESS_ANY_KEY: Integer read _GetCMD_PRESS_ANY_KEY;
    {class} property CMD_REMOVE_QRCODE_FIELD: Integer read _GetCMD_REMOVE_QRCODE_FIELD;
    {class} property CMD_RESULT_DATA: Integer read _GetCMD_RESULT_DATA;
    {class} property CMD_SHOW_HEADER: Integer read _GetCMD_SHOW_HEADER;
    {class} property CMD_SHOW_MENU_TITLE: Integer read _GetCMD_SHOW_MENU_TITLE;
    {class} property CMD_SHOW_MSG_CASHIER: Integer read _GetCMD_SHOW_MSG_CASHIER;
    {class} property CMD_SHOW_MSG_CASHIER_CUSTOMER: Integer read _GetCMD_SHOW_MSG_CASHIER_CUSTOMER;
    {class} property CMD_SHOW_MSG_CUSTOMER: Integer read _GetCMD_SHOW_MSG_CUSTOMER;
    {class} property CMD_SHOW_QRCODE_FIELD: Integer read _GetCMD_SHOW_QRCODE_FIELD;
    {class} property CONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND: Integer read _GetCONFIG_ERROR_CLISITEF_LIBRARY_NOT_FOUND;
    {class} property CONFIG_ERROR_INITIALIZING_FILES: Integer read _GetCONFIG_ERROR_INITIALIZING_FILES;
    {class} property CONFIG_ERROR_INVALID_FIELD: Integer read _GetCONFIG_ERROR_INVALID_FIELD;
    {class} property CONFIG_ERROR_INVALID_PATH: Integer read _GetCONFIG_ERROR_INVALID_PATH;
    {class} property CONFIG_ERROR_INVALID_SITEF_ADDRESS: Integer read _GetCONFIG_ERROR_INVALID_SITEF_ADDRESS;
    {class} property CONFIG_ERROR_INVALID_STORE_ID: Integer read _GetCONFIG_ERROR_INVALID_STORE_ID;
    {class} property CONFIG_ERROR_INVALID_TERMINAL_ID: Integer read _GetCONFIG_ERROR_INVALID_TERMINAL_ID;
    {class} property CONFIG_ERROR_MAX_SITEF_IP_REACHED: Integer read _GetCONFIG_ERROR_MAX_SITEF_IP_REACHED;
    {class} property CONFIG_ERROR_MISSING_COLLECT_FUNCTION: Integer read _GetCONFIG_ERROR_MISSING_COLLECT_FUNCTION;
    {class} property CONFIG_ERROR_MISSING_RECEIVE_FUNCTION: Integer read _GetCONFIG_ERROR_MISSING_RECEIVE_FUNCTION;
    {class} property CONFIG_ERROR_OUT_OF_MEMORY: Integer read _GetCONFIG_ERROR_OUT_OF_MEMORY;
    {class} property CONFIG_ERROR_SECURE_MODE: Integer read _GetCONFIG_ERROR_SECURE_MODE;
    {class} property CONFIG_ERROR_TCPIP_SETUP: Integer read _GetCONFIG_ERROR_TCPIP_SETUP;
    {class} property CONFIG_OK: Integer read _GetCONFIG_OK;
    {class} property EVT_BEGIN_BT_STARTUP: Integer read _GetEVT_BEGIN_BT_STARTUP;
    {class} property EVT_BEGIN_PP_CONFIG: Integer read _GetEVT_BEGIN_PP_CONFIG;
    {class} property EVT_BEGIN_PP_CONNECT: Integer read _GetEVT_BEGIN_PP_CONNECT;
    {class} property EVT_BT_PP_DISCONNECT: Integer read _GetEVT_BT_PP_DISCONNECT;
    {class} property EVT_END_BT_STARTUP: Integer read _GetEVT_END_BT_STARTUP;
    {class} property EVT_END_PP_CONFIG: Integer read _GetEVT_END_PP_CONFIG;
    {class} property EVT_END_PP_CONNECT: Integer read _GetEVT_END_PP_CONNECT;
    {class} property barcode: JIBarcode read _Getbarcode;
    {class} property pinpad: JIPinPad read _Getpinpad;
  end;
  TJCliSiTef = class(TJavaGenericImport<JCliSiTefClass, JCliSiTef>) end;

  JCliSiTefIClass = interface(JObjectClass)
    ['{8E2C2A16-DADA-4F6A-B140-DCB2338EA45A}']
    {class} function _GetCMD_CONFIRMA_CANCELA: Integer; cdecl;
    {class} function _GetCMD_EXIBE_CABECALHO: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM_CLIENTE: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM_OPERADOR: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CAMPO: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CAMPO_SEM_COLETA: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CHEQUE: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CODIGO_EM_BARRAS: Integer; cdecl;
    {class} function _GetCMD_OBTEM_QUALQUER_TECLA: Integer; cdecl;
    {class} function _GetCMD_OBTEM_VALOR: Integer; cdecl;
    {class} function _GetCMD_PERGUNTA_SE_INTERROMPE: Integer; cdecl;
    {class} function _GetCMD_REMOVE_CABECALHO: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM_CLIENTE: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM_OPERADOR: Integer; cdecl;
    {class} function _GetCMD_REMOVE_TITULO_MENU: Integer; cdecl;
    {class} function _GetCMD_RETORNO_VALOR: Integer; cdecl;
    {class} function _GetCMD_SELECIONA_MENU: Integer; cdecl;
    {class} function _GetCMD_TITULO_MENU: Integer; cdecl;
    {class} function _GetEVT_CONTINUA_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetEVT_FALHA_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetEVT_FIM_AGUARDA_CONEXAO_PP: Integer; cdecl;
    {class} function _GetEVT_FIM_ATIVACAO_BT: Integer; cdecl;
    {class} function _GetEVT_FIM_MODO_DISCOVER_BT: Integer; cdecl;
    {class} function _GetEVT_INICIA_AGUARDA_CONEXAO_PP: Integer; cdecl;
    {class} function _GetEVT_INICIA_ATIVACAO_BT: Integer; cdecl;
    {class} function _GetEVT_INICIO_MODO_DISCOVER_BT: Integer; cdecl;
    {class} function _GetEVT_PP_BT_CONFIGURADO: Integer; cdecl;
    {class} function _GetEVT_PP_BT_CONFIGURANDO: Integer; cdecl;
    {class} function _GetEVT_PP_BT_DESCONECTADO: Integer; cdecl;
    {class} function _GetEVT_SUCESSO_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetPPBT_CMD_CONFIGURA_BIBLIOTECA: Integer; cdecl;
    {class} function _GetPPBT_CMD_TRACE: Integer; cdecl;
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: JString); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: Integer); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl;//Deprecated
    {class} function continuaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function continuaFuncaoSiTefInterativo(P1: JString; P2: Integer): Integer; cdecl; overload;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl;//Deprecated
    {class} function descarregaMensagens: Integer; cdecl;//Deprecated
    {class} function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl;//Deprecated
    {class} function escreveMensagemPermanentePinPad(P1: JString): Integer; cdecl;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl;//Deprecated
    {class} function fechaPinPad: Integer; cdecl;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl;//Deprecated
    {class} function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCodigoResposta: SmallInt; cdecl;//Deprecated
    {class} function getCodigoServico: JString; cdecl;//Deprecated
    {class} function getDadosRx: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getDadosServico: JString; cdecl;//Deprecated
    {class} function getInstance: JCliSiTefI; cdecl;//Deprecated
    {class} function getProximoComando: Integer; cdecl;//Deprecated
    {class} function getTamanhoMaximo: SmallInt; cdecl;//Deprecated
    {class} function getTamanhoMinimo: SmallInt; cdecl;//Deprecated
    {class} function getTipoCampo: Integer; cdecl;//Deprecated
    {class} function getTipoCodigoEmBarras: Integer; cdecl;//Deprecated
    {class} function getTrilha1: JString; cdecl;//Deprecated
    {class} function getTrilha2: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTef: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTefI: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl;//Deprecated
    {class} function init(P1: JContext): JCliSiTefI; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JCliSiTefI; cdecl; overload;//Deprecated
    {class} function interrompeLeCartaoDireto: Integer; cdecl;//Deprecated
    {class} function isDebugOn: Boolean; cdecl;//Deprecated
    {class} function leCartaoDireto(P1: JString): Integer; cdecl;//Deprecated
    {class} function leCartaoDiretoSeguro(P1: JString): Integer; cdecl;//Deprecated
    {class} function leSenhaDireto(P1: JString): Integer; cdecl;//Deprecated
    {class} function leSimNaoPinPad(P1: JString): Integer; cdecl;//Deprecated
    {class} procedure log(P1: JString); cdecl; overload;//Deprecated
    {class} procedure log(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} procedure logE(P1: JString); cdecl; overload;//Deprecated
    {class} procedure logE(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} procedure logStackTrace; cdecl; overload;//Deprecated
    {class} procedure logStackTrace(P1: JThrowable); cdecl; overload;//Deprecated
    {class} function obtemInformacoesPinPad: Integer; cdecl;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes(P1: JString; P2: JString): Integer; cdecl;//Deprecated
    {class} function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer; cdecl;//Deprecated
    {class} function obtemVersao: Integer; cdecl;//Deprecated
    {class} function pinpadConecta: Integer; cdecl;//Deprecated
    {class} function pinpadDesconecta: Integer; cdecl;//Deprecated
    {class} procedure setActivity(P1: JActivity); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setContinuaNavegacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setDebug(P1: Boolean); cdecl;//Deprecated
    {class} procedure setDebugStatic(P1: Boolean); cdecl;//Deprecated
    {class} procedure setMessageHandler(P1: JHandler); cdecl;//Deprecated
    {class} function stackTrace: JString; cdecl; overload;//Deprecated
    {class} function stackTrace(P1: JThrowable): JString; cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras(P1: JString): Integer; cdecl;//Deprecated
    {class} function verificaPresencaPinPad: Integer; cdecl;//Deprecated
    {class} property CMD_CONFIRMA_CANCELA: Integer read _GetCMD_CONFIRMA_CANCELA;
    {class} property CMD_EXIBE_CABECALHO: Integer read _GetCMD_EXIBE_CABECALHO;
    {class} property CMD_MENSAGEM: Integer read _GetCMD_MENSAGEM;
    {class} property CMD_MENSAGEM_CLIENTE: Integer read _GetCMD_MENSAGEM_CLIENTE;
    {class} property CMD_MENSAGEM_OPERADOR: Integer read _GetCMD_MENSAGEM_OPERADOR;
    {class} property CMD_OBTEM_CAMPO: Integer read _GetCMD_OBTEM_CAMPO;
    {class} property CMD_OBTEM_CAMPO_SEM_COLETA: Integer read _GetCMD_OBTEM_CAMPO_SEM_COLETA;
    {class} property CMD_OBTEM_CHEQUE: Integer read _GetCMD_OBTEM_CHEQUE;
    {class} property CMD_OBTEM_CODIGO_EM_BARRAS: Integer read _GetCMD_OBTEM_CODIGO_EM_BARRAS;
    {class} property CMD_OBTEM_QUALQUER_TECLA: Integer read _GetCMD_OBTEM_QUALQUER_TECLA;
    {class} property CMD_OBTEM_VALOR: Integer read _GetCMD_OBTEM_VALOR;
    {class} property CMD_PERGUNTA_SE_INTERROMPE: Integer read _GetCMD_PERGUNTA_SE_INTERROMPE;
    {class} property CMD_REMOVE_CABECALHO: Integer read _GetCMD_REMOVE_CABECALHO;
    {class} property CMD_REMOVE_MENSAGEM: Integer read _GetCMD_REMOVE_MENSAGEM;
    {class} property CMD_REMOVE_MENSAGEM_CLIENTE: Integer read _GetCMD_REMOVE_MENSAGEM_CLIENTE;
    {class} property CMD_REMOVE_MENSAGEM_OPERADOR: Integer read _GetCMD_REMOVE_MENSAGEM_OPERADOR;
    {class} property CMD_REMOVE_TITULO_MENU: Integer read _GetCMD_REMOVE_TITULO_MENU;
    {class} property CMD_RETORNO_VALOR: Integer read _GetCMD_RETORNO_VALOR;
    {class} property CMD_SELECIONA_MENU: Integer read _GetCMD_SELECIONA_MENU;
    {class} property CMD_TITULO_MENU: Integer read _GetCMD_TITULO_MENU;
    {class} property EVT_CONTINUA_CADASTRO_PIN_BT: Integer read _GetEVT_CONTINUA_CADASTRO_PIN_BT;
    {class} property EVT_FALHA_CADASTRO_PIN_BT: Integer read _GetEVT_FALHA_CADASTRO_PIN_BT;
    {class} property EVT_FIM_AGUARDA_CONEXAO_PP: Integer read _GetEVT_FIM_AGUARDA_CONEXAO_PP;
    {class} property EVT_FIM_ATIVACAO_BT: Integer read _GetEVT_FIM_ATIVACAO_BT;
    {class} property EVT_FIM_MODO_DISCOVER_BT: Integer read _GetEVT_FIM_MODO_DISCOVER_BT;
    {class} property EVT_INICIA_AGUARDA_CONEXAO_PP: Integer read _GetEVT_INICIA_AGUARDA_CONEXAO_PP;
    {class} property EVT_INICIA_ATIVACAO_BT: Integer read _GetEVT_INICIA_ATIVACAO_BT;
    {class} property EVT_INICIO_MODO_DISCOVER_BT: Integer read _GetEVT_INICIO_MODO_DISCOVER_BT;
    {class} property EVT_PP_BT_CONFIGURADO: Integer read _GetEVT_PP_BT_CONFIGURADO;
    {class} property EVT_PP_BT_CONFIGURANDO: Integer read _GetEVT_PP_BT_CONFIGURANDO;
    {class} property EVT_PP_BT_DESCONECTADO: Integer read _GetEVT_PP_BT_DESCONECTADO;
    {class} property EVT_SUCESSO_CADASTRO_PIN_BT: Integer read _GetEVT_SUCESSO_CADASTRO_PIN_BT;
    {class} property PPBT_CMD_CONFIGURA_BIBLIOTECA: Integer read _GetPPBT_CMD_CONFIGURA_BIBLIOTECA;
    {class} property PPBT_CMD_TRACE: Integer read _GetPPBT_CMD_TRACE;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/CliSiTefI')]
  JCliSiTefI = interface(JObject)
['{8E2C2A16-DADA-4F6A-B140-DCB2338EA45A}']
    {class} function _GetCMD_CONFIRMA_CANCELA: Integer; cdecl;
    {class} function _GetCMD_EXIBE_CABECALHO: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM_CLIENTE: Integer; cdecl;
    {class} function _GetCMD_MENSAGEM_OPERADOR: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CAMPO: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CAMPO_SEM_COLETA: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CHEQUE: Integer; cdecl;
    {class} function _GetCMD_OBTEM_CODIGO_EM_BARRAS: Integer; cdecl;
    {class} function _GetCMD_OBTEM_QUALQUER_TECLA: Integer; cdecl;
    {class} function _GetCMD_OBTEM_VALOR: Integer; cdecl;
    {class} function _GetCMD_PERGUNTA_SE_INTERROMPE: Integer; cdecl;
    {class} function _GetCMD_REMOVE_CABECALHO: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM_CLIENTE: Integer; cdecl;
    {class} function _GetCMD_REMOVE_MENSAGEM_OPERADOR: Integer; cdecl;
    {class} function _GetCMD_REMOVE_TITULO_MENU: Integer; cdecl;
    {class} function _GetCMD_RETORNO_VALOR: Integer; cdecl;
    {class} function _GetCMD_SELECIONA_MENU: Integer; cdecl;
    {class} function _GetCMD_TITULO_MENU: Integer; cdecl;
    {class} function _GetEVT_CONTINUA_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetEVT_FALHA_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetEVT_FIM_AGUARDA_CONEXAO_PP: Integer; cdecl;
    {class} function _GetEVT_FIM_ATIVACAO_BT: Integer; cdecl;
    {class} function _GetEVT_FIM_MODO_DISCOVER_BT: Integer; cdecl;
    {class} function _GetEVT_INICIA_AGUARDA_CONEXAO_PP: Integer; cdecl;
    {class} function _GetEVT_INICIA_ATIVACAO_BT: Integer; cdecl;
    {class} function _GetEVT_INICIO_MODO_DISCOVER_BT: Integer; cdecl;
    {class} function _GetEVT_PP_BT_CONFIGURADO: Integer; cdecl;
    {class} function _GetEVT_PP_BT_CONFIGURANDO: Integer; cdecl;
    {class} function _GetEVT_PP_BT_DESCONECTADO: Integer; cdecl;
    {class} function _GetEVT_SUCESSO_CADASTRO_PIN_BT: Integer; cdecl;
    {class} function _GetPPBT_CMD_CONFIGURA_BIBLIOTECA: Integer; cdecl;
    {class} function _GetPPBT_CMD_TRACE: Integer; cdecl;
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: JString); cdecl; overload;//Deprecated
    {class} procedure GeraTrace(P1: JString; P2: JString; P3: Integer); cdecl; overload;//Deprecated
    // {class} procedure GeraTrace(P1: JString; P2: JString; P3: TJavaArray<Byte>); cdecl; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString): Integer; overload;//Deprecated
    {class} function carregaArquivosTraducao(P1: JString; P2: JString): Integer; cdecl; overload;//Deprecated
    {class} function configuraIntSiTefInterativoEx(P1: JString; P2: JString; P3: JString; P4: JString): Integer; cdecl;//Deprecated
    {class} function continuaFuncaoSiTefInterativo: Integer; cdecl; overload;//Deprecated
    {class} function continuaFuncaoSiTefInterativo(P1: JString; P2: Integer): Integer; cdecl; overload;//Deprecated
    {class} function correspondenteBancarioSiTefInterativo(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl;//Deprecated
    {class} function descarregaMensagens: Integer; cdecl;//Deprecated
    {class} function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: TJavaArray<Byte>; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: JString; P9: JString; P10: JString; P11: JString; P12: SmallInt): Integer; cdecl;//Deprecated
    {class} function escreveMensagemPermanentePinPad(P1: JString): Integer; cdecl;//Deprecated
    {class} function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: JString; P5: JString; P6: JString; P7: JString; P8: SmallInt): Integer; cdecl;//Deprecated
    {class} function fechaPinPad: Integer; cdecl;//Deprecated
    {class} function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString): Integer; cdecl;//Deprecated
    {class} function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: JString; P3: SmallInt; P4: SmallInt): Integer; cdecl;//Deprecated
    {class} function getBuffer: JString; cdecl;//Deprecated
    {class} function getCodigoResposta: SmallInt; cdecl;//Deprecated
    {class} function getCodigoServico: JString; cdecl;//Deprecated
    {class} function getDadosRx: TJavaArray<Byte>; cdecl;//Deprecated
    {class} function getDadosServico: JString; cdecl;//Deprecated
    {class} function getInstance: JCliSiTefI; cdecl;//Deprecated
    {class} function getProximoComando: Integer; cdecl;//Deprecated
    {class} function getTamanhoMaximo: SmallInt; cdecl;//Deprecated
    {class} function getTamanhoMinimo: SmallInt; cdecl;//Deprecated
    {class} function getTipoCampo: Integer; cdecl;//Deprecated
    {class} function getTipoCodigoEmBarras: Integer; cdecl;//Deprecated
    {class} function getTrilha1: JString; cdecl;//Deprecated
    {class} function getTrilha2: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTef: JString; cdecl;//Deprecated
    {class} function getVersaoCliSiTefI: JString; cdecl;//Deprecated
    {class} function getVersion: JString; cdecl;//Deprecated
    {class} function iniciaFuncaoSiTefInterativo(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: JString; P7: JString): Integer; cdecl;//Deprecated
    {class} function init(P1: JContext): JCliSiTefI; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JCliSiTefI; cdecl; overload;//Deprecated
    {class} function interrompeLeCartaoDireto: Integer; cdecl;//Deprecated
    {class} function isDebugOn: Boolean; cdecl;//Deprecated
    {class} function leCartaoDireto(P1: JString): Integer; cdecl;//Deprecated
    {class} function leCartaoDiretoSeguro(P1: JString): Integer; cdecl;//Deprecated
    {class} function leSenhaDireto(P1: JString): Integer; cdecl;//Deprecated
    {class} function leSimNaoPinPad(P1: JString): Integer; cdecl;//Deprecated
    {class} procedure log(P1: JString); cdecl; overload;//Deprecated
    {class} procedure log(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} procedure logE(P1: JString); cdecl; overload;//Deprecated
    {class} procedure logE(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} procedure logStackTrace; cdecl; overload;//Deprecated
    {class} procedure logStackTrace(P1: JThrowable); cdecl; overload;//Deprecated
    {class} function obtemInformacoesPinPad: Integer; cdecl;//Deprecated
    {class} function obtemQuantidadeTransacoesPendentes(P1: JString; P2: JString): Integer; cdecl;//Deprecated
    {class} function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer; cdecl;//Deprecated
    {class} function obtemVersao: Integer; cdecl;//Deprecated
    {class} function pinpadConecta: Integer; cdecl;//Deprecated
    {class} function pinpadDesconecta: Integer; cdecl;//Deprecated
    {class} procedure setActivity(P1: JActivity); cdecl;//Deprecated
    {class} procedure setBuffer(P1: JString); cdecl;//Deprecated
    {class} procedure setContinuaNavegacao(P1: Integer); cdecl;//Deprecated
    {class} procedure setDebug(P1: Boolean); cdecl;//Deprecated
    {class} procedure setDebugStatic(P1: Boolean); cdecl;//Deprecated
    {class} procedure setMessageHandler(P1: JHandler); cdecl;//Deprecated
    {class} function stackTrace: JString; cdecl; overload;//Deprecated
    {class} function stackTrace(P1: JThrowable): JString; cdecl; overload;//Deprecated
    {class} function validaCampoCodigoEmBarras(P1: JString): Integer; cdecl;//Deprecated
    {class} function verificaPresencaPinPad: Integer; cdecl;//Deprecated
    {class} property CMD_CONFIRMA_CANCELA: Integer read _GetCMD_CONFIRMA_CANCELA;
    {class} property CMD_EXIBE_CABECALHO: Integer read _GetCMD_EXIBE_CABECALHO;
    {class} property CMD_MENSAGEM: Integer read _GetCMD_MENSAGEM;
    {class} property CMD_MENSAGEM_CLIENTE: Integer read _GetCMD_MENSAGEM_CLIENTE;
    {class} property CMD_MENSAGEM_OPERADOR: Integer read _GetCMD_MENSAGEM_OPERADOR;
    {class} property CMD_OBTEM_CAMPO: Integer read _GetCMD_OBTEM_CAMPO;
    {class} property CMD_OBTEM_CAMPO_SEM_COLETA: Integer read _GetCMD_OBTEM_CAMPO_SEM_COLETA;
    {class} property CMD_OBTEM_CHEQUE: Integer read _GetCMD_OBTEM_CHEQUE;
    {class} property CMD_OBTEM_CODIGO_EM_BARRAS: Integer read _GetCMD_OBTEM_CODIGO_EM_BARRAS;
    {class} property CMD_OBTEM_QUALQUER_TECLA: Integer read _GetCMD_OBTEM_QUALQUER_TECLA;
    {class} property CMD_OBTEM_VALOR: Integer read _GetCMD_OBTEM_VALOR;
    {class} property CMD_PERGUNTA_SE_INTERROMPE: Integer read _GetCMD_PERGUNTA_SE_INTERROMPE;
    {class} property CMD_REMOVE_CABECALHO: Integer read _GetCMD_REMOVE_CABECALHO;
    {class} property CMD_REMOVE_MENSAGEM: Integer read _GetCMD_REMOVE_MENSAGEM;
    {class} property CMD_REMOVE_MENSAGEM_CLIENTE: Integer read _GetCMD_REMOVE_MENSAGEM_CLIENTE;
    {class} property CMD_REMOVE_MENSAGEM_OPERADOR: Integer read _GetCMD_REMOVE_MENSAGEM_OPERADOR;
    {class} property CMD_REMOVE_TITULO_MENU: Integer read _GetCMD_REMOVE_TITULO_MENU;
    {class} property CMD_RETORNO_VALOR: Integer read _GetCMD_RETORNO_VALOR;
    {class} property CMD_SELECIONA_MENU: Integer read _GetCMD_SELECIONA_MENU;
    {class} property CMD_TITULO_MENU: Integer read _GetCMD_TITULO_MENU;
    {class} property EVT_CONTINUA_CADASTRO_PIN_BT: Integer read _GetEVT_CONTINUA_CADASTRO_PIN_BT;
    {class} property EVT_FALHA_CADASTRO_PIN_BT: Integer read _GetEVT_FALHA_CADASTRO_PIN_BT;
    {class} property EVT_FIM_AGUARDA_CONEXAO_PP: Integer read _GetEVT_FIM_AGUARDA_CONEXAO_PP;
    {class} property EVT_FIM_ATIVACAO_BT: Integer read _GetEVT_FIM_ATIVACAO_BT;
    {class} property EVT_FIM_MODO_DISCOVER_BT: Integer read _GetEVT_FIM_MODO_DISCOVER_BT;
    {class} property EVT_INICIA_AGUARDA_CONEXAO_PP: Integer read _GetEVT_INICIA_AGUARDA_CONEXAO_PP;
    {class} property EVT_INICIA_ATIVACAO_BT: Integer read _GetEVT_INICIA_ATIVACAO_BT;
    {class} property EVT_INICIO_MODO_DISCOVER_BT: Integer read _GetEVT_INICIO_MODO_DISCOVER_BT;
    {class} property EVT_PP_BT_CONFIGURADO: Integer read _GetEVT_PP_BT_CONFIGURADO;
    {class} property EVT_PP_BT_CONFIGURANDO: Integer read _GetEVT_PP_BT_CONFIGURANDO;
    {class} property EVT_PP_BT_DESCONECTADO: Integer read _GetEVT_PP_BT_DESCONECTADO;
    {class} property EVT_SUCESSO_CADASTRO_PIN_BT: Integer read _GetEVT_SUCESSO_CADASTRO_PIN_BT;
    {class} property PPBT_CMD_CONFIGURA_BIBLIOTECA: Integer read _GetPPBT_CMD_CONFIGURA_BIBLIOTECA;
    {class} property PPBT_CMD_TRACE: Integer read _GetPPBT_CMD_TRACE;
  end;
  TJCliSiTefI = class(TJavaGenericImport<JCliSiTefIClass, JCliSiTefI>) end;

  JPinPadCtrlLoggerClass = interface(IJavaClass)
    ['{7EF57C03-AB55-4A84-86ED-CA5D24FE0857}']
    {class} procedure log(P1: JString; P2: JString); cdecl;//Deprecated
    {class} procedure logStackTrace(P1: JThrowable); cdecl;//Deprecated
    {class} procedure trace(P1: JString); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadCtrlLogger')]
  JPinPadCtrlLogger = interface(IJavaInstance)
    ['{407B2ACB-3BDA-484D-88B7-59A6E5B0CBFC}']
  end;
  TJPinPadCtrlLogger = class(TJavaGenericImport<JPinPadCtrlLoggerClass, JPinPadCtrlLogger>) end;

  JCliSiTefI_1Class = interface(JPinPadCtrlLoggerClass)
    ['{C9E360B8-2357-4980-99C9-CD2EE09019D0}']
    {class} function init(P1: JCliSiTefI): JCliSiTefI_1; cdecl;//Deprecated
    {class} procedure log(P1: JString; P2: JString); cdecl;//Deprecated
    {class} procedure logStackTrace(P1: JThrowable); cdecl;//Deprecated
    {class} procedure trace(P1: JString); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/CliSiTefI$1')]
  JCliSiTefI_1 = interface(JPinPadCtrlLogger)
    ['{2A6F661A-1D45-422C-9929-40F028D54C25}']
  end;
  TJCliSiTefI_1 = class(TJavaGenericImport<JCliSiTefI_1Class, JCliSiTefI_1>) end;

  JCliSiTefI_2Class = interface(JRunnableClass)
    ['{2003B11F-2765-46D4-B5A4-DE29F70A7AB0}']
    {class} function _Getthis: JCliSiTefI; cdecl;
    {class} function init(P1: JCliSiTefI; P2: JString): JCliSiTefI_2; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
    {class} property this: JCliSiTefI read _Getthis;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/CliSiTefI$2')]
  JCliSiTefI_2 = interface(JRunnable)
    ['{3ECE7E9D-B5C7-41F6-8642-F05E0F761D20}']
  end;
  TJCliSiTefI_2 = class(TJavaGenericImport<JCliSiTefI_2Class, JCliSiTefI_2>) end;

  JCliSiTefI_INIFileClass = interface(JObjectClass)
    ['{C39CAEE5-C9BC-45AA-8BD8-AB2DA64D870A}']
    {class} function getValue(P1: JString; P2: JString; P3: JString): JString; cdecl;//Deprecated
    {class} function init(P1: JCliSiTefI; P2: JContext): JCliSiTefI_INIFile; cdecl;//Deprecated
    {class} procedure readFromFile(P1: JString); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/CliSiTefI$INIFile')]
  JCliSiTefI_INIFile = interface(JObject)
    ['{26243638-03BE-4B59-A946-C6A43D5BFBB6}']
  end;
  TJCliSiTefI_INIFile = class(TJavaGenericImport<JCliSiTefI_INIFileClass, JCliSiTefI_INIFile>) end;

  JFuncoesInternasClass = interface(JObjectClass)
    ['{B6EF476D-1A01-4B99-ACA1-230BC71028D5}']
    {class} function abortTransaction(P1: Integer): Integer; cdecl;//Deprecated
    {class} function continueTransaction(P1: JString): Integer; cdecl;//Deprecated
    {class} function getListener: JICliSiTefListener; cdecl;//Deprecated
    {class} function init(P1: JCliSiTefI; P2: JICliSiTefListener): JFuncoesInternas; cdecl;//Deprecated
    {class} function processoIterativo(P1: Integer; P2: Integer): Integer; cdecl;//Deprecated
    {class} procedure setListener(P1: JICliSiTefListener); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/FuncoesInternas')]
  JFuncoesInternas = interface(JObject)
    ['{393D9630-66DF-4AFB-9C75-6300F8CAF906}']
  end;
  TJFuncoesInternas = class(TJavaGenericImport<JFuncoesInternasClass, JFuncoesInternas>) end;

  JFuncoesInternas_1Class = interface(JThreadClass)
    ['{8A814FBE-F52B-4A4F-B709-7D251888E634}']
    {class} function init(P1: JFuncoesInternas): JFuncoesInternas_1; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/FuncoesInternas$1')]
  JFuncoesInternas_1 = interface(JThread)
    ['{6DF053CA-D5F2-4839-8131-DC65D72FD08B}']
  end;
  TJFuncoesInternas_1 = class(TJavaGenericImport<JFuncoesInternas_1Class, JFuncoesInternas_1>) end;

  J1_1Class = interface(JRunnableClass)
    ['{72D51180-BA24-4D76-BA44-F650D81FEB64}']
    {class} function init(P1: JFuncoesInternas_1): J1_1; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/FuncoesInternas$1$1')]
  J1_1 = interface(JRunnable)
    ['{E0902F91-5F52-4399-86DB-1EE9F9FE8022}']
  end;
  TJ1_1 = class(TJavaGenericImport<J1_1Class, J1_1>) end;

  J1_2Class = interface(JRunnableClass)
    ['{C4D7B54C-AB02-4F57-9545-D39D98CF9DD2}']
    {class} function init(P1: JFuncoesInternas_1): J1_2; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/FuncoesInternas$1$2')]
  J1_2 = interface(JRunnable)
    ['{6A8E3AD5-0641-4D59-B167-62DE64A35E9B}']
  end;
  TJ1_2 = class(TJavaGenericImport<J1_2Class, J1_2>) end;

  JGerComunicacaoClass = interface(JObjectClass)
    ['{92E858A5-696F-4633-9115-B09253B416D9}']
    {class} function conecta: Integer; cdecl;//Deprecated
    {class} function desconecta: Integer; cdecl;//Deprecated
    {class} function enviaRecebeMensagem: Integer; cdecl;//Deprecated
    {class} function init(P1: JJCliSiTefI; P2: JContext): JGerComunicacao; cdecl;//Deprecated
    {class} procedure setIP(P1: JString); cdecl;//Deprecated
    {class} procedure setParametros(P1: JString; P2: JString); cdecl;//Deprecated
    {class} procedure setPorta(P1: Integer); cdecl;//Deprecated
    {class} procedure setTipoComunicacao(P1: JString); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/GerComunicacao')]
  JGerComunicacao = interface(JObject)
    ['{4CB3886A-3FA0-481F-ADBF-A447166C83E7}']
  end;
  TJGerComunicacao = class(TJavaGenericImport<JGerComunicacaoClass, JGerComunicacao>) end;

  JEventListenerClass = interface(IJavaClass)
    ['{48BD1D07-BCE3-4F68-982B-617B523C7116}']
  end;

  [JavaSignature('java/util/EventListener')]
  JEventListener = interface(IJavaInstance)
    ['{D9ADB67A-5217-4762-9961-710BF18CAD39}']
  end;
  TJEventListener = class(TJavaGenericImport<JEventListenerClass, JEventListener>) end;

  JICliSiTefListenerClass = interface(JEventListenerClass)
    ['{1464638E-41E9-4DF9-9F26-47F2B0C4A456}']
    {class} procedure onData(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: TJavaArray<Byte>); cdecl;//Deprecated
    {class} procedure onTransactionResult(P1: Integer; P2: Integer); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/ICliSiTefListener')]
  JICliSiTefListener = interface(JEventListener)
    ['{37FF542E-635D-42D1-9631-3C2F6A7445AC}']
  end;
  TJICliSiTefListener = class(TJavaGenericImport<JICliSiTefListenerClass, JICliSiTefListener>) end;

  JIComunicacaoExternaClass = interface(IJavaClass)
    ['{D6CC308D-3300-4F82-B875-9A24EC2477C9}']
    {class} function conecta(P1: JString; P2: Integer; P3: JParametros): Integer; cdecl;//Deprecated
    {class} function desconecta: Integer; cdecl;//Deprecated
    {class} function envia(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
    {class} function recebe(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/IComunicacaoExterna')]
  JIComunicacaoExterna = interface(IJavaInstance)
    ['{3470EE74-A1F2-4333-93CF-231C01F5D15B}']
  end;
  TJIComunicacaoExterna = class(TJavaGenericImport<JIComunicacaoExternaClass, JIComunicacaoExterna>) end;

  JIPinPadDriverClass = interface(IJavaClass)
    ['{F32DAD38-3141-4602-A9F9-A6B9902D0D53}']
    {class} function _GetPINPAD_TIPO_APOS: Integer; cdecl;
    {class} function _GetPINPAD_TIPO_AUTO: Integer; cdecl;
    {class} function _GetPINPAD_TIPO_BLUETOOTH: Integer; cdecl;
    {class} function _GetPINPAD_TIPO_NENHUM: Integer; cdecl;
    {class} function _GetPINPAD_TIPO_USB: Integer; cdecl;
    {class} function _GetTIPO_CONEXAO_APOS: Integer; cdecl;
    {class} function _GetTIPO_CONEXAO_BLUETOOTH: Integer; cdecl;
    {class} function _GetTIPO_CONEXAO_NENHUM: Integer; cdecl;
    {class} function _GetTIPO_CONEXAO_SERIAL_USB: Integer; cdecl;
    {class} procedure flush; cdecl;//Deprecated
    {class} function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
    {class} function start: Boolean; cdecl;//Deprecated
    {class} procedure terminate; cdecl;//Deprecated
    {class} function write(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;//Deprecated
    {class} property PINPAD_TIPO_APOS: Integer read _GetPINPAD_TIPO_APOS;
    {class} property PINPAD_TIPO_AUTO: Integer read _GetPINPAD_TIPO_AUTO;
    {class} property PINPAD_TIPO_BLUETOOTH: Integer read _GetPINPAD_TIPO_BLUETOOTH;
    {class} property PINPAD_TIPO_NENHUM: Integer read _GetPINPAD_TIPO_NENHUM;
    {class} property PINPAD_TIPO_USB: Integer read _GetPINPAD_TIPO_USB;
    {class} property TIPO_CONEXAO_APOS: Integer read _GetTIPO_CONEXAO_APOS;
    {class} property TIPO_CONEXAO_BLUETOOTH: Integer read _GetTIPO_CONEXAO_BLUETOOTH;
    {class} property TIPO_CONEXAO_NENHUM: Integer read _GetTIPO_CONEXAO_NENHUM;
    {class} property TIPO_CONEXAO_SERIAL_USB: Integer read _GetTIPO_CONEXAO_SERIAL_USB;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/IPinPadDriver')]
  JIPinPadDriver = interface(IJavaInstance)
    ['{1FE91AB5-A2B2-4958-A242-D073B93D3C1B}']
  end;
  TJIPinPadDriver = class(TJavaGenericImport<JIPinPadDriverClass, JIPinPadDriver>) end;

  JIBarcodeClass = interface(IJavaClass)
    ['{77BBB1C9-5CCD-4038-AE21-36693613C636}']
    {class} function getBarcodeType: Integer; cdecl;//Deprecated
    {class} function validate(P1: JString): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/modules/IBarcode')]
  JIBarcode = interface(IJavaInstance)
    ['{406CBEB6-F83A-49BF-A902-5FCFC83A9356}']
  end;
  TJIBarcode = class(TJavaGenericImport<JIBarcodeClass, JIBarcode>) end;

  JModuleBarcodeClass = interface(JIBarcodeClass)
    ['{1590C514-9998-45E7-94AB-3C6A4F384693}']
    {class} function getBarcodeType: Integer; cdecl;//Deprecated
    {class} function init(P1: JCliSiTefI): JModuleBarcode; cdecl;//Deprecated
    {class} function validate(P1: JString): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/ModuleBarcode')]
  JModuleBarcode = interface(JIBarcode)
    ['{8DACDD0A-FDBD-4A7E-9192-E570619AEB9C}']
  end;
  TJModuleBarcode = class(TJavaGenericImport<JModuleBarcodeClass, JModuleBarcode>) end;

  JIPinPadClass = interface(IJavaClass)
    ['{0FFF6876-2A0D-44D9-BC35-1565F19A4F94}']
    {class} function _GetPINPAD_ALREADY_OPEN: Integer; cdecl;
    {class} function _GetPINPAD_BACKSPACE: Integer; cdecl;
    {class} function _GetPINPAD_BUSY: Integer; cdecl;
    {class} function _GetPINPAD_CANCEL: Integer; cdecl;
    {class} function _GetPINPAD_CARDNOTEFFECT: Integer; cdecl;
    {class} function _GetPINPAD_CARD_BLOCKED: Integer; cdecl;
    {class} function _GetPINPAD_CARD_EXPIRED: Integer; cdecl;
    {class} function _GetPINPAD_CARD_INVALID: Integer; cdecl;
    {class} function _GetPINPAD_CARD_INVALID_DATA: Integer; cdecl;
    {class} function _GetPINPAD_CARD_NOT_AUTHORIZED: Integer; cdecl;
    {class} function _GetPINPAD_CARD_PROBLEMS: Integer; cdecl;
    {class} function _GetPINPAD_COMMUNICATION_ERROR: Integer; cdecl;
    {class} function _GetPINPAD_DUMB_CARD: Integer; cdecl;
    {class} function _GetPINPAD_ERROR_FALLBACK: Integer; cdecl;
    {class} function _GetPINPAD_ERROR_PIN: Integer; cdecl;
    {class} function _GetPINPAD_EXEC_ERROR: Integer; cdecl;
    {class} function _GetPINPAD_F1: Integer; cdecl;
    {class} function _GetPINPAD_F2: Integer; cdecl;
    {class} function _GetPINPAD_F3: Integer; cdecl;
    {class} function _GetPINPAD_F4: Integer; cdecl;
    {class} function _GetPINPAD_INVALID_CALL: Integer; cdecl;
    {class} function _GetPINPAD_INVALID_MODEL: Integer; cdecl;
    {class} function _GetPINPAD_INVALID_PARAMETER: Integer; cdecl;
    {class} function _GetPINPAD_LIMIT_EXCEEDED: Integer; cdecl;
    {class} function _GetPINPAD_NOTIFY: Integer; cdecl;
    {class} function _GetPINPAD_NOT_OPEN: Integer; cdecl;
    {class} function _GetPINPAD_NO_APPLICATION: Integer; cdecl;
    {class} function _GetPINPAD_NO_BALANCE: Integer; cdecl;
    {class} function _GetPINPAD_NO_CARD: Integer; cdecl;
    {class} function _GetPINPAD_NO_FUNCTION: Integer; cdecl;
    {class} function _GetPINPAD_NO_SAM: Integer; cdecl;
    {class} function _GetPINPAD_OK: Integer; cdecl;
    {class} function _GetPINPAD_PORT_ERROR: Integer; cdecl;
    {class} function _GetPINPAD_PROCESSING: Integer; cdecl;
    {class} function _GetPINPAD_SAM_ERROR: Integer; cdecl;
    {class} function _GetPINPAD_SAM_INVALID: Integer; cdecl;
    {class} function _GetPINPAD_TABLE_ERROR: Integer; cdecl;
    {class} function _GetPINPAD_TABLE_EXPIRED: Integer; cdecl;
    {class} function _GetPINPAD_TIMEOUT: Integer; cdecl;
    {class} function _GetPINPAD_UNKNOWN_STAT: Integer; cdecl;
    {class} function _GetPINPAD_VCINVCURR: Integer; cdecl;
    {class} function isPresent: Boolean; cdecl;//Deprecated
    {class} function readYesNo(P1: JString): Integer; cdecl;//Deprecated
    {class} function setDisplayMessage(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function setDisplayMessage(P1: JString; P2: Boolean): Integer; cdecl; overload;//Deprecated
    {class} property PINPAD_ALREADY_OPEN: Integer read _GetPINPAD_ALREADY_OPEN;
    {class} property PINPAD_BACKSPACE: Integer read _GetPINPAD_BACKSPACE;
    {class} property PINPAD_BUSY: Integer read _GetPINPAD_BUSY;
    {class} property PINPAD_CANCEL: Integer read _GetPINPAD_CANCEL;
    {class} property PINPAD_CARDNOTEFFECT: Integer read _GetPINPAD_CARDNOTEFFECT;
    {class} property PINPAD_CARD_BLOCKED: Integer read _GetPINPAD_CARD_BLOCKED;
    {class} property PINPAD_CARD_EXPIRED: Integer read _GetPINPAD_CARD_EXPIRED;
    {class} property PINPAD_CARD_INVALID: Integer read _GetPINPAD_CARD_INVALID;
    {class} property PINPAD_CARD_INVALID_DATA: Integer read _GetPINPAD_CARD_INVALID_DATA;
    {class} property PINPAD_CARD_NOT_AUTHORIZED: Integer read _GetPINPAD_CARD_NOT_AUTHORIZED;
    {class} property PINPAD_CARD_PROBLEMS: Integer read _GetPINPAD_CARD_PROBLEMS;
    {class} property PINPAD_COMMUNICATION_ERROR: Integer read _GetPINPAD_COMMUNICATION_ERROR;
    {class} property PINPAD_DUMB_CARD: Integer read _GetPINPAD_DUMB_CARD;
    {class} property PINPAD_ERROR_FALLBACK: Integer read _GetPINPAD_ERROR_FALLBACK;
    {class} property PINPAD_ERROR_PIN: Integer read _GetPINPAD_ERROR_PIN;
    {class} property PINPAD_EXEC_ERROR: Integer read _GetPINPAD_EXEC_ERROR;
    {class} property PINPAD_F1: Integer read _GetPINPAD_F1;
    {class} property PINPAD_F2: Integer read _GetPINPAD_F2;
    {class} property PINPAD_F3: Integer read _GetPINPAD_F3;
    {class} property PINPAD_F4: Integer read _GetPINPAD_F4;
    {class} property PINPAD_INVALID_CALL: Integer read _GetPINPAD_INVALID_CALL;
    {class} property PINPAD_INVALID_MODEL: Integer read _GetPINPAD_INVALID_MODEL;
    {class} property PINPAD_INVALID_PARAMETER: Integer read _GetPINPAD_INVALID_PARAMETER;
    {class} property PINPAD_LIMIT_EXCEEDED: Integer read _GetPINPAD_LIMIT_EXCEEDED;
    {class} property PINPAD_NOTIFY: Integer read _GetPINPAD_NOTIFY;
    {class} property PINPAD_NOT_OPEN: Integer read _GetPINPAD_NOT_OPEN;
    {class} property PINPAD_NO_APPLICATION: Integer read _GetPINPAD_NO_APPLICATION;
    {class} property PINPAD_NO_BALANCE: Integer read _GetPINPAD_NO_BALANCE;
    {class} property PINPAD_NO_CARD: Integer read _GetPINPAD_NO_CARD;
    {class} property PINPAD_NO_FUNCTION: Integer read _GetPINPAD_NO_FUNCTION;
    {class} property PINPAD_NO_SAM: Integer read _GetPINPAD_NO_SAM;
    {class} property PINPAD_OK: Integer read _GetPINPAD_OK;
    {class} property PINPAD_PORT_ERROR: Integer read _GetPINPAD_PORT_ERROR;
    {class} property PINPAD_PROCESSING: Integer read _GetPINPAD_PROCESSING;
    {class} property PINPAD_SAM_ERROR: Integer read _GetPINPAD_SAM_ERROR;
    {class} property PINPAD_SAM_INVALID: Integer read _GetPINPAD_SAM_INVALID;
    {class} property PINPAD_TABLE_ERROR: Integer read _GetPINPAD_TABLE_ERROR;
    {class} property PINPAD_TABLE_EXPIRED: Integer read _GetPINPAD_TABLE_EXPIRED;
    {class} property PINPAD_TIMEOUT: Integer read _GetPINPAD_TIMEOUT;
    {class} property PINPAD_UNKNOWN_STAT: Integer read _GetPINPAD_UNKNOWN_STAT;
    {class} property PINPAD_VCINVCURR: Integer read _GetPINPAD_VCINVCURR;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/modules/IPinPad')]
  JIPinPad = interface(IJavaInstance)
    ['{C054184F-B94E-4F3F-8524-EE64BF4F3DB0}']
  end;
  TJIPinPad = class(TJavaGenericImport<JIPinPadClass, JIPinPad>) end;

  JModulePinPadClass = interface(JIPinPadClass)
    ['{E2DCCB48-A58E-480A-AFC4-42116EABF90B}']
    {class} function init(P1: JCliSiTefI): JModulePinPad; cdecl;//Deprecated
    {class} function isPresent: Boolean; cdecl;//Deprecated
    {class} function readYesNo(P1: JString): Integer; cdecl;//Deprecated
    {class} function setDisplayMessage(P1: JString): Integer; cdecl; overload;//Deprecated
    {class} function setDisplayMessage(P1: JString; P2: Boolean): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/ModulePinPad')]
  JModulePinPad = interface(JIPinPad)
    ['{573C7D5E-7208-4C62-B992-F5EC84685933}']
  end;
  TJModulePinPad = class(TJavaGenericImport<JModulePinPadClass, JModulePinPad>) end;

  JPPDisplayLoggerClass = interface(IJavaClass)
    ['{E52EC32E-4E9A-43B9-A18B-AD495257CADD}']
    {class} procedure showText(P1: JSpannable); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PPDisplayLogger')]
  JPPDisplayLogger = interface(IJavaInstance)
    ['{A6A78E6A-A681-42AD-8D5A-4C09CDF470C4}']
  end;
  TJPPDisplayLogger = class(TJavaGenericImport<JPPDisplayLoggerClass, JPPDisplayLogger>) end;

  JParametrosClass = interface(JObjectClass)
    ['{FDFD4B4A-E2F2-423E-AFAA-30D83F8695A3}']
    {class} function getParametro(P1: JString): JString; cdecl;//Deprecated
    {class} function setParametro(P1: JString; P2: JObject): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/Parametros')]
  JParametros = interface(JObject)
    ['{D66E80B8-3DB3-42FE-8310-0D1164A39188}']
  end;
  TJParametros = class(TJavaGenericImport<JParametrosClass, JParametros>) end;

  JPinPadCtrlClass = interface(JObjectClass)
    ['{3A825CAD-EC85-4753-8E99-890B9D7DC32E}']
    {class} function _GetPPCOMP_ALREADYOPEN: Integer; cdecl;
    {class} function _GetPPCOMP_BACKSP: Integer; cdecl;
    {class} function _GetPPCOMP_CANCEL: Integer; cdecl;
    {class} function _GetPPCOMP_CARDAPPNAUT: Integer; cdecl;
    {class} function _GetPPCOMP_CARDAPPNAV: Integer; cdecl;
    {class} function _GetPPCOMP_CARDBLOCKED: Integer; cdecl;
    {class} function _GetPPCOMP_CARDERRSTRUCT: Integer; cdecl;
    {class} function _GetPPCOMP_CARDEXPIRED: Integer; cdecl;
    {class} function _GetPPCOMP_CARDINV: Integer; cdecl;
    {class} function _GetPPCOMP_CARDINVALIDAT: Integer; cdecl;
    {class} function _GetPPCOMP_CARDINVDATA: Integer; cdecl;
    {class} function _GetPPCOMP_CARDNAUTH: Integer; cdecl;
    {class} function _GetPPCOMP_CARDNOTEFFECT: Integer; cdecl;
    {class} function _GetPPCOMP_CARDPROBLEMS: Integer; cdecl;
    {class} function _GetPPCOMP_COMMERR: Integer; cdecl;
    {class} function _GetPPCOMP_COMMTOUT: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSAPPNAUT: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSAPPNAV: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSCOMMERR: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSINVALIDAT: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSMULTIPLE: Integer; cdecl;
    {class} function _GetPPCOMP_CTLSSPROBLEMS: Integer; cdecl;
    {class} function _GetPPCOMP_DATANOTFOUND: Integer; cdecl;
    {class} function _GetPPCOMP_DUMBCARD: Integer; cdecl;
    {class} function _GetPPCOMP_ERR: Integer; cdecl;
    {class} function _GetPPCOMP_ERRCARD: Integer; cdecl;
    {class} function _GetPPCOMP_ERRFALLBACK: Integer; cdecl;
    {class} function _GetPPCOMP_ERRMANDAT: Integer; cdecl;
    {class} function _GetPPCOMP_ERRMAXAID: Integer; cdecl;
    {class} function _GetPPCOMP_ERRPIN: Integer; cdecl;
    {class} function _GetPPCOMP_ERRPKTSEC: Integer; cdecl;
    {class} function _GetPPCOMP_EXECERR: Integer; cdecl;
    {class} function _GetPPCOMP_F1: Integer; cdecl;
    {class} function _GetPPCOMP_F2: Integer; cdecl;
    {class} function _GetPPCOMP_F3: Integer; cdecl;
    {class} function _GetPPCOMP_F4: Integer; cdecl;
    {class} function _GetPPCOMP_INTERR: Integer; cdecl;
    {class} function _GetPPCOMP_INVAMOUNT: Integer; cdecl;
    {class} function _GetPPCOMP_INVCALL: Integer; cdecl;
    {class} function _GetPPCOMP_INVMODEL: Integer; cdecl;
    {class} function _GetPPCOMP_INVPARM: Integer; cdecl;
    {class} function _GetPPCOMP_JNIERR: Integer; cdecl;
    {class} function _GetPPCOMP_LIMITEXC: Integer; cdecl;
    {class} function _GetPPCOMP_MCDATAERR: Integer; cdecl;
    {class} function _GetPPCOMP_MFERR: Integer; cdecl;
    {class} function _GetPPCOMP_MFERRFMT: Integer; cdecl;
    {class} function _GetPPCOMP_MFNFOUND: Integer; cdecl;
    {class} function _GetPPCOMP_NOAPPLIC: Integer; cdecl;
    {class} function _GetPPCOMP_NOBALANCE: Integer; cdecl;
    {class} function _GetPPCOMP_NOCARD: Integer; cdecl;
    {class} function _GetPPCOMP_NOFUNC: Integer; cdecl;
    {class} function _GetPPCOMP_NOSAM: Integer; cdecl;
    {class} function _GetPPCOMP_NOSEC: Integer; cdecl;
    {class} function _GetPPCOMP_NOTIFY: Integer; cdecl;
    {class} function _GetPPCOMP_NOTOPEN: Integer; cdecl;
    {class} function _GetPPCOMP_OK: Integer; cdecl;
    {class} function _GetPPCOMP_PARAMNULLERR: Integer; cdecl;
    {class} function _GetPPCOMP_PINBUSY: Integer; cdecl;
    {class} function _GetPPCOMP_PORTERR: Integer; cdecl;
    {class} function _GetPPCOMP_PROCESSING: Integer; cdecl;
    {class} function _GetPPCOMP_RSPERR: Integer; cdecl;
    {class} function _GetPPCOMP_RSPOVRFL: Integer; cdecl;
    {class} function _GetPPCOMP_SAMERR: Integer; cdecl;
    {class} function _GetPPCOMP_SAMINV: Integer; cdecl;
    {class} function _GetPPCOMP_TABERR: Integer; cdecl;
    {class} function _GetPPCOMP_TABEXP: Integer; cdecl;
    {class} function _GetPPCOMP_TIMEOUT: Integer; cdecl;
    {class} function _GetPPCOMP_UNKNOWNSTAT: Integer; cdecl;
    {class} function _GetPPCOMP_VCINVCURR: Integer; cdecl;
    {class} function _GetSERIAL_ACK06: Byte; cdecl;
    {class} function _GetSERIAL_CAN18: Byte; cdecl;
    {class} function _GetSERIAL_ETB17: Byte; cdecl;
    {class} function _GetSERIAL_NAK15: Byte; cdecl;
    {class} function _GetSERIAL_SYN16: Byte; cdecl;
    {class} function _GetmsgBuffer: JString; cdecl;
    {class} procedure _SetmsgBuffer(Value: JString); cdecl;
    {class} function AscToBcd(P1: JString): TJavaArray<Byte>; cdecl;//Deprecated
    {class} function BcdToAsc(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): JString; cdecl;//Deprecated
    {class} function PPAborta: Integer; cdecl;//Deprecated
    {class} function PPConecta: Integer; cdecl;//Deprecated
    {class} function PPDesconecta(P1: Boolean): Integer; cdecl;//Deprecated
    {class} function PPEnvia(P1: JString): Integer; cdecl;//Deprecated
    {class} function PPRecebe: Integer; cdecl;//Deprecated
    {class} function crc16(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): SmallInt; cdecl;//Deprecated
    {class} function getActivity: JActivity; cdecl;//Deprecated
    {class} function getEndereco: JString; cdecl;//Deprecated
    {class} function getMsgBuffer: JString; cdecl;//Deprecated
    {class} function getTipoConexao: Integer; cdecl;//Deprecated
    {class} function init(P1: JContext; P2: JPinPadCtrlLogger): JPinPadCtrl; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JPinPadCtrlLogger; P3: JPPDisplayLogger): JPinPadCtrl; cdecl; overload;//Deprecated
    {class} procedure log(P1: JString); cdecl;//Deprecated
    {class} procedure logException(P1: JThrowable); cdecl; overload;//Deprecated
    {class} procedure logException(P1: JString; P2: JThrowable); cdecl; overload;//Deprecated
    {class} procedure sendMessage(P1: Integer); cdecl;//Deprecated
    {class} procedure setActivity(P1: JActivity); cdecl;//Deprecated
    {class} procedure setEndereco(P1: JString); cdecl;//Deprecated
    {class} procedure setMessageHandler(P1: JHandler); cdecl;//Deprecated
    {class} procedure setTipoPinPad(P1: Integer); cdecl;//Deprecated
    {class} property PPCOMP_ALREADYOPEN: Integer read _GetPPCOMP_ALREADYOPEN;
    {class} property PPCOMP_BACKSP: Integer read _GetPPCOMP_BACKSP;
    {class} property PPCOMP_CANCEL: Integer read _GetPPCOMP_CANCEL;
    {class} property PPCOMP_CARDAPPNAUT: Integer read _GetPPCOMP_CARDAPPNAUT;
    {class} property PPCOMP_CARDAPPNAV: Integer read _GetPPCOMP_CARDAPPNAV;
    {class} property PPCOMP_CARDBLOCKED: Integer read _GetPPCOMP_CARDBLOCKED;
    {class} property PPCOMP_CARDERRSTRUCT: Integer read _GetPPCOMP_CARDERRSTRUCT;
    {class} property PPCOMP_CARDEXPIRED: Integer read _GetPPCOMP_CARDEXPIRED;
    {class} property PPCOMP_CARDINV: Integer read _GetPPCOMP_CARDINV;
    {class} property PPCOMP_CARDINVALIDAT: Integer read _GetPPCOMP_CARDINVALIDAT;
    {class} property PPCOMP_CARDINVDATA: Integer read _GetPPCOMP_CARDINVDATA;
    {class} property PPCOMP_CARDNAUTH: Integer read _GetPPCOMP_CARDNAUTH;
    {class} property PPCOMP_CARDNOTEFFECT: Integer read _GetPPCOMP_CARDNOTEFFECT;
    {class} property PPCOMP_CARDPROBLEMS: Integer read _GetPPCOMP_CARDPROBLEMS;
    {class} property PPCOMP_COMMERR: Integer read _GetPPCOMP_COMMERR;
    {class} property PPCOMP_COMMTOUT: Integer read _GetPPCOMP_COMMTOUT;
    {class} property PPCOMP_CTLSSAPPNAUT: Integer read _GetPPCOMP_CTLSSAPPNAUT;
    {class} property PPCOMP_CTLSSAPPNAV: Integer read _GetPPCOMP_CTLSSAPPNAV;
    {class} property PPCOMP_CTLSSCOMMERR: Integer read _GetPPCOMP_CTLSSCOMMERR;
    {class} property PPCOMP_CTLSSINVALIDAT: Integer read _GetPPCOMP_CTLSSINVALIDAT;
    {class} property PPCOMP_CTLSSMULTIPLE: Integer read _GetPPCOMP_CTLSSMULTIPLE;
    {class} property PPCOMP_CTLSSPROBLEMS: Integer read _GetPPCOMP_CTLSSPROBLEMS;
    {class} property PPCOMP_DATANOTFOUND: Integer read _GetPPCOMP_DATANOTFOUND;
    {class} property PPCOMP_DUMBCARD: Integer read _GetPPCOMP_DUMBCARD;
    {class} property PPCOMP_ERR: Integer read _GetPPCOMP_ERR;
    {class} property PPCOMP_ERRCARD: Integer read _GetPPCOMP_ERRCARD;
    {class} property PPCOMP_ERRFALLBACK: Integer read _GetPPCOMP_ERRFALLBACK;
    {class} property PPCOMP_ERRMANDAT: Integer read _GetPPCOMP_ERRMANDAT;
    {class} property PPCOMP_ERRMAXAID: Integer read _GetPPCOMP_ERRMAXAID;
    {class} property PPCOMP_ERRPIN: Integer read _GetPPCOMP_ERRPIN;
    {class} property PPCOMP_ERRPKTSEC: Integer read _GetPPCOMP_ERRPKTSEC;
    {class} property PPCOMP_EXECERR: Integer read _GetPPCOMP_EXECERR;
    {class} property PPCOMP_F1: Integer read _GetPPCOMP_F1;
    {class} property PPCOMP_F2: Integer read _GetPPCOMP_F2;
    {class} property PPCOMP_F3: Integer read _GetPPCOMP_F3;
    {class} property PPCOMP_F4: Integer read _GetPPCOMP_F4;
    {class} property PPCOMP_INTERR: Integer read _GetPPCOMP_INTERR;
    {class} property PPCOMP_INVAMOUNT: Integer read _GetPPCOMP_INVAMOUNT;
    {class} property PPCOMP_INVCALL: Integer read _GetPPCOMP_INVCALL;
    {class} property PPCOMP_INVMODEL: Integer read _GetPPCOMP_INVMODEL;
    {class} property PPCOMP_INVPARM: Integer read _GetPPCOMP_INVPARM;
    {class} property PPCOMP_JNIERR: Integer read _GetPPCOMP_JNIERR;
    {class} property PPCOMP_LIMITEXC: Integer read _GetPPCOMP_LIMITEXC;
    {class} property PPCOMP_MCDATAERR: Integer read _GetPPCOMP_MCDATAERR;
    {class} property PPCOMP_MFERR: Integer read _GetPPCOMP_MFERR;
    {class} property PPCOMP_MFERRFMT: Integer read _GetPPCOMP_MFERRFMT;
    {class} property PPCOMP_MFNFOUND: Integer read _GetPPCOMP_MFNFOUND;
    {class} property PPCOMP_NOAPPLIC: Integer read _GetPPCOMP_NOAPPLIC;
    {class} property PPCOMP_NOBALANCE: Integer read _GetPPCOMP_NOBALANCE;
    {class} property PPCOMP_NOCARD: Integer read _GetPPCOMP_NOCARD;
    {class} property PPCOMP_NOFUNC: Integer read _GetPPCOMP_NOFUNC;
    {class} property PPCOMP_NOSAM: Integer read _GetPPCOMP_NOSAM;
    {class} property PPCOMP_NOSEC: Integer read _GetPPCOMP_NOSEC;
    {class} property PPCOMP_NOTIFY: Integer read _GetPPCOMP_NOTIFY;
    {class} property PPCOMP_NOTOPEN: Integer read _GetPPCOMP_NOTOPEN;
    {class} property PPCOMP_OK: Integer read _GetPPCOMP_OK;
    {class} property PPCOMP_PARAMNULLERR: Integer read _GetPPCOMP_PARAMNULLERR;
    {class} property PPCOMP_PINBUSY: Integer read _GetPPCOMP_PINBUSY;
    {class} property PPCOMP_PORTERR: Integer read _GetPPCOMP_PORTERR;
    {class} property PPCOMP_PROCESSING: Integer read _GetPPCOMP_PROCESSING;
    {class} property PPCOMP_RSPERR: Integer read _GetPPCOMP_RSPERR;
    {class} property PPCOMP_RSPOVRFL: Integer read _GetPPCOMP_RSPOVRFL;
    {class} property PPCOMP_SAMERR: Integer read _GetPPCOMP_SAMERR;
    {class} property PPCOMP_SAMINV: Integer read _GetPPCOMP_SAMINV;
    {class} property PPCOMP_TABERR: Integer read _GetPPCOMP_TABERR;
    {class} property PPCOMP_TABEXP: Integer read _GetPPCOMP_TABEXP;
    {class} property PPCOMP_TIMEOUT: Integer read _GetPPCOMP_TIMEOUT;
    {class} property PPCOMP_UNKNOWNSTAT: Integer read _GetPPCOMP_UNKNOWNSTAT;
    {class} property PPCOMP_VCINVCURR: Integer read _GetPPCOMP_VCINVCURR;
    {class} property SERIAL_ACK06: Byte read _GetSERIAL_ACK06;
    {class} property SERIAL_CAN18: Byte read _GetSERIAL_CAN18;
    {class} property SERIAL_ETB17: Byte read _GetSERIAL_ETB17;
    {class} property SERIAL_NAK15: Byte read _GetSERIAL_NAK15;
    {class} property SERIAL_SYN16: Byte read _GetSERIAL_SYN16;
    {class} property msgBuffer: JString read _GetmsgBuffer write _SetmsgBuffer;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadCtrl')]
  JPinPadCtrl = interface(JObject)
    ['{55043264-0D6A-432B-84CC-A4FF5C7B6CCD}']
  end;
  TJPinPadCtrl = class(TJavaGenericImport<JPinPadCtrlClass, JPinPadCtrl>) end;

  JPinPadDriverAposClass = interface(JIPinPadDriverClass)
    ['{3253B9BF-4894-4EFC-B89C-9A2FD4003E1B}']
    {class} procedure flush; cdecl;//Deprecated
    {class} function init(P1: JActivity; P2: JPPDisplayLogger): JPinPadDriverApos; cdecl;//Deprecated
    {class} function isImplemented: Boolean; cdecl;//Deprecated
    {class} function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
    {class} function start: Boolean; cdecl;//Deprecated
    {class} procedure terminate; cdecl;//Deprecated
    {class} function write(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverApos')]
  JPinPadDriverApos = interface(JIPinPadDriver)
    ['{3AE04727-8465-45DA-97CF-DE2B1E5C0A4B}']
  end;
  TJPinPadDriverApos = class(TJavaGenericImport<JPinPadDriverAposClass, JPinPadDriverApos>) end;

  JPinPadDriverBTClass = interface(JIPinPadDriverClass)
    ['{5AD0227E-1A69-4ADE-8312-94C13999F156}']
    {class} function _GetOPERACAO_ESCRITA: Integer; cdecl;
    {class} function _GetOPERACAO_FLUSH: Integer; cdecl;
    {class} function _GetOPERACAO_LEITURA: Integer; cdecl;
    {class} function _GetOPERACAO_TERMINA_THREAD: Integer; cdecl;
    {class} procedure flush; cdecl;//Deprecated
    {class} function init(P1: JContext; P2: JPinPadCtrl; P3: JBluetoothAdapter): JPinPadDriverBT; cdecl;//Deprecated
    {class} function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
    {class} function start: Boolean; cdecl;//Deprecated
    {class} procedure terminate; cdecl;//Deprecated
    {class} function write(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;//Deprecated
    {class} property OPERACAO_ESCRITA: Integer read _GetOPERACAO_ESCRITA;
    {class} property OPERACAO_FLUSH: Integer read _GetOPERACAO_FLUSH;
    {class} property OPERACAO_LEITURA: Integer read _GetOPERACAO_LEITURA;
    {class} property OPERACAO_TERMINA_THREAD: Integer read _GetOPERACAO_TERMINA_THREAD;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT')]
  JPinPadDriverBT = interface(JIPinPadDriver)
    ['{EDA97EA6-4CBE-445D-997C-2E2B9117AF9A}']
  end;
  TJPinPadDriverBT = class(TJavaGenericImport<JPinPadDriverBTClass, JPinPadDriverBT>) end;

  JPinPadDriverBT_BluetoothSocketWrapperClass = interface(IJavaClass)
    ['{8397A45B-0595-44B7-9714-F35909371746}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure connect; cdecl;//Deprecated
    {class} function getInputStream: JInputStream; cdecl;//Deprecated
    {class} function getOutputStream: JOutputStream; cdecl;//Deprecated
    {class} function getRemoteDeviceAddress: JString; cdecl;//Deprecated
    {class} function getRemoteDeviceName: JString; cdecl;//Deprecated
    {class} function getUnderlyingSocket: JBluetoothSocket; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$BluetoothSocketWrapper')]
  JPinPadDriverBT_BluetoothSocketWrapper = interface(IJavaInstance)
    ['{4D8A4C89-2202-4993-8520-B5AF4DEE27FB}']
  end;
  TJPinPadDriverBT_BluetoothSocketWrapper = class(TJavaGenericImport<JPinPadDriverBT_BluetoothSocketWrapperClass, JPinPadDriverBT_BluetoothSocketWrapper>) end;

  JPinPadDriverBT_DriverClass = interface(JThreadClass)
    ['{EC5E3B2A-908D-428F-B6EE-EE8D44B6317D}']
    {class} function _Getconnected: Boolean; cdecl;
    {class} procedure _Setconnected(Value: Boolean); cdecl;
    {class} function _GetenableRecovery: Boolean; cdecl;
    {class} procedure _SetenableRecovery(Value: Boolean); cdecl;
    {class} function _Getesperados: Integer; cdecl;
    {class} procedure _Setesperados(Value: Integer); cdecl;
    {class} function _Getinput: TJavaArray<Byte>; cdecl;
    {class} procedure _Setinput(Value: TJavaArray<Byte>); cdecl;
    {class} function _Getoperacao: Integer; cdecl;
    {class} procedure _Setoperacao(Value: Integer); cdecl;
    {class} function _Getoutput: JStringBuffer; cdecl;
    {class} procedure _Setoutput(Value: JStringBuffer); cdecl;
    {class} function _Getrunning: Boolean; cdecl;
    {class} procedure _Setrunning(Value: Boolean); cdecl;
    {class} function _Getthis: JPinPadDriverBT; cdecl;
    {class} function _Gettimeout: Integer; cdecl;
    {class} procedure _Settimeout(Value: Integer); cdecl;
    {class} function _Getwritten: Integer; cdecl;
    {class} procedure _Setwritten(Value: Integer); cdecl;
    {class} function init(P1: JPinPadDriverBT; P2: JContext; P3: JBluetoothAdapter): JPinPadDriverBT_Driver; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
    {class} property connected: Boolean read _Getconnected write _Setconnected;
    {class} property enableRecovery: Boolean read _GetenableRecovery write _SetenableRecovery;
    {class} property esperados: Integer read _Getesperados write _Setesperados;
    {class} property input: TJavaArray<Byte> read _Getinput write _Setinput;
    {class} property operacao: Integer read _Getoperacao write _Setoperacao;
    {class} property output: JStringBuffer read _Getoutput write _Setoutput;
    {class} property running: Boolean read _Getrunning write _Setrunning;
    {class} property this: JPinPadDriverBT read _Getthis;
    {class} property timeout: Integer read _Gettimeout write _Settimeout;
    {class} property written: Integer read _Getwritten write _Setwritten;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$Driver')]
  JPinPadDriverBT_Driver = interface(JThread)
    ['{6BC28602-30B0-4BC8-B143-21000F346A56}']
  end;
  TJPinPadDriverBT_Driver = class(TJavaGenericImport<JPinPadDriverBT_DriverClass, JPinPadDriverBT_Driver>) end;

  JDriver_1Class = interface(JBroadcastReceiverClass)
    ['{3FF37369-55BF-4BB2-B3E6-168960E98494}']
    {class} function init(P1: JPinPadDriverBT_Driver): JDriver_1; cdecl;//Deprecated
    {class} procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$Driver$1')]
  JDriver_1 = interface(JBroadcastReceiver)
    ['{98015909-1F22-4442-922F-8EBFADA8A7CA}']
  end;
  TJDriver_1 = class(TJavaGenericImport<JDriver_1Class, JDriver_1>) end;

  JPinPadDriverBT_NativeBluetoothSocketClass = interface(JPinPadDriverBT_BluetoothSocketWrapperClass)
    ['{CDC45AA1-E488-439B-A0B4-59A5346A3E56}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure connect; cdecl;//Deprecated
    {class} function getInputStream: JInputStream; cdecl;//Deprecated
    {class} function getOutputStream: JOutputStream; cdecl;//Deprecated
    {class} function getRemoteDeviceAddress: JString; cdecl;//Deprecated
    {class} function getRemoteDeviceName: JString; cdecl;//Deprecated
    {class} function getUnderlyingSocket: JBluetoothSocket; cdecl;//Deprecated
    {class} function init(P1: JBluetoothSocket): JPinPadDriverBT_NativeBluetoothSocket; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$NativeBluetoothSocket')]
  JPinPadDriverBT_NativeBluetoothSocket = interface(JPinPadDriverBT_BluetoothSocketWrapper)
    ['{73573A94-29FC-472A-B6C0-070AD9C62F3E}']
  end;
  TJPinPadDriverBT_NativeBluetoothSocket = class(TJavaGenericImport<JPinPadDriverBT_NativeBluetoothSocketClass, JPinPadDriverBT_NativeBluetoothSocket>) end;

  JPinPadDriverBT_FallbackBluetoothSocketClass = interface(JPinPadDriverBT_NativeBluetoothSocketClass)
    ['{CE44C046-496F-40BD-AF1B-A504106F56DE}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure connect; cdecl;//Deprecated
    {class} function getInputStream: JInputStream; cdecl;//Deprecated
    {class} function getOutputStream: JOutputStream; cdecl;//Deprecated
    {class} function init(P1: JPinPadDriverBT; P2: JBluetoothSocket): JPinPadDriverBT_FallbackBluetoothSocket; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$FallbackBluetoothSocket')]
  JPinPadDriverBT_FallbackBluetoothSocket = interface(JPinPadDriverBT_NativeBluetoothSocket)
    ['{F618F318-83F0-43D2-9A24-8D166162CB09}']
  end;
  TJPinPadDriverBT_FallbackBluetoothSocket = class(TJavaGenericImport<JPinPadDriverBT_FallbackBluetoothSocketClass, JPinPadDriverBT_FallbackBluetoothSocket>) end;

  JPinPadDriverBT_FallbackExceptionClass = interface(JExceptionClass)
    ['{0AA6B43E-7F6A-4FA5-9FD2-C071E7E4FD0C}']
    {class} function init(P1: JException): JPinPadDriverBT_FallbackException; cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverBT$FallbackException')]
  JPinPadDriverBT_FallbackException = interface(JException)
    ['{06FD8191-6647-44EC-A02C-524ABC43EA9E}']
  end;
  TJPinPadDriverBT_FallbackException = class(TJavaGenericImport<JPinPadDriverBT_FallbackExceptionClass, JPinPadDriverBT_FallbackException>) end;

  JPinPadDriverUSBClass = interface(JIPinPadDriverClass)
    ['{C0FB741A-140B-4978-B6A1-93438F58A066}']
    {class} function _GetOPERACAO_ABRE_CONEXAO_USB: Integer; cdecl;
    {class} function _GetOPERACAO_ESCRITA: Integer; cdecl;
    {class} function _GetOPERACAO_FLUSH: Integer; cdecl;
    {class} function _GetOPERACAO_LEITURA: Integer; cdecl;
    {class} function _GetOPERACAO_TERMINA_THREAD: Integer; cdecl;
    {class} function _GetOPERACAO_VALIDA_PERMISSAO_USB: Integer; cdecl;
    {class} procedure flush; cdecl;//Deprecated
    {class} function init(P1: JContext; P2: JPinPadCtrl): JPinPadDriverUSB; cdecl;//Deprecated
    {class} function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
    {class} function start: Boolean; cdecl;//Deprecated
    {class} procedure terminate; cdecl;//Deprecated
    {class} function write(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;//Deprecated
    {class} property OPERACAO_ABRE_CONEXAO_USB: Integer read _GetOPERACAO_ABRE_CONEXAO_USB;
    {class} property OPERACAO_ESCRITA: Integer read _GetOPERACAO_ESCRITA;
    {class} property OPERACAO_FLUSH: Integer read _GetOPERACAO_FLUSH;
    {class} property OPERACAO_LEITURA: Integer read _GetOPERACAO_LEITURA;
    {class} property OPERACAO_TERMINA_THREAD: Integer read _GetOPERACAO_TERMINA_THREAD;
    {class} property OPERACAO_VALIDA_PERMISSAO_USB: Integer read _GetOPERACAO_VALIDA_PERMISSAO_USB;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverUSB')]
  JPinPadDriverUSB = interface(JIPinPadDriver)
    ['{F9D124F2-00EB-415F-93A8-14124B0B2F63}']
  end;
  TJPinPadDriverUSB = class(TJavaGenericImport<JPinPadDriverUSBClass, JPinPadDriverUSB>) end;

  JPinPadDriverUSB_DriverClass = interface(JThreadClass)
    ['{7D7BF78B-B405-4F89-AD9E-532DE38D7FFF}']
    {class} function _GetaguardandoPermissao: Boolean; cdecl;
    {class} procedure _SetaguardandoPermissao(Value: Boolean); cdecl;
    {class} function _Getconnected: Boolean; cdecl;
    {class} procedure _Setconnected(Value: Boolean); cdecl;
    {class} function _Getcontext: JContext; cdecl;
    {class} procedure _Setcontext(Value: JContext); cdecl;
    {class} function _Getinput: TJavaArray<Byte>; cdecl;
    {class} procedure _Setinput(Value: TJavaArray<Byte>); cdecl;
    {class} function _GetmUsbCon: JUsbDeviceConnection; cdecl;
    {class} procedure _SetmUsbCon(Value: JUsbDeviceConnection); cdecl;
    {class} function _GetmUsbDevice: JUsbDevice; cdecl;
    {class} procedure _SetmUsbDevice(Value: JUsbDevice); cdecl;
    {class} function _GetmUsbEndpR: JUsbEndpoint; cdecl;
    {class} procedure _SetmUsbEndpR(Value: JUsbEndpoint); cdecl;
    {class} function _GetmUsbEndpW: JUsbEndpoint; cdecl;
    {class} procedure _SetmUsbEndpW(Value: JUsbEndpoint); cdecl;
    {class} function _GetmUsbInterface: JUsbInterface; cdecl;
    {class} procedure _SetmUsbInterface(Value: JUsbInterface); cdecl;
    {class} function _GetmUsbManager: JUsbManager; cdecl;
    {class} procedure _SetmUsbManager(Value: JUsbManager); cdecl;
    {class} function _Getoperacao: Integer; cdecl;
    {class} procedure _Setoperacao(Value: Integer); cdecl;
    {class} function _Getoutput: JStringBuffer; cdecl;
    {class} procedure _Setoutput(Value: JStringBuffer); cdecl;
    {class} function _Getthis: JPinPadDriverUSB; cdecl;
    {class} function _Gettimeout: Integer; cdecl;
    {class} procedure _Settimeout(Value: Integer); cdecl;
    {class} function _Getwritten: Integer; cdecl;
    {class} procedure _Setwritten(Value: Integer); cdecl;
    {class} function init(P1: JPinPadDriverUSB; P2: JContext): JPinPadDriverUSB_Driver; cdecl;//Deprecated
    {class} procedure run; cdecl;//Deprecated
    {class} property aguardandoPermissao: Boolean read _GetaguardandoPermissao write _SetaguardandoPermissao;
    {class} property connected: Boolean read _Getconnected write _Setconnected;
    {class} property context: JContext read _Getcontext write _Setcontext;
    {class} property input: TJavaArray<Byte> read _Getinput write _Setinput;
    {class} property mUsbCon: JUsbDeviceConnection read _GetmUsbCon write _SetmUsbCon;
    {class} property mUsbDevice: JUsbDevice read _GetmUsbDevice write _SetmUsbDevice;
    {class} property mUsbEndpR: JUsbEndpoint read _GetmUsbEndpR write _SetmUsbEndpR;
    {class} property mUsbEndpW: JUsbEndpoint read _GetmUsbEndpW write _SetmUsbEndpW;
    {class} property mUsbInterface: JUsbInterface read _GetmUsbInterface write _SetmUsbInterface;
    {class} property mUsbManager: JUsbManager read _GetmUsbManager write _SetmUsbManager;
    {class} property operacao: Integer read _Getoperacao write _Setoperacao;
    {class} property output: JStringBuffer read _Getoutput write _Setoutput;
    {class} property this: JPinPadDriverUSB read _Getthis;
    {class} property timeout: Integer read _Gettimeout write _Settimeout;
    {class} property written: Integer read _Getwritten write _Setwritten;
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverUSB$Driver')]
  JPinPadDriverUSB_Driver = interface(JThread)
    ['{8A6EC5A9-878F-414B-A590-61908BAAC93A}']
  end;
  TJPinPadDriverUSB_Driver = class(TJavaGenericImport<JPinPadDriverUSB_DriverClass, JPinPadDriverUSB_Driver>) end;

  JPinPadDriverUSB_Driver_1Class = interface(JBroadcastReceiverClass)
    ['{37D811C8-3549-437D-8EF5-DB8530BC77CB}']
    {class} function init(P1: JPinPadDriverUSB_Driver): JPinPadDriverUSB_Driver_1; cdecl;//Deprecated
    {class} procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverUSB$Driver$1')]
  JPinPadDriverUSB_Driver_1 = interface(JBroadcastReceiver)
    ['{5CA7C1E8-B441-445E-BD13-C9140D6F489C}']
  end;
  TJPinPadDriverUSB_Driver_1 = class(TJavaGenericImport<JPinPadDriverUSB_Driver_1Class, JPinPadDriverUSB_Driver_1>) end;

  JDriver_2Class = interface(JBroadcastReceiverClass)
    ['{27B5C1FF-CC0D-41D7-A2DF-72D0A34C2E80}']
    {class} function init(P1: JPinPadDriverUSB_Driver): JDriver_2; cdecl;//Deprecated
    {class} procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;

  [JavaSignature('br/com/softwareexpress/sitef/android/PinPadDriverUSB$Driver$2')]
  JDriver_2 = interface(JBroadcastReceiver)
    ['{DACC751B-84E1-4C67-B648-A54FE7E1C6BA}']
  end;
  TJDriver_2 = class(TJavaGenericImport<JDriver_2Class, JDriver_2>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('clisitef.JAnimator', TypeInfo(clisitef.JAnimator));
  TRegTypes.RegisterType('clisitef.JAnimator_AnimatorListener', TypeInfo(clisitef.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('clisitef.JAnimator_AnimatorPauseListener', TypeInfo(clisitef.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('clisitef.JKeyframe', TypeInfo(clisitef.JKeyframe));
  TRegTypes.RegisterType('clisitef.JLayoutTransition', TypeInfo(clisitef.JLayoutTransition));
  TRegTypes.RegisterType('clisitef.JLayoutTransition_TransitionListener', TypeInfo(clisitef.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('clisitef.JPropertyValuesHolder', TypeInfo(clisitef.JPropertyValuesHolder));
  TRegTypes.RegisterType('clisitef.JStateListAnimator', TypeInfo(clisitef.JStateListAnimator));
  TRegTypes.RegisterType('clisitef.JTimeInterpolator', TypeInfo(clisitef.JTimeInterpolator));
  TRegTypes.RegisterType('clisitef.JTypeConverter', TypeInfo(clisitef.JTypeConverter));
  TRegTypes.RegisterType('clisitef.JTypeEvaluator', TypeInfo(clisitef.JTypeEvaluator));
  TRegTypes.RegisterType('clisitef.JValueAnimator', TypeInfo(clisitef.JValueAnimator));
  TRegTypes.RegisterType('clisitef.JValueAnimator_AnimatorUpdateListener', TypeInfo(clisitef.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('clisitef.JUsbAccessory', TypeInfo(clisitef.JUsbAccessory));
  TRegTypes.RegisterType('clisitef.JUsbConfiguration', TypeInfo(clisitef.JUsbConfiguration));
  TRegTypes.RegisterType('clisitef.JUsbDevice', TypeInfo(clisitef.JUsbDevice));
  TRegTypes.RegisterType('clisitef.JUsbDeviceConnection', TypeInfo(clisitef.JUsbDeviceConnection));
  TRegTypes.RegisterType('clisitef.JUsbEndpoint', TypeInfo(clisitef.JUsbEndpoint));
  TRegTypes.RegisterType('clisitef.JUsbInterface', TypeInfo(clisitef.JUsbInterface));
  TRegTypes.RegisterType('clisitef.JUsbManager', TypeInfo(clisitef.JUsbManager));
  TRegTypes.RegisterType('clisitef.JUsbRequest', TypeInfo(clisitef.JUsbRequest));
  TRegTypes.RegisterType('clisitef.JPathMotion', TypeInfo(clisitef.JPathMotion));
  TRegTypes.RegisterType('clisitef.JScene', TypeInfo(clisitef.JScene));
  TRegTypes.RegisterType('clisitef.JTransition', TypeInfo(clisitef.JTransition));
  TRegTypes.RegisterType('clisitef.JTransition_EpicenterCallback', TypeInfo(clisitef.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('clisitef.JTransition_TransitionListener', TypeInfo(clisitef.JTransition_TransitionListener));
  TRegTypes.RegisterType('clisitef.JTransitionManager', TypeInfo(clisitef.JTransitionManager));
  TRegTypes.RegisterType('clisitef.JTransitionPropagation', TypeInfo(clisitef.JTransitionPropagation));
  TRegTypes.RegisterType('clisitef.JTransitionValues', TypeInfo(clisitef.JTransitionValues));
  TRegTypes.RegisterType('clisitef.JInterpolator', TypeInfo(clisitef.JInterpolator));
  TRegTypes.RegisterType('clisitef.JToolbar_LayoutParams', TypeInfo(clisitef.JToolbar_LayoutParams));
  TRegTypes.RegisterType('clisitef.JJCliSiTefI', TypeInfo(clisitef.JJCliSiTefI));
  TRegTypes.RegisterType('clisitef.JCliSiTef', TypeInfo(clisitef.JCliSiTef));
  TRegTypes.RegisterType('clisitef.JCliSiTefI', TypeInfo(clisitef.JCliSiTefI));
  TRegTypes.RegisterType('clisitef.JPinPadCtrlLogger', TypeInfo(clisitef.JPinPadCtrlLogger));
  TRegTypes.RegisterType('clisitef.JCliSiTefI_1', TypeInfo(clisitef.JCliSiTefI_1));
  TRegTypes.RegisterType('clisitef.JCliSiTefI_2', TypeInfo(clisitef.JCliSiTefI_2));
  TRegTypes.RegisterType('clisitef.JCliSiTefI_INIFile', TypeInfo(clisitef.JCliSiTefI_INIFile));
  TRegTypes.RegisterType('clisitef.JFuncoesInternas', TypeInfo(clisitef.JFuncoesInternas));
  TRegTypes.RegisterType('clisitef.JFuncoesInternas_1', TypeInfo(clisitef.JFuncoesInternas_1));
  TRegTypes.RegisterType('clisitef.J1_1', TypeInfo(clisitef.J1_1));
  TRegTypes.RegisterType('clisitef.J1_2', TypeInfo(clisitef.J1_2));
  TRegTypes.RegisterType('clisitef.JGerComunicacao', TypeInfo(clisitef.JGerComunicacao));
  TRegTypes.RegisterType('clisitef.JEventListener', TypeInfo(clisitef.JEventListener));
  TRegTypes.RegisterType('clisitef.JICliSiTefListener', TypeInfo(clisitef.JICliSiTefListener));
  TRegTypes.RegisterType('clisitef.JIComunicacaoExterna', TypeInfo(clisitef.JIComunicacaoExterna));
  TRegTypes.RegisterType('clisitef.JIPinPadDriver', TypeInfo(clisitef.JIPinPadDriver));
  TRegTypes.RegisterType('clisitef.JIBarcode', TypeInfo(clisitef.JIBarcode));
  TRegTypes.RegisterType('clisitef.JModuleBarcode', TypeInfo(clisitef.JModuleBarcode));
  TRegTypes.RegisterType('clisitef.JIPinPad', TypeInfo(clisitef.JIPinPad));
  TRegTypes.RegisterType('clisitef.JModulePinPad', TypeInfo(clisitef.JModulePinPad));
  TRegTypes.RegisterType('clisitef.JPPDisplayLogger', TypeInfo(clisitef.JPPDisplayLogger));
  TRegTypes.RegisterType('clisitef.JParametros', TypeInfo(clisitef.JParametros));
  TRegTypes.RegisterType('clisitef.JPinPadCtrl', TypeInfo(clisitef.JPinPadCtrl));
  TRegTypes.RegisterType('clisitef.JPinPadDriverApos', TypeInfo(clisitef.JPinPadDriverApos));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT', TypeInfo(clisitef.JPinPadDriverBT));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT_BluetoothSocketWrapper', TypeInfo(clisitef.JPinPadDriverBT_BluetoothSocketWrapper));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT_Driver', TypeInfo(clisitef.JPinPadDriverBT_Driver));
  TRegTypes.RegisterType('clisitef.JDriver_1', TypeInfo(clisitef.JDriver_1));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT_NativeBluetoothSocket', TypeInfo(clisitef.JPinPadDriverBT_NativeBluetoothSocket));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT_FallbackBluetoothSocket', TypeInfo(clisitef.JPinPadDriverBT_FallbackBluetoothSocket));
  TRegTypes.RegisterType('clisitef.JPinPadDriverBT_FallbackException', TypeInfo(clisitef.JPinPadDriverBT_FallbackException));
  TRegTypes.RegisterType('clisitef.JPinPadDriverUSB', TypeInfo(clisitef.JPinPadDriverUSB));
  TRegTypes.RegisterType('clisitef.JPinPadDriverUSB_Driver', TypeInfo(clisitef.JPinPadDriverUSB_Driver));
  TRegTypes.RegisterType('clisitef.JPinPadDriverUSB_Driver_1', TypeInfo(clisitef.JPinPadDriverUSB_Driver_1));
  TRegTypes.RegisterType('clisitef.JDriver_2', TypeInfo(clisitef.JDriver_2));
end;

initialization
  RegisterTypes;
end.

