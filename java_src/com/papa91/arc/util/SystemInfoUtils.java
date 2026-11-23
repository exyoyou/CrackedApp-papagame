package com.papa91.arc.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.byazt.hv.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.kuaishou.weapon.p0.g;
import com.windmill.sdk.point.PointType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SystemInfoUtils {
    static String TAG = "SystemInfoUtils";
    static String androidId = "";
    static String imei = "";
    static String mac;
    static SystemInfoUtils systemInfoUtils;
    Context mContext;

    private SystemInfoUtils(Context context) {
        this.mContext = context;
    }

    public static String getCurrentActivityName(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        return componentName.getPackageName().equals(context.getPackageName()) ? componentName.getClassName() : "";
    }

    public static String getIDFinal() {
        try {
            return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "35";
        }
    }

    public static SystemInfoUtils getInstance(Context context) {
        if (systemInfoUtils == null) {
            systemInfoUtils = new SystemInfoUtils(context);
        }
        return systemInfoUtils;
    }

    private static String getMacFinal() {
        String iDFinal = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            String string = "";
            while (networkInterfaces.hasMoreElements()) {
                try {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null && hardwareAddress.length != 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : hardwareAddress) {
                            sb2.append(String.format("%02X:", Byte.valueOf(b10)));
                        }
                        if (sb2.length() > 0) {
                            sb2.deleteCharAt(sb2.length() - 1);
                        }
                        string = sb2.toString();
                        if ("wlan0".equals(networkInterfaceNextElement.getName())) {
                            iDFinal = string;
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("interfaceName=");
                        sb3.append(networkInterfaceNextElement.getName());
                        sb3.append(", mac=");
                        sb3.append(string);
                    }
                } catch (Exception unused) {
                    iDFinal = string;
                    if (StringUtils.isEmpty(iDFinal)) {
                        iDFinal = getIDFinal();
                    }
                }
            }
            if (!StringUtils.isNotEmpty(iDFinal)) {
                iDFinal = string;
            }
        } catch (Exception unused2) {
        }
        return StringUtils.isEmpty(iDFinal) ? getIDFinal() : iDFinal;
    }

    public static String getProcessName() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            String strTrim = bufferedReader.readLine().trim();
            bufferedReader.close();
            return strTrim;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int getStatusBarHeight(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static Activity getTopActivity() {
        try {
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
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchFieldException e12) {
            e12.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
        }
        return null;
    }

    public static boolean isBackground(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            return (runningTasks.isEmpty() || runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName())) ? false : true;
        } catch (Exception unused) {
        }
    }

    public static boolean isSplash(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            if (!runningTasks.isEmpty()) {
                ComponentName componentName = runningTasks.get(0).topActivity;
                if (!componentName.getPackageName().equals(context.getPackageName()) && componentName.getClassName().equals("com.join.mgps.activity_SplashActivity")) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public void checkWifiStatePermission(Context context, int i10) {
        if (ContextCompat.checkSelfPermission(context, g.f74780d) != 0) {
            ActivityCompat.requestPermissions((Activity) context, new String[]{g.f74780d}, i10);
        }
    }

    public String getAndroidId(Context context) {
        if (context != null && TextUtils.isEmpty(androidId)) {
            androidId = Settings.System.getString(context.getContentResolver(), "android_id");
        }
        return androidId;
    }

    public String getAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public float getDensity() {
        new DisplayMetrics();
        return this.mContext.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public String getDeviceId() {
        try {
            if (StringUtils.isEmpty(imei) || imei.startsWith(PointType.WIND_ADAPTER) || imei.equals(mac.replaceAll(":", ""))) {
                String deviceId = ((TelephonyManager) this.mContext.getSystemService("phone")).getDeviceId();
                imei = deviceId;
                if (StringUtils.isEmpty(deviceId) || imei.equals("0")) {
                    imei = getMacAddress().replaceAll(":", "");
                }
            }
        } catch (Exception unused) {
            imei = getMacAddress().replaceAll(":", "");
        }
        return imei;
    }

    public float getHWBeliel(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f10 = displayMetrics.widthPixels;
        float f11 = displayMetrics.heightPixels;
        return f10 > f11 ? f10 / f11 : f11 / f10;
    }

    public int getHeight(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public String getInfo() {
        String deviceId;
        String subscriberId;
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        String line1Number = "";
        try {
            deviceId = telephonyManager.getDeviceId();
        } catch (Exception e10) {
            e10.printStackTrace();
            deviceId = "";
        }
        try {
            subscriberId = telephonyManager.getSubscriberId();
        } catch (Exception e11) {
            e11.printStackTrace();
            subscriberId = "";
        }
        String str = Build.MODEL;
        String str2 = Build.BRAND;
        try {
            line1Number = telephonyManager.getLine1Number();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return "[version:" + getVersionName() + ",imei:" + deviceId + ",imsi:" + subscriberId + ",model:" + str + ",brand:" + str2 + ",number:" + line1Number + "]";
    }

    public String getMacAddress() {
        try {
            if (StringUtils.isNotEmpty(mac)) {
                return mac;
            }
            String macAddress = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
            mac = macAddress;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("手机macAdd:");
            sb2.append(macAddress);
            String str = mac;
            if (str == null || str.equals("") || mac.equals("02:00:00:00:00:00")) {
                mac = getMacFinal();
            }
            return mac;
        } catch (Exception unused) {
            String str2 = mac;
            if (str2 == null || str2.equals("") || mac.equals("02:00:00:00:00:00")) {
                mac = getMacFinal();
            }
        }
    }

    public String getMobileMODEL() {
        return Build.MODEL;
    }

    public String getMobileSystenmVersion() {
        return Build.VERSION.RELEASE;
    }

    public String getVendor() {
        return Build.BRAND;
    }

    public int getVersionCode() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String getVersionName() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String[] getVersionNameArray() {
        String[] strArr = new String[2];
        try {
            PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
            strArr[0] = packageInfo.versionCode + "";
            strArr[1] = packageInfo.versionName;
            return strArr;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return strArr;
        }
    }

    public int getWidth(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public float getDensity(Context context) {
        new DisplayMetrics();
        return context.getApplicationContext().getResources().getDisplayMetrics().density;
    }
}
