package com.haima.hmcp.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.content.PermissionChecker;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.AndroidInfo;
import com.haima.hmcp.beans.DeviceInfo;
import com.haima.hmcp.beans.ScreenInfo;
import com.haima.hmcp.countly.CountlyUtil;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ConfigUtil {
    private static final String TAG = "ConfigUtil";

    @RequiresApi(api = 28)
    public static float[] getCutOutsHeightPercent(@NonNull Activity activity) {
        View decorView;
        float[] fArr = {0.0f, 0.0f};
        if (activity == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return fArr;
        }
        WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
        if (rootWindowInsets == null) {
            LogUtils.d(TAG, "getCutOutsHeightPercent cannot get WindowInsets");
            return fArr;
        }
        DisplayCutout displayCutout = rootWindowInsets.getDisplayCutout();
        if (displayCutout == null) {
            LogUtils.d(TAG, "getCutOutsHeightPercent cannot get DisplayCutout");
            return fArr;
        }
        List boundingRects = displayCutout.getBoundingRects();
        if (boundingRects == null || boundingRects.size() == 0) {
            LogUtils.d(TAG, "getCutOutsHeightPercent cannot get cutOutAreas");
            return fArr;
        }
        int size = boundingRects.size();
        int screenWidth = getScreenWidth(activity);
        int screenHeight = getScreenHeight(activity);
        Rect rect = (Rect) boundingRects.get(0);
        if (screenWidth < screenHeight) {
            if (size == 1) {
                fArr[0] = (rect.bottom - rect.top) / screenHeight;
                LogUtils.d(TAG, "getCutOutsHeightPercent first cutout in portrait rectRange :" + rect.toString());
            } else {
                Rect rect2 = (Rect) boundingRects.get(1);
                int i10 = rect.bottom - rect.top;
                int i11 = rect2.bottom - rect2.top;
                float f10 = screenHeight;
                fArr[0] = i10 / f10;
                fArr[1] = i11 / f10;
                LogUtils.d(TAG, "getCutOutsHeightPercent second cutout in portrait rectRange :" + rect2.toString());
            }
        } else if (size == 1) {
            fArr[0] = (rect.right - rect.left) / screenWidth;
            LogUtils.d(TAG, "getCutOutsHeightPercent first cutout in landscape rectRange :" + rect.toString());
        } else {
            Rect rect3 = (Rect) boundingRects.get(1);
            int i12 = rect.right - rect.left;
            int i13 = rect3.right - rect3.left;
            float f11 = screenWidth;
            fArr[0] = i12 / f11;
            fArr[1] = i13 / f11;
            LogUtils.d(TAG, "getCutOutsHeightPercent second cutout in landscape rectRange :" + rect3.toString());
        }
        return fArr;
    }

    private static int getDPI(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            try {
                Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
                return displayMetrics.densityDpi;
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static DeviceInfo getDeviceInfo(Context context) {
        String str = Build.MODEL;
        String str2 = Build.BRAND;
        String str3 = Build.VERSION.RELEASE;
        DeviceInfo deviceInfo = new DeviceInfo();
        deviceInfo.osType = Constants.ANDROID_TYPE;
        deviceInfo.osVersion = str3;
        deviceInfo.brand = str2;
        deviceInfo.model = str;
        deviceInfo.language = context.getResources().getConfiguration().locale.getLanguage();
        deviceInfo.isWifi = "0";
        deviceInfo.osName = "Android";
        getNetworkName(context, deviceInfo);
        deviceInfo.androidInfo = new AndroidInfo(context);
        deviceInfo.screenInfo = getScreenInfo(context);
        return deviceInfo;
    }

    private static void getNetworkName(Context context, DeviceInfo deviceInfo) {
        String networkMobileName;
        int subtype;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                boolean z10 = true;
                if (type == 1) {
                    deviceInfo.networkType = t7.a.f97141e;
                    deviceInfo.isWifi = "1";
                } else if (type == 0) {
                    TelephonyManager telephonyManager = getTelephonyManager(context.getApplicationContext());
                    String subtypeName = activeNetworkInfo.getSubtypeName();
                    if (telephonyManager == null) {
                        subtype = activeNetworkInfo.getSubtype();
                        networkMobileName = NetworkUtil.getMobileNetworkTypeName(subtype, subtypeName);
                    } else {
                        int networkType = telephonyManager.getNetworkType();
                        networkMobileName = NetworkUtil.getNetworkMobileName(context.getApplicationContext(), telephonyManager, subtypeName);
                        subtype = networkType;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("telephonyManager is null:");
                    if (telephonyManager != null) {
                        z10 = false;
                    }
                    sb2.append(z10);
                    sb2.append(",subType:");
                    sb2.append(subtype);
                    sb2.append(",subTypeName:");
                    sb2.append(subtypeName);
                    sb2.append(",networkTypeName:");
                    sb2.append(networkMobileName);
                    CountlyUtil.recordErrorEvent(sb2.toString());
                    deviceInfo.networkType = networkMobileName;
                }
            }
            CountlyUtil.mNetStatus = deviceInfo.networkType;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int getScreenHeight(Context context) {
        Point point = new Point();
        getScreenSize(context, point);
        return point.y;
    }

    private static ScreenInfo getScreenInfo(Context context) {
        int dpi = getDPI(context);
        Point point = new Point();
        getScreenSize(context, point);
        ScreenInfo screenInfo = new ScreenInfo();
        screenInfo.dpi = dpi + "";
        if (point.x > point.y) {
            screenInfo.resolution = point.x + "x" + point.y;
        } else {
            screenInfo.resolution = point.y + "x" + point.x;
        }
        return screenInfo;
    }

    public static void getScreenSize(Context context, Point point) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            point.x = displayMetrics.widthPixels;
            point.y = displayMetrics.heightPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int getScreenWidth(Context context) {
        Point point = new Point();
        getScreenSize(context, point);
        return point.x;
    }

    public static TelephonyManager getTelephonyManager(Context context) {
        if (PermissionChecker.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74779c) != 0) {
            LogUtils.e(TAG, "READ_PHONE_STATE permission is not granted");
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        LogUtils.d(TAG, "READ_PHONE_STATE permission granted");
        return telephonyManager;
    }

    public static String getVersion() {
        return Constants.SDK_VERSION;
    }

    public static boolean isAllowedPlay(int i10) {
        try {
            int i11 = !TextUtils.isEmpty(Constants.MINIMUM_BITRATE) ? Integer.parseInt(Constants.MINIMUM_BITRATE) : 0;
            LogUtils.d(TAG, "isAllowedPlay min = " + i11 + " speed = " + i10);
            return i11 < i10;
        } catch (NumberFormatException e10) {
            CountlyUtil.recordErrorEvent("ConfigUtil::isAllowedPlay::" + Log.getStackTraceString(e10));
            e10.printStackTrace();
            return true;
        }
    }

    public static void updateNetInfo(Context context) {
        getNetworkName(context, new DeviceInfo());
    }
}
