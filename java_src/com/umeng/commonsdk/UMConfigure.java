package com.umeng.commonsdk;

import android.app.Application;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.ay;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.bq;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.ccg.ActionInfo;
import com.umeng.ccg.CcgAgent;
import com.umeng.ccg.b;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMLogCommon;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.TagHelper;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.a;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.c;
import com.umeng.commonsdk.utils.d;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    private static final String KEY_FILE_NAME_APPKEY = "APPKEY";
    private static final String KEY_FILE_NAME_LOG = "LOG";
    private static final String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    private static final String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    private static final String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    private static final String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    private static final String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    private static final String TAG = "UMConfigure";
    private static final String WRAPER_TYPE_COCOS2DX_X = "Cocos2d-x";
    private static final String WRAPER_TYPE_COCOS2DX_XLUA = "Cocos2d-x_lua";
    private static final String WRAPER_TYPE_FLUTTER = "flutter";
    private static final String WRAPER_TYPE_HYBRID = "hybrid";
    private static final String WRAPER_TYPE_NATIVE = "native";
    private static final String WRAPER_TYPE_PHONEGAP = "phonegap";
    private static final String WRAPER_TYPE_REACTNATIVE = "react-native";
    private static final String WRAPER_TYPE_UNITY = "Unity";
    private static final String WRAPER_TYPE_WEEX = "weex";
    private static boolean debugLog;
    private static OnGetOaidListener mOnGetOaidListener;
    public static UMLog umDebugLog = new UMLog();
    private static boolean preInitComplete = false;
    private static Object PreInitLock = new Object();
    public static String sAppkey = "";
    public static String sChannel = "";
    public static boolean isInit = false;
    private static Object lock = new Object();
    private static int preInitInvokedFlag = 0;
    private static int policyGrantInvokedFlag = 0;
    private static int policyGrantResult = 0;
    private static boolean shouldCheckShareSdk = true;
    private static volatile boolean shouldCollectAid = true;
    private static volatile boolean shouldCollectImei = true;
    private static volatile boolean shouldCollectImsi = true;
    private static volatile boolean shouldCollectIccid = true;
    private static volatile boolean shouldOutputRT = false;
    public static MobclickAgent.PageMode AUTO_ACTIVITY_PAGE_COLLECTION = MobclickAgent.PageMode.AUTO;
    private static final String[] BUSINESS_TYPE = {"apm", "push", "share", "ulink", "uverify", "usms", "urec", "abtest", "game", bm.al};
    private static boolean isFinish = false;
    private static Object lockObject = new Object();

    public enum BS_TYPE {
        APM,
        PUSH,
        SHARE,
        ULINK,
        UVERIFY,
        USMS,
        UREC,
        ABTEST,
        GAME,
        ZID
    }

    private static boolean checkShareSdk(Class<?> cls) {
        try {
            return cls.getDeclaredField("isZyb") != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void deleteModuleTag(BS_TYPE bs_type, String str) {
        if (bs_type == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (str.trim().getBytes().length > 64) {
                return;
            }
            int iOrdinal = bs_type.ordinal();
            String[] strArr = BUSINESS_TYPE;
            String str2 = iOrdinal < strArr.length ? strArr[iOrdinal] : "";
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            TagHelper.deleteModuleTag(str2 + "_" + str);
        } catch (Throwable unused) {
        }
    }

    private static void disableAidCollect() {
        try {
            if (getClass("com.umeng.socialize.UMShareAPI") != null) {
                shouldCollectAid = false;
            }
        } catch (Throwable unused) {
        }
    }

    public static void enableAzxSwitch(boolean z10) {
        b.a(z10);
    }

    public static void enableIccidCollection(boolean z10) {
        shouldCollectIccid = z10;
    }

    public static void enableImeiCollection(boolean z10) {
        shouldCollectImei = z10;
    }

    public static void enableImsiCollection(boolean z10) {
        shouldCollectImsi = z10;
    }

    private static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static String getCurrentActivityName() {
        return PageNameMonitor.getInstance().getCurrentActivityName();
    }

    private static Object getDecInstanceObject(Class<?> cls) {
        Constructor<?> declaredConstructor;
        if (cls == null) {
            return null;
        }
        try {
            declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        } catch (NoSuchMethodException unused) {
            declaredConstructor = null;
        }
        if (declaredConstructor == null) {
            return null;
        }
        declaredConstructor.setAccessible(true);
        try {
            return declaredConstructor.newInstance(new Object[0]);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused2) {
            return null;
        }
    }

    private static Method getDecMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        Method declaredMethod = null;
        if (cls != null) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
            }
        }
        return declaredMethod;
    }

    public static boolean getInitStatus() {
        boolean z10;
        synchronized (lockObject) {
            z10 = isFinish;
        }
        return z10;
    }

    private static Map<String, String> getModuleTags() {
        try {
            return TagHelper.getModuleTags();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void getOaid(Context context, OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        mOnGetOaidListener = onGetOaidListener;
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigure.4
            @Override // java.lang.Runnable
            public void run() {
                String strB = ay.b(applicationContext);
                if (UMConfigure.mOnGetOaidListener != null) {
                    UMConfigure.mOnGetOaidListener.onGetOaid(strB);
                }
            }
        }).start();
    }

    public static String[] getTestDeviceInfo(Context context) {
        String[] strArr = new String[2];
        if (context != null) {
            try {
                strArr[0] = DeviceConfig.getDeviceIdForGeneral(context);
                strArr[1] = DeviceConfig.getMac(context);
            } catch (Exception unused) {
            }
        }
        return strArr;
    }

    public static String getUMIDString(Context context) {
        if (context != null) {
            return UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    public static String getUmengZID(Context context) {
        if (context != null) {
            return UMUtils.getZid(context.getApplicationContext());
        }
        return null;
    }

    private static void ignoreSdkCheck(Context context) {
        shouldCheckShareSdk = false;
    }

    public static void init(Context context, int i10, String str) {
        init(context, null, null, i10, str);
    }

    private static void invoke(Method method, Object obj, Object[] objArr) {
        if (method == null || obj == null) {
            return;
        }
        try {
            method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
        }
    }

    public static boolean isDebugLog() {
        return debugLog;
    }

    private static Boolean isInForeground() {
        return Boolean.valueOf(com.umeng.analytics.vshelper.b.d());
    }

    private static boolean isPreInit() {
        boolean z10;
        synchronized (PreInitLock) {
            z10 = preInitComplete;
        }
        return z10;
    }

    private static boolean isSilentMode() {
        boolean zA = c.a();
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> isSilentMode() return: " + zA);
        return zA;
    }

    private static boolean needCheckPolicyResult(Context context) {
        File filesDir = context.getFilesDir();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(filesDir.getAbsolutePath());
        sb2.append(File.separator);
        sb2.append(bq.f84488m);
        return !new File(sb2.toString()).exists();
    }

    public static boolean needSendZcfgEnv(Context context) {
        File filesDir = context.getFilesDir();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(filesDir.getAbsolutePath());
        sb2.append(File.separator);
        sb2.append(bq.f84487l);
        return !new File(sb2.toString()).exists();
    }

    public static void preInit(Context context, String str, String str2) {
        synchronized (lock) {
            preInitInvokedFlag = 1;
        }
        preInitInternal(context, str, str2);
    }

    private static void preInitInternal(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if ("1".equals(UMUtils.getSystemProperty("debug.umeng.rtlog", "0"))) {
            shouldOutputRT = true;
        }
        if (TextUtils.isEmpty(str)) {
            str = UMUtils.getAppkeyByXML(applicationContext);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = UMUtils.getChannelByXML(applicationContext);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "Unknown";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        sAppkey = str;
        sChannel = str2;
        UMGlobalContext.getInstance(applicationContext);
        n.a(applicationContext);
        if (!needSendZcfgEnv(applicationContext)) {
            FieldManager.a().a(applicationContext);
        }
        synchronized (PreInitLock) {
            preInitComplete = true;
        }
        boolean zA = c.a();
        if (debugLog && zA) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 当前处于静默模式!");
        }
    }

    public static void registerActionInfo(ActionInfo actionInfo) {
        CcgAgent.registerActionInfo(actionInfo);
    }

    public static void resetStorePath() {
        resetStorePrefix("um_");
    }

    public static void resetStorePrefix(String str) {
        aw.b().a(str);
    }

    private static void setCheckDevice(boolean z10) {
        AnalyticsConstants.CHECK_DEVICE = z10;
    }

    public static void setDomain(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UMServerURL.DEFAULT_URL = str;
        UMServerURL.SECONDARY_URL = str;
    }

    public static void setEncryptEnabled(boolean z10) {
        com.umeng.commonsdk.statistics.b.a(z10);
    }

    private static void setFile(Class<?> cls, String str, String str2) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    private static void setLatencyWindow(long j10) {
        a.f85322c = ((int) j10) * 1000;
    }

    public static void setLogEnabled(boolean z10) {
        try {
            debugLog = z10;
            MLog.DEBUG = z10;
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            Object decInstanceObject = getDecInstanceObject(cls);
            Class cls2 = Boolean.TYPE;
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new Class[]{cls2}), decInstanceObject, new Object[]{Boolean.valueOf(z10)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z10);
            invoke(getDecMethod(getClass("com.umeng.umcrash.UMCrash"), "setDebug", new Class[]{cls2}), new Object[]{Boolean.valueOf(z10)});
        } catch (Exception e10) {
            if (debugLog) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("set log enabled e is ");
                sb2.append(e10);
            }
        } catch (Throwable th) {
            if (debugLog) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("set log enabled e is ");
                sb3.append(th);
            }
        }
    }

    private static void setModuleTag(BS_TYPE bs_type, String str, String str2) {
        if (bs_type == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.trim().getBytes().length > 64 || str2.trim().getBytes().length > 128) {
                return;
            }
            int iOrdinal = bs_type.ordinal();
            String[] strArr = BUSINESS_TYPE;
            String str3 = iOrdinal < strArr.length ? strArr[iOrdinal] : "";
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            TagHelper.setModuleTag(str3 + "_" + str, str2);
        } catch (Throwable unused) {
        }
    }

    public static void setProcessEvent(boolean z10) {
        AnalyticsConstants.SUB_PROCESS_EVENT = z10;
    }

    private static void setWraperType(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(WRAPER_TYPE_NATIVE)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_NATIVE;
                a.f85320a = WRAPER_TYPE_NATIVE;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_X)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_COCOS2DX_X;
                a.f85320a = WRAPER_TYPE_COCOS2DX_X;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_XLUA)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_COCOS2DX_XLUA;
                a.f85320a = WRAPER_TYPE_COCOS2DX_XLUA;
            } else if (str.equals(WRAPER_TYPE_UNITY)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_UNITY;
                a.f85320a = WRAPER_TYPE_UNITY;
            } else if (str.equals(WRAPER_TYPE_REACTNATIVE)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_REACTNATIVE;
                a.f85320a = WRAPER_TYPE_REACTNATIVE;
            } else if (str.equals(WRAPER_TYPE_PHONEGAP)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_PHONEGAP;
                a.f85320a = WRAPER_TYPE_PHONEGAP;
            } else if (str.equals(WRAPER_TYPE_WEEX)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_WEEX;
                a.f85320a = WRAPER_TYPE_WEEX;
            } else if (str.equals("hybrid")) {
                com.umeng.commonsdk.stateless.a.f85290a = "hybrid";
                a.f85320a = "hybrid";
            } else if (str.equals(WRAPER_TYPE_FLUTTER)) {
                com.umeng.commonsdk.stateless.a.f85290a = WRAPER_TYPE_FLUTTER;
                a.f85320a = WRAPER_TYPE_FLUTTER;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        com.umeng.commonsdk.stateless.a.f85291b = str2;
        a.f85321b = str2;
    }

    public static boolean shouldCollectAid() {
        return shouldCollectAid;
    }

    public static boolean shouldCollectIccid() {
        return shouldCollectIccid;
    }

    public static boolean shouldCollectImei() {
        return shouldCollectImei;
    }

    public static boolean shouldCollectImsi() {
        return shouldCollectImsi;
    }

    public static boolean shouldOutput() {
        return shouldOutputRT;
    }

    public static void submitPolicyGrantResult(Context context, boolean z10) {
        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.B, com.umeng.commonsdk.internal.b.a(context).a(), null);
        synchronized (lock) {
            policyGrantInvokedFlag = 1;
            if (z10) {
                policyGrantResult = 1;
            } else {
                policyGrantResult = 2;
            }
        }
        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f85221z, com.umeng.commonsdk.internal.b.a(context).a(), Integer.valueOf(policyGrantResult));
    }

    public static void init(Context context, String str, String str2, int i10, String str3) {
        Object objInvoke;
        Method declaredMethod;
        Class<?> cls;
        Method declaredMethod2;
        Method declaredMethod3;
        Object objInvoke2;
        Method declaredMethod4;
        try {
            try {
                if (debugLog) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("common type is ");
                    sb2.append(SdkVersion.SDK_TYPE);
                }
                if (context == null || isInit) {
                    return;
                }
                final Context applicationContext = context.getApplicationContext();
                UMGlobalContext.getInstance(applicationContext);
                if (c.a()) {
                    if (!isPreInit()) {
                        preInitInternal(applicationContext, str, str2);
                        if (!isPreInit()) {
                            return;
                        }
                    }
                    UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.D, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
                    return;
                }
                if (getClass("com.umeng.umzid.ZIDManager") == null) {
                    new Thread() { // from class: com.umeng.commonsdk.UMConfigure.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Looper.prepare();
                                Toast.makeText(applicationContext, "SDK 初始化失败，请检查是否集成umeng-asms-1.2.X.aar库。", 1).show();
                                Looper.loop();
                            } catch (Throwable unused) {
                            }
                        }
                    }.start();
                    return;
                }
                try {
                    Class<?> cls2 = getClass("com.umeng.message.PushAgent");
                    if (cls2 != null && !checkShareSdk(cls2) && shouldCheckShareSdk) {
                        new Thread() { // from class: com.umeng.commonsdk.UMConfigure.2
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                try {
                                    Looper.prepare();
                                    Toast.makeText(applicationContext, UMLogCommon.SC_10015, 1).show();
                                    Looper.loop();
                                } catch (Throwable unused) {
                                }
                            }
                        }.start();
                    }
                } catch (Throwable unused) {
                }
                try {
                    Class<?> cls3 = getClass("com.umeng.socialize.UMShareAPI");
                    if (cls3 != null && !checkShareSdk(cls3) && shouldCheckShareSdk) {
                        new Thread() { // from class: com.umeng.commonsdk.UMConfigure.3
                            @Override // java.lang.Thread, java.lang.Runnable
                            public void run() {
                                try {
                                    Looper.prepare();
                                    Toast.makeText(applicationContext, UMLogCommon.SC_10015, 1).show();
                                    Looper.loop();
                                } catch (Throwable unused2) {
                                }
                            }
                        }.start();
                    }
                } catch (Throwable unused2) {
                }
                if (!isPreInit()) {
                    preInitInternal(applicationContext, str, str2);
                    if (!isPreInit()) {
                        return;
                    }
                }
                UMEnvelopeBuild.registerNetReceiver(applicationContext);
                UMUtils.setAppkey(applicationContext, sAppkey);
                String lastAppkey = UMUtils.getLastAppkey(applicationContext);
                if (!TextUtils.isEmpty(sAppkey) && !sAppkey.equals(lastAppkey)) {
                    if (!TextUtils.isEmpty(lastAppkey) && debugLog) {
                        UMLog.mutlInfo(UMLogCommon.SC_10008, 2, "");
                    }
                    UMUtils.setLastAppkey(applicationContext, sAppkey);
                }
                if (debugLog) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("current appkey is ");
                    sb3.append(sAppkey);
                    sb3.append(", last appkey is ");
                    sb3.append(lastAppkey);
                }
                if (debugLog) {
                    String appkeyByXML = UMUtils.getAppkeyByXML(applicationContext);
                    if (!TextUtils.isEmpty(sAppkey) && !TextUtils.isEmpty(appkeyByXML) && !sAppkey.equals(appkeyByXML)) {
                        UMLog.mutlInfo(UMLogCommon.SC_10011, 3, "", new String[]{"@", "#"}, new String[]{sAppkey, appkeyByXML});
                    }
                }
                UMUtils.setChannel(applicationContext, sChannel);
                if (debugLog) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("channel is ");
                    sb4.append(sChannel);
                }
                try {
                    Method declaredMethod5 = MobclickAgent.class.getDeclaredMethod("init", Context.class);
                    if (declaredMethod5 != null) {
                        declaredMethod5.setAccessible(true);
                        declaredMethod5.invoke(MobclickAgent.class, applicationContext);
                        if (FieldManager.allow(d.F)) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> FirstResumeTrigger enabled.");
                            n.a(applicationContext).b(applicationContext);
                        } else {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> FirstResumeTrigger disabled.");
                        }
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10003, 2, "");
                        }
                    }
                    Class.forName("com.umeng.analytics.game.UMGameAgent");
                    Method declaredMethod6 = MobclickAgent.class.getDeclaredMethod("setGameScenarioType", Context.class);
                    if (declaredMethod6 != null) {
                        declaredMethod6.setAccessible(true);
                        declaredMethod6.invoke(MobclickAgent.class, applicationContext);
                    }
                    if (com.umeng.commonsdk.statistics.b.f85323a.indexOf("e") >= 0 && (declaredMethod4 = MobclickAgent.class.getDeclaredMethod("disableExceptionCatch", new Class[0])) != null) {
                        declaredMethod4.setAccessible(true);
                        declaredMethod4.invoke(MobclickAgent.class, new Object[0]);
                    }
                } catch (Throwable unused3) {
                }
                try {
                    Class<?> cls4 = Class.forName("com.umeng.message.PushAgent");
                    Method declaredMethod7 = cls4.getDeclaredMethod("init", Context.class);
                    if (declaredMethod7 != null) {
                        declaredMethod7.setAccessible(true);
                        declaredMethod7.invoke(cls4, applicationContext);
                    }
                } catch (Throwable unused4) {
                }
                try {
                    Class<?> cls5 = Class.forName("com.umeng.message.MessageSharedPrefs");
                    Method declaredMethod8 = cls5.getDeclaredMethod("getInstance", Context.class);
                    if (declaredMethod8 != null && (objInvoke2 = declaredMethod8.invoke(cls5, applicationContext)) != null) {
                        Method declaredMethod9 = cls5.getDeclaredMethod("setMessageAppKey", String.class);
                        if (declaredMethod9 != null) {
                            declaredMethod9.setAccessible(true);
                            declaredMethod9.invoke(objInvoke2, sAppkey);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10004, 2, "");
                            }
                        }
                        Method declaredMethod10 = cls5.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SETCHANNEL, String.class);
                        if (declaredMethod10 != null) {
                            declaredMethod10.setAccessible(true);
                            declaredMethod10.invoke(objInvoke2, sChannel);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10005, 2, "");
                            }
                        }
                        if (!TextUtils.isEmpty(str3)) {
                            if (debugLog) {
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("push secret is ");
                                sb5.append(str3);
                            }
                            Method declaredMethod11 = cls5.getDeclaredMethod("setMessageAppSecret", String.class);
                            if (declaredMethod11 != null) {
                                declaredMethod11.setAccessible(true);
                                declaredMethod11.invoke(objInvoke2, str3);
                                if (debugLog) {
                                    UMLog.mutlInfo(UMLogCommon.SC_10009, 2, "");
                                }
                            }
                        }
                    }
                } catch (Exception unused5) {
                }
                try {
                    Class<?> cls6 = getClass("com.umeng.socialize.UMShareAPI");
                    setFile(cls6, KEY_FILE_NAME_APPKEY, sAppkey);
                    if (cls6 != null && (declaredMethod3 = cls6.getDeclaredMethod("init", Context.class, String.class)) != null) {
                        declaredMethod3.setAccessible(true);
                        declaredMethod3.invoke(cls6, applicationContext, sAppkey);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10006, 2, "");
                        }
                    }
                } catch (Throwable unused6) {
                }
                AnalyticsConstants.setDeviceType(i10);
                try {
                    Class<?> cls7 = Class.forName("com.umeng.error.UMError");
                    Method declaredMethod12 = cls7.getDeclaredMethod("init", Context.class);
                    if (declaredMethod12 != null) {
                        declaredMethod12.setAccessible(true);
                        declaredMethod12.invoke(cls7, applicationContext);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10010, 2, "");
                        }
                    }
                } catch (Throwable unused7) {
                }
                try {
                    if (getClass("com.umeng.umefs.UMEfs") == null && (cls = getClass("com.umeng.umcrash.UMCrash")) != null) {
                        if (SdkVersion.SDK_TYPE == 1 && (declaredMethod2 = cls.getDeclaredMethod("useIntlServices", Boolean.TYPE)) != null) {
                            declaredMethod2.setAccessible(true);
                            declaredMethod2.invoke(cls, Boolean.TRUE);
                        }
                        Method declaredMethod13 = cls.getDeclaredMethod("init", Context.class, String.class, String.class);
                        if (declaredMethod13 != null) {
                            declaredMethod13.setAccessible(true);
                            declaredMethod13.invoke(cls, applicationContext, sAppkey, sChannel);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10014, 2, "");
                            }
                        }
                    }
                } catch (Throwable unused8) {
                }
                try {
                    Method declaredMethod14 = Class.forName("com.umeng.vt.facade.EventFacade").getDeclaredMethod("init", Application.class, String.class, String.class, Integer.TYPE, String.class);
                    if (declaredMethod14 != null) {
                        declaredMethod14.invoke(null, applicationContext, sAppkey, sChannel, Integer.valueOf(i10), str3);
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>初始化 EventFacade 成功.");
                    }
                } catch (Throwable unused9) {
                }
                try {
                    Method declaredMethod15 = Class.forName("com.umeng.vt.common.VTTracker").getDeclaredMethod("init", Application.class, String.class);
                    if (declaredMethod15 != null) {
                        declaredMethod15.invoke(null, applicationContext, sAppkey);
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>初始化 VTTracker 成功.");
                    }
                } catch (Throwable unused10) {
                }
                synchronized (lockObject) {
                    isFinish = true;
                }
                if (needCheckPolicyResult(applicationContext)) {
                    synchronized (lock) {
                        int i11 = preInitInvokedFlag;
                        int i12 = policyGrantResult;
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(com.umeng.commonsdk.internal.a.J, preInitInvokedFlag);
                            jSONObject.put(com.umeng.commonsdk.internal.a.K, policyGrantInvokedFlag);
                            jSONObject.put("policyGrantResult", policyGrantResult);
                            UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.A, com.umeng.commonsdk.internal.b.a(applicationContext).a(), jSONObject);
                        } catch (Throwable unused11) {
                        }
                    }
                }
                if (needSendZcfgEnv(applicationContext)) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 走零号报文发送逻辑");
                    UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f85211p, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
                } else if (UMUtils.isMainProgress(applicationContext)) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 走正常逻辑.");
                    if (FieldManager.b()) {
                        UMWorkDispatch.sendEvent(applicationContext, com.umeng.commonsdk.internal.a.f85220y, com.umeng.commonsdk.internal.b.a(applicationContext).a(), null);
                    }
                    if (FieldManager.allow(d.G)) {
                        com.umeng.commonsdk.internal.c.a(applicationContext, false);
                    }
                }
                if (isDebugLog()) {
                    UMConfigureInternation.doSelfCheck(applicationContext);
                }
                try {
                    Context applicationContext2 = context.getApplicationContext();
                    Class<?> cls8 = Class.forName("com.umeng.cconfig.UMRemoteConfig");
                    Method declaredMethod16 = cls8.getDeclaredMethod("getInstance", new Class[0]);
                    if (declaredMethod16 != null && (objInvoke = declaredMethod16.invoke(cls8, new Object[0])) != null && (declaredMethod = cls8.getDeclaredMethod("init", Context.class)) != null) {
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(objInvoke, applicationContext2);
                    }
                } catch (Exception unused12) {
                }
                UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.F, com.umeng.commonsdk.internal.b.a(context).a(), null);
                if (!isInit) {
                    isInit = true;
                }
                if (debugLog) {
                    UMLog.mutlInfo(UMLogCommon.SC_10029, 2, "");
                }
            } catch (Throwable th) {
                if (debugLog) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("init e is ");
                    sb6.append(th);
                }
            }
        } catch (Exception e10) {
            if (debugLog) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append("init e is ");
                sb7.append(e10);
            }
        }
    }

    private static void invoke(Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    private static void setFile(Class<?> cls, String str, boolean z10) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, Boolean.valueOf(z10));
            } catch (Exception unused) {
            }
        }
    }
}
