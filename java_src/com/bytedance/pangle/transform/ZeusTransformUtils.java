package com.bytedance.pangle.transform;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Keep;
import com.byazt.bog.a;
import com.byazt.uk.FileProvider;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.PluginContext;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.activity.GenerateProxyActivity;
import com.bytedance.pangle.activity.IPluginActivity;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import com.bytedance.pangle.res.PluginResources;
import com.bytedance.pangle.service.PluginIntentService;
import com.bytedance.pangle.service.PluginService;
import com.bytedance.pangle.service.client.ServiceManagerNative;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.bytedance.pangle.wrapper.PluginFragmentActivityWrapper;
import com.join.mgps.Util.o0;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class ZeusTransformUtils {
    public static final String TAG = "PluginContextUtils";
    public static Class fragmentClazz;
    public static boolean sCanThrowException;
    public static boolean sSupportFragmentWrapper;
    public static HashMap<String, WeakReference<Context>> contextCache = new HashMap<>();
    public static boolean hasEnsure = false;
    public static HashMap<String, Constructor<View>> sConstructorMap = null;

    public static Activity _getActivity(Object obj, String str) {
        try {
            Activity activity = (Activity) MethodUtils.invokeMethod(obj, "getActivity", new Object[0]);
            Activity activity2 = (Activity) wrapperContext(activity, str);
            if (activity2 instanceof GenerateProxyActivity) {
                return ((GenerateProxyActivity) activity2).mTargetActivity;
            }
            isSupportLibIso(str);
            return (Activity) wrapperContext(activity, str);
        } catch (IllegalAccessException e10) {
            a.c(e10);
            return null;
        } catch (NoSuchMethodException e11) {
            a.c(e11);
            return null;
        } catch (InvocationTargetException e12) {
            a.c(e12);
            return null;
        }
    }

    public static boolean bindService(Object obj, Intent intent, ServiceConnection serviceConnection, int i10, String str) {
        if (obj instanceof Context) {
            return ServiceManagerNative.getInstance().bindServiceNative((Context) obj, intent, serviceConnection, i10, str);
        }
        try {
            return ((Boolean) MethodUtils.invokeMethod(obj, "bindService", new Object[]{intent, serviceConnection, Integer.valueOf(i10)}, new Class[]{Intent.class, ServiceConnection.class, Integer.TYPE})).booleanValue();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void canThrowException(boolean z10) {
        sCanThrowException = z10;
    }

    public static void clearConstructorCache() {
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                if (sConstructorMap == null) {
                    sConstructorMap = (HashMap) FieldUtils.readStaticField(LayoutInflater.class, "sConstructorMap");
                }
                for (String str : new HashSet(sConstructorMap.keySet())) {
                    if (!str.startsWith("android.view.") && !str.startsWith("android.widget.") && !str.startsWith("android.webkit.") && str.contains(o0.f49827a)) {
                        sConstructorMap.remove(str);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static Context convertProxy2PluginActivity(Context context) {
        try {
            if (context instanceof GenerateProxyActivity) {
                return (Activity) FieldUtils.readField(context, "mTargetActivity");
            }
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "convertProxy2PluginActivity failed.", th);
        }
        return context;
    }

    private static void ensureFragmentActivity() {
        if (hasEnsure) {
            return;
        }
        try {
            try {
                fragmentClazz = Zeus.class.getClassLoader().loadClass("androidx.fragment.app.FragmentActivity");
            } catch (Throwable unused) {
                fragmentClazz = Zeus.class.getClassLoader().loadClass("androidx.fragment.app.FragmentActivity");
            }
        } catch (Throwable unused2) {
        }
        hasEnsure = true;
    }

    private static boolean equalsFragmentActivity(Class cls) {
        ensureFragmentActivity();
        Class cls2 = fragmentClazz;
        return cls2 != null && cls == cls2;
    }

    public static Class forName(String str, String str2) throws ClassNotFoundException {
        return Zeus.getPlugin(str2).mClassLoader.loadClass(str);
    }

    public static Activity getActivity(Object obj, String str) {
        return _getActivity(obj, str);
    }

    public static String getAssetPaths(AssetManager assetManager) {
        StringBuilder sb2 = new StringBuilder();
        if (assetManager == null) {
            return "";
        }
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28 || (i10 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0)) {
                Object[] objArr = (Object[]) MethodUtils.invokeMethod(assetManager, "getApkAssets", new Object[0]);
                if (objArr != null && objArr.length > 0) {
                    for (Object obj : objArr) {
                        sb2.append((String) MethodUtils.invokeMethod(obj, "getAssetPath", new Object[0]));
                    }
                }
            } else {
                int iIntValue = ((Integer) MethodUtils.invokeMethod(assetManager, "getStringBlockCount", new Object[0])).intValue();
                for (int i11 = 0; i11 < iIntValue; i11++) {
                    try {
                        String str = (String) MethodUtils.invokeMethod(assetManager, "getCookieName", Integer.valueOf(i11 + 1));
                        if (!TextUtils.isEmpty(str)) {
                            sb2.append(str);
                        }
                    } catch (IndexOutOfBoundsException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "TransformUtils GetAssetsPaths error. ", th);
        }
        return sb2.toString();
    }

    public static Context getContext(Object obj, String str) {
        try {
            Context context = (Context) MethodUtils.invokeMethod(obj, "getContext", new Object[0]);
            if (!isSupportLibIso(str) && instanceOfFragmentActivity(context)) {
                return wrapperContext(context, str);
            }
            if (context instanceof Activity) {
                return wrapperContext(context, str);
            }
            if (context instanceof Application) {
                return wrapperContext(context, str);
            }
            return context instanceof PluginContext ? context : wrapperContext(context, str);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Context getContextIfNeedWrap(Context context, Context context2, String str) {
        Context baseContext;
        if (context2 == 0) {
            return null;
        }
        if (context2 instanceof IPluginActivity) {
            if (TextUtils.equals(((IPluginActivity) context2).getPluginPkgName(), str)) {
                return null;
            }
            return context;
        }
        if (context2 instanceof PluginContext) {
            PluginContext pluginContext = (PluginContext) context2;
            if (TextUtils.equals(pluginContext.mPlugin.mPkgName, str)) {
                return null;
            }
            return pluginContext.mOriginContext;
        }
        if (context2 instanceof PluginActivityWrapper) {
            PluginActivityWrapper pluginActivityWrapper = (PluginActivityWrapper) context2;
            if (TextUtils.equals(pluginActivityWrapper.pluginContext.mPlugin.mPkgName, str)) {
                return null;
            }
            return pluginActivityWrapper.mOriginActivity;
        }
        isSupportLibIso(str);
        if (context2 instanceof PluginApplicationWrapper) {
            PluginApplicationWrapper pluginApplicationWrapper = (PluginApplicationWrapper) context2;
            if (TextUtils.equals(pluginApplicationWrapper.mPluginContext.mPlugin.mPkgName, str)) {
                return null;
            }
            return pluginApplicationWrapper.mOriginApplication;
        }
        if (!(context2.getResources() instanceof PluginResources)) {
            if (!(context2 instanceof ContextWrapper)) {
                return context;
            }
            try {
                baseContext = (Context) FieldUtils.readField(context2, "mBase");
            } catch (Throwable unused) {
                baseContext = ((ContextWrapper) context2).getBaseContext();
            }
            return getContextIfNeedWrap(context, baseContext, str);
        }
        PluginResources pluginResources = (PluginResources) context2.getResources();
        try {
            String str2 = (String) FieldUtils.readField(pluginResources, "pluginPkg");
            if (TextUtils.isEmpty(str2)) {
                if (!getAssetPaths(pluginResources.getAssets()).contains(e.F0 + str + "/version")) {
                    return context;
                }
            } else if (!TextUtils.equals(str2, str)) {
                return context;
            }
        } catch (Throwable th) {
            a.c(th);
        }
        return null;
    }

    public static int getIdentifier(Object obj, String str, String str2, String str3, String str4) {
        if (!(obj instanceof Resources)) {
            try {
                return ((Integer) MethodUtils.invokeMethod(obj, "getIdentifier", str, str2, str3)).intValue();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        Resources resources = (Resources) obj;
        if (!TextUtils.equals("android", str3)) {
            str3 = str4;
        }
        return resources.getIdentifier(str, str2, str3);
    }

    public static Resources getResources(Object obj, String str) {
        try {
            Resources resources = (Resources) MethodUtils.invokeMethod(obj, "getResources", new Object[0]);
            if (resources == null) {
                return null;
            }
            if (resources instanceof PluginResources) {
                String str2 = (String) FieldUtils.readField(resources, "pluginPkg");
                if (TextUtils.isEmpty(str2)) {
                    if (getAssetPaths(resources.getAssets()).contains(e.F0 + str + "/version")) {
                        return resources;
                    }
                } else if (TextUtils.equals(str2, str)) {
                    return resources;
                }
            }
            return PluginManager.getInstance().getPlugin(str).mResources;
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Uri getUriForFile(Context context, String str, File file, String str2) {
        try {
            return FileProvider.getUriForFile(file);
        } catch (NoClassDefFoundError unused) {
            return Uri.parse("");
        }
    }

    public static Window getWindow(Activity activity, String str) {
        Window window = activity.getWindow();
        if (window != null) {
            return window;
        }
        try {
            return (Window) MethodUtils.invokeMethod(activity, "getWindow", new Object[0]);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    private static Context getWrapperFromCache(Object obj, String str) {
        WeakReference<Context> weakReference = contextCache.get(str + System.identityHashCode(obj));
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private static void handleAttrAfter(TypedArray typedArray, int[] iArr, int[] iArr2) {
        if (Arrays.equals(iArr, iArr2)) {
            return;
        }
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < iArr.length; i10++) {
            map.put(Integer.valueOf(iArr[i10]), Integer.valueOf(i10));
        }
        HashMap map2 = new HashMap();
        for (int i11 = 0; i11 < iArr2.length; i11++) {
            map2.put((Integer) map.get(Integer.valueOf(iArr2[i11])), Integer.valueOf(i11));
        }
        try {
            int[] iArr3 = (int[]) FieldUtils.readField(typedArray, "mData");
            int[] iArrCopyOf = Arrays.copyOf(iArr3, iArr3.length);
            for (Integer num : map2.keySet()) {
                Integer num2 = (Integer) map2.get(num);
                if (!num.equals(num2)) {
                    System.arraycopy(iArr3, num.intValue() * 7, iArrCopyOf, num2.intValue() * 7, 7);
                }
            }
            System.arraycopy(iArrCopyOf, 0, iArr3, 0, iArr3.length);
        } catch (IllegalAccessException unused) {
            ZeusLogger.errReport(ZeusLogger.TAG_RESOURCES, "read mData failed.");
        }
    }

    private static int[] handleAttrBefore(int[] iArr) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        Arrays.sort(iArrCopyOf);
        return iArrCopyOf;
    }

    public static View inflate(LayoutInflater layoutInflater, int i10, ViewGroup viewGroup, boolean z10, String str) {
        Context context = layoutInflater.getContext();
        if (!(context instanceof PluginContext) && !(context instanceof PluginActivityWrapper)) {
            isSupportLibIso(str);
            if (!(context instanceof PluginApplicationWrapper)) {
                Context contextWrapperContext = wrapperContext(context, str);
                LayoutInflater.Factory factory = layoutInflater.getFactory();
                LayoutInflater.Factory2 factory2 = layoutInflater.getFactory2();
                LayoutInflater layoutInflater2 = (LayoutInflater) contextWrapperContext.getSystemService("layout_inflater");
                if (isSupportLibIso(str)) {
                    if (factory != null) {
                        try {
                            FieldUtils.writeField(layoutInflater2, "mFactory", factory);
                        } catch (Throwable unused) {
                            ZeusLogger.w(ZeusLogger.TAG_RESOURCES, "set Factory failed.");
                        }
                    }
                    if (factory2 != null) {
                        try {
                            FieldUtils.writeField(layoutInflater2, "mFactory2", factory2);
                        } catch (Throwable unused2) {
                            ZeusLogger.w(ZeusLogger.TAG_RESOURCES, "set Factory2 failed.");
                        }
                    }
                }
                layoutInflater = layoutInflater2;
            }
        }
        clearConstructorCache();
        View viewInflate = layoutInflater.inflate(i10, viewGroup, z10);
        clearConstructorCache();
        return viewInflate;
    }

    public static boolean instanceOf(Class cls, Object obj) {
        return instanceOf(obj, cls);
    }

    private static boolean instanceOfFragmentActivity(Object obj) {
        ensureFragmentActivity();
        Class cls = fragmentClazz;
        if (cls == null) {
            return false;
        }
        return cls.isInstance(obj);
    }

    private static boolean isSupportLibIso(String str) {
        try {
            return PluginManager.getInstance().getPlugin(str).mIsSupportLibIso;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int mapRes(int i10, String str, String str2) {
        if (i10 < 2130706432) {
            return i10;
        }
        int identifier = Zeus.getAppApplication().getResources().getIdentifier(str2, str, Zeus.getAppApplication().getPackageName());
        if (identifier == 0) {
            identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.replace("_", o0.f49827a), str, Zeus.getAppApplication().getPackageName());
        }
        if (identifier == 0) {
            ZeusLogger.d(ZeusLogger.TAG_RESOURCES, "Cant find res, resName = " + str2 + ", pluginResId = " + i10);
        }
        return identifier;
    }

    public static TypedArray obtainAttributes(Object obj, AttributeSet attributeSet, int[] iArr, String str) {
        if (!(obj instanceof Resources)) {
            try {
                return (TypedArray) MethodUtils.invokeMethod(obj, "obtainAttributes", attributeSet, iArr);
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        int[] iArrHandleAttrBefore = handleAttrBefore(iArr);
        TypedArray typedArrayObtainAttributes = ((Resources) obj).obtainAttributes(attributeSet, iArrHandleAttrBefore);
        handleAttrAfter(typedArrayObtainAttributes, iArrHandleAttrBefore, iArr);
        return typedArrayObtainAttributes;
    }

    public static TypedArray obtainStyledAttributes(Object obj, AttributeSet attributeSet, int[] iArr, String str) {
        if (!(obj instanceof Context)) {
            try {
                return (TypedArray) MethodUtils.invokeMethod(obj, "obtainStyledAttributes", attributeSet, iArr);
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        int[] iArrHandleAttrBefore = handleAttrBefore(iArr);
        TypedArray typedArrayObtainStyledAttributes = ((Context) obj).obtainStyledAttributes(attributeSet, iArrHandleAttrBefore);
        handleAttrAfter(typedArrayObtainStyledAttributes, iArrHandleAttrBefore, iArr);
        return typedArrayObtainStyledAttributes;
    }

    public static Object preCheckCast(Object obj, Class cls, String str) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Context)) {
            return obj;
        }
        boolean z10 = !cls.isInstance(obj);
        if (equalsFragmentActivity(cls)) {
            return wrapperContext2FragmentActivity(obj, str);
        }
        if (cls == Activity.class) {
            return wrapperContext2Activity(obj, str);
        }
        if (cls == Application.class) {
            return wrapperContext2Application(obj, str);
        }
        if ((obj instanceof PluginContext) && z10) {
            return ((PluginContext) obj).mOriginContext;
        }
        if ((obj instanceof PluginFragmentActivityWrapper) && z10) {
            try {
                try {
                    return ((PluginFragmentActivityWrapper) obj).getOriginActivity();
                } catch (Throwable unused) {
                    return FieldUtils.readField(obj, "mOriginActivity");
                }
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        }
        if ((obj instanceof PluginActivityWrapper) && z10) {
            return ((PluginActivityWrapper) obj).mOriginActivity;
        }
        if ((obj instanceof PluginApplicationWrapper) && z10) {
            return ((PluginApplicationWrapper) obj).mOriginApplication;
        }
        return ((obj instanceof GenerateProxyActivity) && z10) ? ((GenerateProxyActivity) obj).mTargetActivity : obj;
    }

    public static Intent registerReceiver(Object obj, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str) {
        if (obj instanceof Context) {
            return ComponentManager.registerReceiver((Context) obj, pluginBroadcastReceiver, intentFilter, str);
        }
        try {
            return (Intent) MethodUtils.invokeMethod(obj, "registerReceiver", pluginBroadcastReceiver, intentFilter);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void registerZeusActivityStub(String str, String[] strArr, String str2) {
        ComponentManager.registerActivity(str2, str, strArr);
    }

    public static void requestPermissions(Object obj, String[] strArr, int i10, String str) {
        Object field;
        if (obj instanceof IPluginActivity) {
            ((IPluginActivity) obj)._requestPermissions(strArr, i10);
            return;
        }
        if (obj instanceof Activity) {
            try {
                field = FieldUtils.readField(obj, "mOriginActivity");
            } catch (IllegalAccessException unused) {
                field = null;
            }
            if (field != null) {
                obj = field;
            }
        }
        try {
            MethodUtils.invokeMethod(obj, "requestPermissions", strArr, Integer.valueOf(i10));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void setComponentEnabledSetting(PackageManager packageManager, ComponentName componentName, int i10, int i11) {
        try {
            packageManager.setComponentEnabledSetting(componentName, i10, i11);
        } catch (Throwable unused) {
        }
    }

    public static void setResult(Object obj, int i10, Intent intent, String str) {
        if (obj instanceof Activity) {
            try {
                Object field = FieldUtils.readField(obj, "mProxyActivity");
                if (field == null) {
                    field = FieldUtils.readField(obj, "mOriginActivity");
                }
                if (field != null) {
                    MethodUtils.invokeMethod(field, "setResult", Integer.valueOf(i10), intent);
                    return;
                }
            } catch (Exception unused) {
            }
        }
        try {
            MethodUtils.invokeMethod(obj, "setResult", Integer.valueOf(i10), intent);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void startActivity(Object obj, Intent intent, String str) {
        startActivity(obj, intent, null, str);
    }

    public static void startActivityForResult(Object obj, Intent intent, int i10, String str) {
        startActivityForResult(obj, intent, i10, null, str);
    }

    public static ComponentName startService(Object obj, Intent intent, String str) {
        if (obj instanceof Context) {
            return ServiceManagerNative.getInstance().startServiceNative((Context) obj, intent, str);
        }
        try {
            return (ComponentName) MethodUtils.invokeMethod(obj, "startService", intent);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static boolean stopService(Object obj, Intent intent, String str) {
        if (obj instanceof Context) {
            return ServiceManagerNative.getInstance().stopServiceNative((Context) obj, intent, str);
        }
        try {
            return ((Boolean) MethodUtils.invokeMethod(obj, "stopService", intent)).booleanValue();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void supportFragmentWrapper(boolean z10) {
        sSupportFragmentWrapper = z10;
    }

    public static void unbindService(Object obj, ServiceConnection serviceConnection, String str) {
        if (obj instanceof Context) {
            ServiceManagerNative.getInstance().unbindServiceNative(serviceConnection);
            return;
        }
        try {
            MethodUtils.invokeMethod(obj, "unbindService", serviceConnection);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void unregisterReceiver(Object obj, PluginBroadcastReceiver pluginBroadcastReceiver, String str) {
        if (obj instanceof Context) {
            ComponentManager.unregisterReceiver((Context) obj, pluginBroadcastReceiver);
            return;
        }
        try {
            MethodUtils.invokeMethod(obj, "unregisterReceiver", pluginBroadcastReceiver);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Context wrapperContext(Object obj, String str) {
        return wrapperContext(obj, str, null);
    }

    public static Activity wrapperContext2Activity(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Context contextWrapperContext = wrapperContext(obj, str, sb2);
        if (contextWrapperContext instanceof Activity) {
            return (Activity) contextWrapperContext;
        }
        if (contextWrapperContext instanceof PluginContext) {
            return wrapperContext2Activity(((PluginContext) contextWrapperContext).mOriginContext, str);
        }
        sb2.append("SupportFragment=");
        sb2.append(sSupportFragmentWrapper);
        if (!sCanThrowException) {
            return (Activity) obj;
        }
        throw new RuntimeException("强转失败 context:" + obj + " wrapperContext:" + contextWrapperContext + " log:" + ((Object) sb2));
    }

    public static Application wrapperContext2Application(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Context contextWrapperContext = wrapperContext(obj, str, sb2);
        if (contextWrapperContext instanceof Application) {
            return (Application) contextWrapperContext;
        }
        if (contextWrapperContext instanceof PluginContext) {
            return wrapperContext2Application(((PluginContext) contextWrapperContext).mOriginContext, str);
        }
        sb2.append("SupportFragment=");
        sb2.append(sSupportFragmentWrapper);
        if (!sCanThrowException) {
            return (Application) obj;
        }
        throw new RuntimeException("强转失败 context:" + obj + " wrapperContext:" + contextWrapperContext + " log:" + ((Object) sb2));
    }

    private static Object wrapperContext2FragmentActivity(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Context contextWrapperContext = wrapperContext(obj, str, sb2);
        if (!isSupportLibIso(str) && instanceOfFragmentActivity(contextWrapperContext)) {
            return contextWrapperContext;
        }
        if (contextWrapperContext instanceof PluginContext) {
            return wrapperContext2FragmentActivity(((PluginContext) contextWrapperContext).mOriginContext, str);
        }
        sb2.append("SupportFragment=");
        sb2.append(sSupportFragmentWrapper);
        if (!sCanThrowException) {
            return obj;
        }
        throw new RuntimeException("强转失败 context:" + obj + " wrapperContext:" + contextWrapperContext + " log:" + ((Object) sb2));
    }

    public static Object wrapperContextForParams(Object obj, Class cls, String str) {
        if (!(obj instanceof PluginService) && !(obj instanceof PluginIntentService) && (obj instanceof Context)) {
            Context contextConvertProxy2PluginActivity = convertProxy2PluginActivity(wrapperContext(obj, str));
            if (cls.isInstance(contextConvertProxy2PluginActivity)) {
                return contextConvertProxy2PluginActivity;
            }
        }
        return obj;
    }

    public static boolean instanceOf(Object obj, Class cls) {
        Object field;
        if (obj instanceof PluginContext) {
            return cls.isInstance(((PluginContext) obj).mOriginContext);
        }
        if (obj instanceof PluginActivityWrapper) {
            return cls.isInstance(((PluginActivityWrapper) obj).mOriginActivity);
        }
        if (!(obj instanceof PluginFragmentActivityWrapper)) {
            if (obj instanceof PluginApplicationWrapper) {
                return cls.isInstance(((PluginApplicationWrapper) obj).mOriginApplication);
            }
            return obj instanceof GenerateProxyActivity ? cls.isInstance(((GenerateProxyActivity) obj).mTargetActivity) : cls.isInstance(obj);
        }
        try {
            try {
                field = ((PluginFragmentActivityWrapper) obj).getOriginActivity();
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        } catch (Throwable unused) {
            field = FieldUtils.readField(obj, "mOriginActivity");
        }
        return cls.isInstance(field);
    }

    public static void startActivity(Object obj, Intent intent, Bundle bundle, String str) {
        try {
            ComponentManager.startActivity(obj, intent, bundle, str);
        } catch (Throwable th) {
            if (obj instanceof Context) {
                ComponentManager.startActivity((Context) obj, intent, bundle, str);
                return;
            }
            try {
                MethodUtils.invokeMethod(obj, "startActivity", new Object[]{intent, bundle}, new Class[]{Intent.class, Bundle.class});
            } catch (Throwable th2) {
                th2.addSuppressed(th);
                throw new RuntimeException(th2);
            }
        }
    }

    public static void startActivityForResult(Object obj, Intent intent, int i10, Bundle bundle, String str) {
        try {
            ComponentManager.startActivityForResult(obj, intent, i10, bundle, str);
        } catch (Throwable th) {
            if (obj instanceof Activity) {
                ComponentManager.startActivityForResult((Activity) obj, intent, i10, bundle, str);
                return;
            }
            try {
                MethodUtils.invokeMethod(obj, "startActivityForResult", new Object[]{intent, Integer.valueOf(i10), bundle}, new Class[]{Intent.class, Integer.TYPE, Bundle.class});
            } catch (Throwable th2) {
                th2.addSuppressed(th);
                throw new RuntimeException(th2);
            }
        }
    }

    public static Context wrapperContext(Object obj, String str, StringBuilder sb2) {
        Context pluginContext;
        Application application;
        if (Zeus.getAppApplication() == null && (application = (Application) ((Context) obj).getApplicationContext()) != null) {
            Zeus.setAppContext(application);
        }
        if (obj == null) {
            if (sb2 == null) {
                return null;
            }
            sb2.append("context1 == null");
            return null;
        }
        Context wrapperFromCache = getWrapperFromCache(obj, str);
        if (wrapperFromCache != null) {
            if (sb2 != null) {
                sb2.append("cache1:");
                sb2.append(wrapperFromCache);
            }
            return wrapperFromCache;
        }
        Context context = (Context) obj;
        Context contextIfNeedWrap = getContextIfNeedWrap(context, context, str);
        if (contextIfNeedWrap == null) {
            if (sb2 != null) {
                sb2.append("context2 == null");
                sb2.append(obj);
            }
            return context;
        }
        if (!isSupportLibIso(str) && instanceOfFragmentActivity(contextIfNeedWrap) && sSupportFragmentWrapper) {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            try {
                try {
                    pluginContext = new PluginFragmentActivityWrapper((Activity) contextIfNeedWrap, new PluginContext(contextIfNeedWrap, PluginManager.getInstance().getPlugin(str), false));
                    if (sb2 != null) {
                        sb2.append("new PluginFragmentActivityWrapper:");
                        sb2.append(pluginContext);
                    }
                } catch (Throwable unused) {
                    pluginContext = (Context) MethodUtils.invokeConstructor(PluginFragmentActivityWrapper.class, new Object[]{contextIfNeedWrap, new PluginContext(contextIfNeedWrap, PluginManager.getInstance().getPlugin(str), false)}, new Class[]{fragmentClazz, PluginContext.class});
                    if (sb2 != null) {
                        sb2.append("new invokeConstructor:");
                        sb2.append(pluginContext);
                    }
                }
            } catch (Throwable unused2) {
                if (sb2 != null) {
                    sb2.append("context3 == null");
                    sb2.append(contextIfNeedWrap);
                }
                return contextIfNeedWrap;
            }
        } else if (contextIfNeedWrap instanceof Activity) {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            pluginContext = new PluginActivityWrapper((Activity) contextIfNeedWrap, new PluginContext(contextIfNeedWrap, PluginManager.getInstance().getPlugin(str), false));
            if (sb2 != null) {
                sb2.append("new PluginActivityWrapper:");
                sb2.append(pluginContext);
            }
        } else if (contextIfNeedWrap instanceof Application) {
            pluginContext = new PluginApplicationWrapper((Application) contextIfNeedWrap, new PluginContext(contextIfNeedWrap, PluginManager.getInstance().getPlugin(str), true));
            if (sb2 != null) {
                sb2.append("new PluginApplicationWrapper:");
                sb2.append(pluginContext);
            }
        } else {
            pluginContext = new PluginContext(contextIfNeedWrap, PluginManager.getInstance().getPlugin(str), false);
            if (sb2 != null) {
                sb2.append("new PluginContext:");
                sb2.append(pluginContext);
            }
        }
        if (pluginContext != null) {
            contextCache.put(str + System.identityHashCode(contextIfNeedWrap), new WeakReference<>(pluginContext));
        }
        if (sb2 != null) {
            sb2.append("cache2:");
            sb2.append(pluginContext);
        }
        return pluginContext;
    }

    public static Intent registerReceiver(Object obj, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, String str2) {
        if (obj instanceof Context) {
            ZeusLogger.d(ZeusLogger.TAG_RECEIVER, "ZeusTransformUtils-registerReceiver-execute[4 params]");
            return ComponentManager.registerReceiver((Context) obj, pluginBroadcastReceiver, intentFilter, str, handler, str2);
        }
        try {
            return (Intent) MethodUtils.invokeMethod(obj, "registerReceiver", pluginBroadcastReceiver, intentFilter, str, handler);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static TypedArray obtainStyledAttributes(Object obj, AttributeSet attributeSet, int[] iArr, int i10, int i11, String str) {
        if (obj instanceof Context) {
            int[] iArrHandleAttrBefore = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes = ((Context) obj).obtainStyledAttributes(attributeSet, iArrHandleAttrBefore);
            handleAttrAfter(typedArrayObtainStyledAttributes, iArrHandleAttrBefore, iArr);
            return typedArrayObtainStyledAttributes;
        }
        if (obj instanceof Resources.Theme) {
            int[] iArrHandleAttrBefore2 = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes2 = ((Resources.Theme) obj).obtainStyledAttributes(attributeSet, iArrHandleAttrBefore2, i10, i11);
            handleAttrAfter(typedArrayObtainStyledAttributes2, iArrHandleAttrBefore2, iArr);
            return typedArrayObtainStyledAttributes2;
        }
        try {
            return (TypedArray) MethodUtils.invokeMethod(obj, "obtainStyledAttributes", attributeSet, iArr, Integer.valueOf(i10), Integer.valueOf(i11));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void setResult(Object obj, int i10, String str) {
        if (obj instanceof Activity) {
            try {
                Object field = FieldUtils.readField(obj, "mProxyActivity");
                if (field != null) {
                    MethodUtils.invokeMethod(field, "setResult", Integer.valueOf(i10));
                    return;
                }
            } catch (Exception unused) {
                ZeusLogger.d(ZeusLogger.TAG_ACTIVITY, "Cant find mProxyActivity, obj = ".concat(String.valueOf(obj)));
            }
        }
        try {
            MethodUtils.invokeMethod(obj, "setResult", Integer.valueOf(i10));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Intent registerReceiver(Object obj, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, int i10, String str) {
        if (obj instanceof Context) {
            return ComponentManager.registerReceiver((Context) obj, pluginBroadcastReceiver, intentFilter, i10, str);
        }
        try {
            return (Intent) MethodUtils.invokeMethod(obj, "registerReceiver", pluginBroadcastReceiver, intentFilter, Integer.valueOf(i10));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Intent registerReceiver(Object obj, PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i10, String str2) {
        if (obj instanceof Context) {
            return ComponentManager.registerReceiver((Context) obj, pluginBroadcastReceiver, intentFilter, str, handler, i10, str2);
        }
        try {
            return (Intent) MethodUtils.invokeMethod(obj, "registerReceiver", pluginBroadcastReceiver, intentFilter, str, handler, Integer.valueOf(i10));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static View inflate(LayoutInflater layoutInflater, int i10, ViewGroup viewGroup, String str) {
        return inflate(layoutInflater, i10, viewGroup, viewGroup != null, str);
    }

    public static View inflate(LayoutInflater layoutInflater, XmlPullParser xmlPullParser, ViewGroup viewGroup, String str) {
        return inflate(layoutInflater, xmlPullParser, viewGroup, viewGroup != null, str);
    }

    public static TypedArray obtainStyledAttributes(Object obj, int i10, int[] iArr, String str) {
        if (obj instanceof Context) {
            int[] iArrHandleAttrBefore = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes = ((Context) obj).obtainStyledAttributes(i10, iArrHandleAttrBefore);
            handleAttrAfter(typedArrayObtainStyledAttributes, iArrHandleAttrBefore, iArr);
            return typedArrayObtainStyledAttributes;
        }
        if (obj instanceof Resources.Theme) {
            int[] iArrHandleAttrBefore2 = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes2 = ((Resources.Theme) obj).obtainStyledAttributes(i10, iArrHandleAttrBefore2);
            handleAttrAfter(typedArrayObtainStyledAttributes2, iArrHandleAttrBefore2, iArr);
            return typedArrayObtainStyledAttributes2;
        }
        try {
            return (TypedArray) MethodUtils.invokeMethod(obj, "obtainStyledAttributes", Integer.valueOf(i10), iArr);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static View inflate(LayoutInflater layoutInflater, XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z10, String str) {
        Context context = layoutInflater.getContext();
        if (!(context instanceof PluginContext) && !(context instanceof PluginActivityWrapper)) {
            isSupportLibIso(str);
            if (!(context instanceof PluginApplicationWrapper)) {
                context = wrapperContext(context, str);
            }
        }
        LayoutInflater layoutInflater2 = (LayoutInflater) context.getSystemService("layout_inflater");
        clearConstructorCache();
        View viewInflate = layoutInflater2.inflate(xmlPullParser, viewGroup, z10);
        clearConstructorCache();
        return viewInflate;
    }

    public static View inflate(Context context, int i10, ViewGroup viewGroup, String str) {
        if (!(context instanceof PluginContext) && !(context instanceof PluginActivityWrapper)) {
            isSupportLibIso(str);
            if (!(context instanceof PluginApplicationWrapper)) {
                context = wrapperContext(context, str);
            }
        }
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        clearConstructorCache();
        View viewInflate = layoutInflater.inflate(i10, viewGroup);
        clearConstructorCache();
        return viewInflate;
    }

    public static TypedArray obtainStyledAttributes(Object obj, int[] iArr, String str) {
        if (obj instanceof Context) {
            int[] iArrHandleAttrBefore = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes = ((Context) obj).obtainStyledAttributes(iArrHandleAttrBefore);
            handleAttrAfter(typedArrayObtainStyledAttributes, iArrHandleAttrBefore, iArr);
            return typedArrayObtainStyledAttributes;
        }
        if (obj instanceof Resources.Theme) {
            int[] iArrHandleAttrBefore2 = handleAttrBefore(iArr);
            TypedArray typedArrayObtainStyledAttributes2 = ((Resources.Theme) obj).obtainStyledAttributes(iArrHandleAttrBefore2);
            handleAttrAfter(typedArrayObtainStyledAttributes2, iArrHandleAttrBefore2, iArr);
            return typedArrayObtainStyledAttributes2;
        }
        try {
            return (TypedArray) MethodUtils.invokeMethod(obj, "obtainStyledAttributes", iArr, new Class[]{int[].class});
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
