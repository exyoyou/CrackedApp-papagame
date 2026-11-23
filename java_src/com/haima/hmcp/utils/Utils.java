package com.haima.hmcp.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.hv.TTDownloadField;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.BaseMessageBean;
import com.haima.hmcp.beans.VirtualGamePadPullPayResult;
import com.haima.hmcp.beans.report.CountlyEventId;
import com.haima.hmcp.beans.report.ReportStreamTypeResult;
import com.haima.hmcp.business.WebSocketInstanceType;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.SwitchStreamTypeError;
import com.haima.hmcp.listeners.OnSwitchStreamTypeListener;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Utils {
    private static final float ALLOCATE_BUFFER = 3145728.0f;
    private static final String TAG = "Utils";
    private static boolean sIsAllowGetIP;

    public static int apkTypeString2Int(String str) {
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        if (ConstantsInternal.APK_TYPE_POOLED_WITH_RESTART.equals(str)) {
            return 1;
        }
        if (ConstantsInternal.APK_TYPE_POOLED_WITHOUT_RESTART.equals(str)) {
            return 2;
        }
        ConstantsInternal.APK_TYPE_NOT_POOLED.equals(str);
        return 3;
    }

    public static boolean checkIsVirtualGamePadPullPayMessage(String str) {
        BaseMessageBean baseMessageBean;
        VirtualGamePadPullPayResult virtualGamePadPullPayResult;
        return !TextUtils.isEmpty(str) && str.contains(ConstantsInternal.MESSAGE_TYPE_VIRTUAL_GAME_PAD) && str.contains("action") && str.contains(ConstantsInternal.MESSAGE_ACTION_PULL_UP_PAY) && (baseMessageBean = (BaseMessageBean) JsonUtil.parseObject(str, BaseMessageBean.class)) != null && !TextUtils.isEmpty(baseMessageBean.data) && (virtualGamePadPullPayResult = (VirtualGamePadPullPayResult) JsonUtil.parseObject(baseMessageBean.data, VirtualGamePadPullPayResult.class)) != null && ConstantsInternal.MESSAGE_ACTION_PULL_UP_PAY.equals(virtualGamePadPullPayResult.action);
    }

    public static boolean countlyMessage(WebSocketInstanceType webSocketInstanceType, String str) {
        boolean z10 = false;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                if (!JsonUtil.isJsonObject(str)) {
                    return false;
                }
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("countly")) {
                    return false;
                }
                z10 = true;
                String string = jSONObject.getString("countly");
                if (TextUtils.isEmpty(string) || !JsonUtil.isJsonObject(str)) {
                    return true;
                }
                JSONObject jSONObject2 = new JSONObject(string);
                String strOptString = jSONObject2.optString("event_id", "");
                String strOptString2 = jSONObject2.optString("data", "");
                if (!TextUtils.isEmpty(strOptString)) {
                    CountlyUtil.recordEvent(strOptString, webSocketInstanceType.getType() + ";" + strOptString2);
                }
                return true;
            } catch (JSONException e10) {
                LogUtils.e(TAG, "error:" + e10.getMessage());
            }
        } catch (Throwable unused) {
        }
        return z10;
    }

    public static String exceptionStackTrace(Exception exc) {
        if (exc == null) {
            return "Null Exception";
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(exc.toString());
            sb2.append("\n");
            if (exc.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                    sb2.append(stackTraceElement.toString());
                    sb2.append("\n");
                }
            }
            return URLEncoder.encode(sb2.toString(), "utf-8");
        } catch (Exception unused) {
            return "BAD Exception";
        }
    }

    public static boolean getBooleanFromBundle(Bundle bundle, String str) {
        return getBooleanFromBundle(bundle, str, false);
    }

    public static ScreenOrientation getConvertOrientation(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                }
            }
            return ScreenOrientation.LANDSCAPE;
        }
        return ScreenOrientation.PORTRAIT;
    }

    public static float getFloatFromBundle(Bundle bundle, String str) {
        return getFloatFromBundle(bundle, str, 0.0f);
    }

    public static int getIntFromBundle(Bundle bundle, String str) {
        return getIntFromBundle(bundle, str, 0);
    }

    public static String getIpv6AddressStyle(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "[" + str + "]";
    }

    public static int getKeyCode(float f10, float f11) {
        if (f10 <= 0.0f) {
            if (f11 <= 0.0f) {
                return f10 > f11 ? 83 : 65;
            }
            return f10 + f11 > 0.0f ? 87 : 65;
        }
        if (f11 <= 0.0f) {
            return f10 + f11 < 0.0f ? 83 : 68;
        }
        return f10 < f11 ? 87 : 68;
    }

    public static long getLongFromBundle(Bundle bundle, String str) {
        return getLongFromBundle(bundle, str, 0L);
    }

    public static String getStringFromBundle(Bundle bundle, String str) {
        return getStringFromBundle(bundle, str, "");
    }

    public static long getSysFreeMemory() {
        return Runtime.getRuntime().freeMemory();
    }

    public static long getSysMaxMemory() {
        return Runtime.getRuntime().maxMemory();
    }

    public static int getSysOrientationRotation(Context context) {
        if (context == null) {
            return -1;
        }
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static long getSysTotalMemory() {
        return Runtime.getRuntime().totalMemory();
    }

    public static Activity getTopActOrNull() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        Field declaredField = cls.getDeclaredField("mActivities");
        declaredField.setAccessible(true);
        for (Object obj : ((Map) declaredField.get(objInvoke)).values()) {
            Class<?> cls2 = obj.getClass();
            Field declaredField2 = cls2.getDeclaredField("paused");
            declaredField2.setAccessible(true);
            if (!declaredField2.getBoolean(obj)) {
                Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                declaredField3.setAccessible(true);
                return (Activity) declaredField3.get(obj);
            }
        }
        return null;
    }

    public static boolean isAllowAllocate(int i10) {
        float sysMaxMemory = getSysMaxMemory();
        float sysFreeMemory = getSysFreeMemory();
        float sysTotalMemory = getSysTotalMemory();
        if (Constants.IS_DEBUG) {
            StringBuffer stringBuffer = new StringBuffer();
            Locale locale = Locale.US;
            stringBuffer.append(String.format(locale, "maxMemory: %.2f MB", Float.valueOf(sysMaxMemory / 1048576.0f)));
            stringBuffer.append("; ");
            stringBuffer.append(String.format(locale, "totalMemory: %.2f MB", Float.valueOf(sysTotalMemory / 1048576.0f)));
            stringBuffer.append("; ");
            Object[] objArr = new Object[1];
            objArr[0] = Float.valueOf(sysFreeMemory > 0.0f ? (int) (sysFreeMemory / 1048576.0f) : sysFreeMemory);
            stringBuffer.append(String.format(locale, "freeMemory: %.2f MB", objArr));
            stringBuffer.append("; ");
            stringBuffer.append(String.format(locale, "needAllocate: %.2f MB", Float.valueOf(i10 / 1048576.0f)));
            LogUtils.d(Utils.class.getSimpleName(), "ScreenShot->check memory, " + ((Object) stringBuffer));
        }
        float f10 = i10;
        boolean z10 = sysMaxMemory - (sysTotalMemory - sysFreeMemory) > ALLOCATE_BUFFER + f10;
        if (!z10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            Locale locale2 = Locale.US;
            stringBuffer2.append(String.format(locale2, "maxMemory: %.2f MB", Float.valueOf(sysMaxMemory / 1048576.0f)));
            stringBuffer2.append("; ");
            stringBuffer2.append(String.format(locale2, "totalMemory: %.2f MB", Float.valueOf(sysTotalMemory / 1048576.0f)));
            stringBuffer2.append("; ");
            Object[] objArr2 = new Object[1];
            if (sysFreeMemory > 0.0f) {
                sysFreeMemory = (int) (sysFreeMemory / 1048576.0f);
            }
            objArr2[0] = Float.valueOf(sysFreeMemory);
            stringBuffer2.append(String.format(locale2, "freeMemory: %.2f MB", objArr2));
            stringBuffer2.append("; ");
            stringBuffer2.append(String.format(locale2, "needAllocate: %.2f MB", Float.valueOf(f10 / 1048576.0f)));
            CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_SHOT_NOT_ENOUGH_MEMORY, stringBuffer2.toString());
        }
        return z10;
    }

    public static boolean isHostName(@Nullable String str) {
        return (str == null || !Patterns.DOMAIN_NAME.matcher(str).matches() || isValidIPV4Address(str) || isIPv6Address(str)) ? false : true;
    }

    public static boolean isIPv6Address(@NonNull String str) {
        return Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$").matcher(str).matches() || Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$").matcher(str).matches();
    }

    public static boolean isInMainThread() {
        try {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isIpv4Address(String str) {
        try {
            return str.split("\\.").length == 4 && !str.contains(":");
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isIpv4AddressWithPort(String str) {
        if (TextUtils.isEmpty(str) || str.split("\\.").length != 4) {
            return false;
        }
        return str.split(":").length == 2 || !str.contains(":");
    }

    public static boolean isIpv6Address(@NonNull String str) {
        return (str == null || str.indexOf(58) == -1) ? false : true;
    }

    public static boolean isTV() {
        return Constants.ANDROID_TYPE == 8;
    }

    public static boolean isValidIPV4Address(@NonNull String str) {
        Pattern patternCompile = Pattern.compile("(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|(0|1)\\d{2}|2[0-4]\\d|25[0-5])");
        if (str == null) {
            return false;
        }
        return patternCompile.matcher(str).matches();
    }

    public static boolean matchModel(boolean z10, String str, boolean z11, boolean z12) {
        int i10;
        int i11;
        String strReplace = Build.MODEL.replace(",", "");
        LogUtils.d(TAG, "Filter Model for useShareContext: " + str + ", " + z10 + ", Model: " + strReplace + ", os level: " + Build.VERSION.SDK_INT);
        if (TextUtils.isEmpty(strReplace)) {
            return z11;
        }
        for (String str2 : str.split("]")) {
            String strReplace2 = str2.replace("[", "");
            if (!TextUtils.isEmpty(strReplace2)) {
                String[] strArrSplit = strReplace2.split(",");
                if (strArrSplit.length < 2) {
                    continue;
                } else if (z12) {
                    if (strReplace.equalsIgnoreCase(strArrSplit[0].trim()) && (i11 = Integer.parseInt(strArrSplit[1].trim())) > 0 && Build.VERSION.SDK_INT <= i11) {
                        return z10;
                    }
                } else if (strReplace.contains(strArrSplit[0].trim()) && (i10 = Integer.parseInt(strArrSplit[1].trim())) > 0 && Build.VERSION.SDK_INT <= i10) {
                    return z10;
                }
            }
        }
        return z11;
    }

    public static boolean notSameValueAndUpdate(Map<String, Object> map, String str, Object obj) {
        boolean z10 = true;
        if (map == null) {
            return true;
        }
        if (map.containsKey(str) && Objects.equals(map.get(str), obj)) {
            z10 = false;
        }
        map.put(str, obj);
        return z10;
    }

    public static String objectId(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return "" + System.identityHashCode(obj);
        } catch (Exception unused) {
            return "Exception.null";
        }
    }

    public static void removeFromMap(String str, Map<String, ? extends Object> map) {
        if (map == null || !map.containsKey(str)) {
            return;
        }
        Iterator<String> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (TextUtils.equals(str, it2.next())) {
                it2.remove();
                map.remove(str);
                return;
            }
        }
    }

    public static String safeToSocketString(Socket socket) {
        try {
            return toSocketString(socket);
        } catch (Exception e10) {
            return e10.toString();
        }
    }

    public static void switchStreamTypeResultCallback(StreamType streamType, int i10, boolean z10, OnSwitchStreamTypeListener onSwitchStreamTypeListener, SwitchStreamTypeError switchStreamTypeError) {
        ReportStreamTypeResult reportStreamTypeResult = new ReportStreamTypeResult();
        reportStreamTypeResult.setStreamType(streamType == null ? "null" : streamType.name());
        reportStreamTypeResult.setSwitchCode(i10);
        reportStreamTypeResult.setSuccess(z10);
        if (switchStreamTypeError != null) {
            reportStreamTypeResult.setErrorCode(switchStreamTypeError.getErrorCode());
            reportStreamTypeResult.setErrorMsg(switchStreamTypeError.getErrorMsg());
        }
        if (onSwitchStreamTypeListener != null) {
            if (z10) {
                onSwitchStreamTypeListener.onSuccess();
            } else {
                if (switchStreamTypeError == null) {
                    switchStreamTypeError = SwitchStreamTypeError.UNKNOWN;
                }
                onSwitchStreamTypeListener.onFailed(switchStreamTypeError.getErrorCode(), switchStreamTypeError.getErrorMsg());
            }
        }
        CountlyUtil.recordEvent(CountlyEventId.SWITCH_STREAM_TYPE_RESULT, JsonUtil.toJsonString(reportStreamTypeResult));
    }

    public static String toSocketString(Socket socket) {
        InetAddress localAddress;
        InetAddress inetAddress;
        SocketAddress localSocketAddress;
        SocketAddress remoteSocketAddress;
        if (socket == null) {
            return "NULL";
        }
        if (sIsAllowGetIP) {
            localAddress = socket.getLocalAddress();
            inetAddress = socket.getInetAddress();
            localSocketAddress = socket.getLocalSocketAddress();
            remoteSocketAddress = socket.getRemoteSocketAddress();
        } else {
            localAddress = null;
            inetAddress = null;
            localSocketAddress = null;
            remoteSocketAddress = null;
        }
        Object[] objArr = new Object[8];
        objArr[0] = objectId(socket);
        objArr[1] = socket.toString();
        objArr[2] = localAddress != null ? localAddress.toString() : "NULL";
        objArr[3] = inetAddress != null ? inetAddress.toString() : "NULL";
        objArr[4] = localSocketAddress != null ? localSocketAddress.toString() : "NULL";
        objArr[5] = remoteSocketAddress != null ? remoteSocketAddress.toString() : "NULL";
        objArr[6] = Boolean.valueOf(socket.isConnected());
        objArr[7] = Boolean.valueOf(socket.isClosed());
        return String.format("--- Socket-%s: %s localAddr: %s, inetAddr: %s, localSockAddr: %s, remotSockAddr: %s, connected: %s, closed: %s ---", objArr);
    }

    public static boolean getBooleanFromBundle(Bundle bundle, String str, boolean z10) {
        return (bundle == null || !bundle.containsKey(str)) ? z10 : bundle.getBoolean(str, z10);
    }

    public static float getFloatFromBundle(Bundle bundle, String str, float f10) {
        return (bundle == null || !bundle.containsKey(str)) ? f10 : bundle.getFloat(str, f10);
    }

    public static int getIntFromBundle(Bundle bundle, String str, int i10) {
        return (bundle == null || !bundle.containsKey(str)) ? i10 : bundle.getInt(str, i10);
    }

    public static long getLongFromBundle(Bundle bundle, String str, long j10) {
        return (bundle == null || !bundle.containsKey(str)) ? j10 : bundle.getLong(str, j10);
    }

    public static String getStringFromBundle(Bundle bundle, String str, String str2) {
        return (bundle == null || !bundle.containsKey(str)) ? str2 : bundle.getString(str, str2);
    }

    public static String safeToSocketString(String str, InetAddress inetAddress, SocketAddress socketAddress) {
        try {
            return toSocketString(str, inetAddress, socketAddress);
        } catch (Exception e10) {
            return e10.toString();
        }
    }

    public static String toSocketString(String str, InetAddress inetAddress, SocketAddress socketAddress) {
        Object[] objArr = new Object[3];
        if (str == null) {
            str = "NULL";
        }
        objArr[0] = str;
        objArr[1] = inetAddress != null ? inetAddress.toString() : "NULL";
        objArr[2] = socketAddress != null ? socketAddress.toString() : "NULL";
        return String.format("---  localIp: %s, inetAddr: %s, remotSockAddr: %s,  ---", objArr);
    }
}
