package com.czhj.sdk.common;

import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowInsets;
import com.czhj.devicehelper.DeviceHelper;
import com.czhj.devicehelper.cnoaid.c;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.czhj.sdk.common.Database.SQLiteTrackHelper;
import com.czhj.sdk.common.ThreadPool.RepeatingHandlerRunnable;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.mta.BuriedPointManager;
import com.czhj.sdk.common.network.SigmobRequestUtil;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.AdvertisingId;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.DeviceUtils;
import com.czhj.sdk.common.utils.IdentifierManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.common.utils.SharedPreferencesUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class ClientMetadata implements IdentifierManager.AdvertisingIdChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f25368a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f25369b = WMConstants.TIMER_STAGE_NONE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f25370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile ClientMetadata f25371d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f25372g;
    private int A;
    private boolean B;
    private long C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Location f25373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IdentifierManager f25374f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25375h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f25377j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f25378k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f25379l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f25380m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f25381n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f25382o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f25383p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f25384q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f25385r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25386s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25387t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25388u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f25389v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f25390w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Display f25391x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RepeatingHandlerRunnable f25392y;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25376i = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25393z = false;

    public enum a {
        FORCE_PORTRAIT("portrait"),
        FORCE_LANDSCAPE("landscape"),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");

        private final String mKey;

        a(String str) {
            this.mKey = str;
        }
    }

    private String c() {
        try {
            if (Build.VERSION.SDK_INT > 28 && !Config.sharedInstance().getOaidApiDisable()) {
                if (!TextUtils.isEmpty(this.f25386s)) {
                    return this.f25386s;
                }
                if (this.A <= 10 && !this.B && System.currentTimeMillis() - this.C >= 1000) {
                    this.C = System.currentTimeMillis();
                    this.B = true;
                    this.A++;
                    com.czhj.devicehelper.cnoaid.a.a(this.f25381n, new c() { // from class: com.czhj.sdk.common.ClientMetadata.2
                        @Override // com.czhj.devicehelper.cnoaid.c
                        public void a(Exception exc) {
                            ClientMetadata.this.B = false;
                        }

                        @Override // com.czhj.devicehelper.cnoaid.c
                        public void a(String str) {
                            ClientMetadata.this.B = false;
                            if (TextUtils.isEmpty(str) || str.equalsIgnoreCase(ClientMetadata.this.f25386s)) {
                                return;
                            }
                            ClientMetadata.this.f25386s = str;
                            if (str.equalsIgnoreCase(ClientMetadata.this.f25383p)) {
                                return;
                            }
                            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(ClientMetadata.this.f25381n).edit();
                            editorEdit.putString("oaid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
                            editorEdit.apply();
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private boolean d() {
        return !this.f25381n.getPackageManager().queryIntentActivities(new Intent("android.settings.USAGE_ACCESS_SETTINGS"), 65536).isEmpty();
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        do {
            atomicInteger = f25368a;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    public static Long getBootSystemTime() {
        return Long.valueOf(DeviceUtils.getBootSystemTime());
    }

    public static String getCPUInfo() {
        try {
            return DeviceUtils.getCPUInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getCPUModel() {
        return Build.BOARD;
    }

    public static String getCell_ip() {
        return DeviceUtils.getCell_ip();
    }

    public static String getDeviceBrand() {
        return DeviceUtils.getDeviceBrand();
    }

    public static String getDeviceManufacturer() {
        return DeviceUtils.getDeviceManufacturer();
    }

    public static String getDeviceModel() {
        return DeviceUtils.getDeviceModel();
    }

    public static Integer getDeviceOSLevel() {
        return Integer.valueOf(DeviceUtils.getDeviceOSLevel());
    }

    public static String getDeviceOsVersion() {
        return DeviceUtils.getDeviceOsVersion();
    }

    public static ClientMetadata getInstance() {
        if (f25371d == null) {
            synchronized (ClientMetadata.class) {
                if (f25371d == null) {
                    f25371d = new ClientMetadata();
                }
            }
        }
        return f25371d;
    }

    public static String getMacAddress() {
        try {
            return DeviceHelper.getMacAddress();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static PackageInfo getPackageInfoWithUri(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> getQueryParamMap(Uri uri) {
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            map.put(str, TextUtils.join(",", uri.getQueryParameters(str)));
        }
        return map;
    }

    public static String getUid() {
        return f25372g;
    }

    public static String getUserId() {
        return TextUtils.isEmpty(f25369b) ? WMConstants.TIMER_STAGE_NONE : f25369b;
    }

    public static String getVAID() {
        try {
            return DeviceHelper.getVAID();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isEmulator() {
        try {
            return DeviceUtils.isEmulator();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isPermissionGranted(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context != null && context.checkSelfPermission(str) == 0;
        }
        return true;
    }

    public static boolean isRoot() {
        try {
            return DeviceUtils.isRoot();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void setOAIDCertPem(String str) {
        try {
            com.czhj.devicehelper.msaoaId.a.a(str);
        } catch (Throwable unused) {
            SigmobLog.e("not support OAID Module");
        }
    }

    public static void setOaidCertFileName(String str) {
        try {
            com.czhj.devicehelper.msaoaId.a.b(str);
        } catch (Throwable unused) {
            SigmobLog.e("not support OAID Module");
        }
    }

    public static void setUserId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f25369b = str;
    }

    DownloadManager a() {
        return (DownloadManager) this.f25381n.getSystemService("download");
    }

    public int getActiveNetworkType() {
        try {
            return DeviceUtils.getActiveNetworkType().getId();
        } catch (Throwable unused) {
            return DeviceUtils.NetworkType.UNKNOWN.getId();
        }
    }

    public String getAdvertisingId() {
        return null;
    }

    public String getAndroidId() {
        try {
            return DeviceUtils.getAndroidId(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getApkMd5() {
        try {
            return DeviceUtils.getApkSha1OrMd5(this.f25381n, "MD5");
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getApkSha1() {
        try {
            return DeviceUtils.getApkSha1OrMd5(this.f25381n, "SHA1");
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAppName() {
        return AppPackageUtil.getAppName(this.f25381n);
    }

    public String getAppPackageName() {
        try {
            return AppPackageUtil.getAppPackageName(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAppVersion() {
        try {
            return AppPackageUtil.getAppVersionFromContext(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public Float getBatteryLevel() {
        try {
            return Float.valueOf(DeviceUtils.getBatteryLevel(this.f25381n));
        } catch (Throwable unused) {
            return Float.valueOf(0.0f);
        }
    }

    public Boolean getBatterySaveEnable() {
        try {
            return Boolean.valueOf(DeviceUtils.getBatterySaveEnable(this.f25381n));
        } catch (Throwable unused) {
            return Boolean.FALSE;
        }
    }

    public Integer getBatteryState() {
        try {
            return Integer.valueOf(DeviceUtils.getBatteryState(this.f25381n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getBlueToothName() {
        try {
            return DeviceUtils.getBlueToothName(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getBootId() {
        try {
            if (Config.sharedInstance().isDisableBootMark()) {
                return "";
            }
            if (TextUtils.isEmpty(f25370c)) {
                return f25370c;
            }
            String strReplaceAll = f25370c.replaceAll("\\s*|\t|\r|\n", "");
            f25370c = strReplaceAll;
            if (strReplaceAll.length() > 36) {
                f25370c = f25370c.substring(0, 36);
            }
            SigmobLog.i("getBootId: bootId = " + f25370c);
            return f25370c;
        } catch (Throwable th) {
            SigmobLog.e("getBootId: error = " + th.getMessage());
        }
    }

    public Context getContext() {
        return this.f25381n;
    }

    public int getDensityDpi() {
        try {
            return (int) DeviceUtils.getDensityDpi(this.f25381n);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getDeviceId() {
        try {
            return getDeviceId(-1);
        } catch (Throwable th) {
            SigmobLog.e("getDeviceId:" + th.getMessage());
            return null;
        }
    }

    public Locale getDeviceLocale() {
        try {
            return DeviceUtils.getDeviceLocale(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getDeviceName() {
        try {
            return DeviceUtils.getDeviceName(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenHeightDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenHeightDip(this.f25381n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public Integer getDeviceScreenRealHeightDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenRealHeightDip(this.f25381n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenRealWidthDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenRealWidthDip(this.f25381n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public Integer getDeviceScreenWidthDip() {
        try {
            return Integer.valueOf(DeviceUtils.getDeviceScreenWidthDip(this.f25381n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getDeviceSerial() {
        try {
            return DeviceUtils.getDeviceSerial();
        } catch (Throwable unused) {
            return null;
        }
    }

    public DisplayMetrics getDisplayMetrics() {
        try {
            return DeviceUtils.getDisplayMetrics(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getIMSI() {
        try {
            return DeviceHelper.getIMSI(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getInsetBottom() {
        return this.f25375h;
    }

    public long getInstallTime() {
        return this.f25388u;
    }

    public boolean getLimitAdTrackingEnabled() {
        return false;
    }

    @SuppressLint({"MissingPermission"})
    public Location getLocation() {
        try {
            if (!this.f25382o) {
                return null;
            }
            Location location = this.f25373e;
            if (location != null) {
                return location;
            }
            LocationManager locationManager = getLocationManager();
            if (locationManager != null && DeviceUtils.isCanRetryLocation()) {
                SigmobLog.d("private :use_location ");
                Location lastKnownLocation = locationManager.getLastKnownLocation("passive");
                if (lastKnownLocation != null) {
                    this.f25373e = lastKnownLocation;
                }
            }
        } catch (Exception unused) {
        }
        return this.f25373e;
    }

    public LocationManager getLocationManager() {
        try {
            if (DeviceUtils.isCanUseLocation(this.f25381n)) {
                return (LocationManager) this.f25381n.getSystemService("location");
            }
            return null;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public String getNetworkOperatorForUrl() {
        try {
            return DeviceUtils.getNetworkOperatorForUrl(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getNetworkOperatorName() {
        try {
            return DeviceUtils.getNetworkOperatorName(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getOAID() {
        int disable_up_OAid = Config.sharedInstance().getDisable_up_OAid();
        boolean oaidApiDisable = Config.sharedInstance().getOaidApiDisable();
        if ((disable_up_OAid < 0 || disable_up_OAid > 1) && oaidApiDisable) {
            return null;
        }
        String oaid_sdk = getOAID_SDK();
        if (TextUtils.isEmpty(oaid_sdk) && this.f25393z) {
            oaid_sdk = c();
        }
        if (TextUtils.isEmpty(oaid_sdk) || oaid_sdk.equalsIgnoreCase(this.f25383p)) {
            return this.f25383p;
        }
        this.f25383p = oaid_sdk;
        return oaid_sdk;
    }

    public String getOAID_API() {
        return this.f25386s;
    }

    public String getOAID_SDK() {
        try {
            int disable_up_OAid = Config.sharedInstance().getDisable_up_OAid();
            if (disable_up_OAid != 0) {
                if (disable_up_OAid == 1 && Build.VERSION.SDK_INT >= 23) {
                    return b();
                }
            } else if (Build.VERSION.SDK_INT > 28) {
                return b();
            }
        } catch (Throwable unused) {
        }
        this.B = true;
        return null;
    }

    public Integer getOrientationInt() {
        try {
            return Integer.valueOf(DeviceUtils.getOrientationInt(this.f25381n));
        } catch (Throwable unused) {
            return 0;
        }
    }

    public String getPermission(Context context) {
        StringBuilder sb2;
        String string = "";
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            String[] strArr = packageManager.getPackageInfo(packageName, 4096).requestedPermissions;
            for (int i10 = 0; i10 < strArr.length; i10++) {
                if (packageManager.checkPermission(strArr[i10], packageName) == 0) {
                    if (i10 == strArr.length - 1) {
                        sb2 = new StringBuilder();
                        sb2.append(string);
                        sb2.append(strArr[i10]);
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(string);
                        sb2.append(strArr[i10]);
                        sb2.append(",");
                    }
                    string = sb2.toString();
                }
            }
            SigmobLog.d("permissionReq:" + string);
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return string;
    }

    public DisplayMetrics getRealMetrics() {
        try {
            return DeviceUtils.getRealMetrics(this.f25381n);
        } catch (Throwable unused) {
            return DeviceUtils.getDisplayMetrics(this.f25381n);
        }
    }

    public String getRotation() {
        try {
            return DeviceUtils.getRotation(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getSDCardPath() {
        try {
            return DeviceUtils.getSDCardPath(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getScreenOrientation(Context context) {
        Display display = DeviceUtils.getDisplay(context);
        if (display == null) {
            return 0;
        }
        return display.getRotation();
    }

    public String getStringResources(String str, String str2) {
        return ResourceUtil.getString(this.f25381n, str, str2, new Object[0]);
    }

    public int getStyleResources(String str) {
        return ResourceUtil.getStyleId(this.f25381n, str);
    }

    public Long getSystemTotalMemorySize() {
        try {
            return Long.valueOf(DeviceUtils.getSysteTotalMemorySize(this.f25381n));
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getTargetSdkVersion() {
        try {
            if (!TextUtils.isEmpty(this.f25387t)) {
                return this.f25387t;
            }
            String strValueOf = String.valueOf(this.f25381n.getApplicationInfo().targetSdkVersion);
            this.f25387t = strValueOf;
            return strValueOf;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getUDID() {
        String str = this.f25385r;
        if (str != null) {
            return str;
        }
        this.f25385r = UUID.randomUUID().toString();
        SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f25381n).edit();
        editorEdit.putString("sig_UDID", this.f25385r);
        editorEdit.apply();
        return this.f25385r;
    }

    public String getUpdateId() {
        try {
            if (Config.sharedInstance().isDisableBootMark()) {
                return "";
            }
        } catch (Throwable th) {
            SigmobLog.e("getUpdateId: error = " + th.getMessage());
        }
        return this.f25380m;
    }

    public String getWifiName() {
        try {
            return DeviceHelper.getWifiName(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getWifimac() {
        try {
            return DeviceHelper.getWifimac(this.f25381n);
        } catch (Throwable unused) {
            return null;
        }
    }

    public synchronized void initialize(Context context) {
        String str;
        if (this.f25381n == null) {
            Context applicationContext = context.getApplicationContext();
            this.f25381n = applicationContext;
            long j10 = SharedPreferencesUtil.getSharedPreferences(applicationContext).getLong("install_time", 0L);
            this.f25388u = j10;
            if (j10 == 0) {
                PackageInfo packageInfo = AppPackageUtil.getPackageInfo(context);
                this.f25388u = packageInfo == null ? System.currentTimeMillis() / 1000 : packageInfo.firstInstallTime / 1000;
                SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f25381n).edit();
                editorEdit.putLong("install_time", this.f25388u);
                editorEdit.apply();
            }
            this.f25385r = SharedPreferencesUtil.getSharedPreferences(this.f25381n).getString("sig_UDID", null);
            String string = SharedPreferencesUtil.getSharedPreferences(this.f25381n).getString("uid_aes_gcm", null);
            if (string != null) {
                f25372g = AESUtil.DecryptString(string, Constants.AESKEY);
            } else {
                String string2 = SharedPreferencesUtil.getSharedPreferences(this.f25381n).getString("uid", null);
                f25372g = string2;
                if (string2 != null) {
                    SharedPreferences.Editor editorEdit2 = SharedPreferencesUtil.getSharedPreferences(this.f25381n).edit();
                    editorEdit2.remove("uid");
                    editorEdit2.putString("uid_aes_gcm", AESUtil.EncryptString(f25372g, Constants.AESKEY));
                    editorEdit2.apply();
                }
            }
            String string3 = SharedPreferencesUtil.getSharedPreferences(this.f25381n).getString("oaid_aes_gcm", null);
            if (string3 != null) {
                this.f25383p = AESUtil.DecryptString(string3, Constants.AESKEY);
            } else {
                String string4 = SharedPreferencesUtil.getSharedPreferences(this.f25381n).getString("oaid", null);
                this.f25383p = string4;
                if (string4 != null) {
                    SharedPreferences.Editor editorEdit3 = SharedPreferencesUtil.getSharedPreferences(this.f25381n).edit();
                    editorEdit3.remove("oaid");
                    editorEdit3.putString("oaid_aes_gcm", AESUtil.EncryptString(this.f25383p, Constants.AESKEY));
                    editorEdit3.apply();
                }
            }
            this.f25374f = new IdentifierManager(this.f25381n, this);
            SQLiteMTAHelper.initialize(this.f25381n);
            SQLiteTrackHelper.initialize(this.f25381n);
            BuriedPointManager.getInstance().start();
            try {
                DeviceUtils.registerNetworkChange(this.f25381n);
            } catch (Exception e10) {
                if ((e10.getMessage() == null || !e10.getMessage().contains("Too many requests")) && !e10.getClass().getSimpleName().equals("TooManyRequestsException")) {
                    str = "Failed to register network monitoring: " + e10.getMessage();
                } else {
                    str = "Failed to register network monitoring: registration limit exceeded - " + e10.getMessage();
                }
                SigmobLog.e(str);
            } catch (Throwable th) {
                str = "Failed to register network monitoring: " + th.getMessage();
                SigmobLog.e(str);
            }
            TrackManager.getInstance().startRetryTracking();
            ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.czhj.sdk.common.b
                @Override // java.lang.Runnable
                public final void run() {
                    RomUtils.getRomInfo();
                }
            });
        }
    }

    public boolean isNetworkConnected(String str) {
        try {
            return SigmobRequestUtil.isConnection(new URL(str).getHost());
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean isRetryAble() {
        return this.f25376i;
    }

    public boolean isSDCardAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public boolean isTablet() {
        try {
            return DeviceUtils.isTablet(this.f25381n);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.czhj.sdk.common.utils.IdentifierManager.AdvertisingIdChangeListener
    public void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
    }

    public void setEnableLocation(boolean z10) {
        this.f25382o = z10;
    }

    public void setLocation(Location location) {
        this.f25373e = location;
    }

    public void setRetryAble(boolean z10) {
        this.f25376i = z10;
    }

    public void setUid(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (TextUtils.isEmpty(f25372g) || !str.equalsIgnoreCase(f25372g)) {
                f25372g = str;
                SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(this.f25381n).edit();
                editorEdit.putString("uid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
                editorEdit.apply();
            }
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void setWindInsets(WindowInsets windowInsets) {
        if (windowInsets == null || !windowInsets.isRound()) {
            return;
        }
        this.f25375h = windowInsets.getSystemWindowInsetBottom();
    }

    private String b() {
        if (!TextUtils.isEmpty(this.f25384q)) {
            return this.f25384q;
        }
        try {
            DeviceHelper.getOAID(this.f25381n, new com.czhj.devicehelper.msaoaId.a.InterfaceC0544a() { // from class: com.czhj.sdk.common.ClientMetadata.1
                @Override // com.czhj.devicehelper.msaoaId.a.InterfaceC0544a
                public void a(String str) {
                    if (!TextUtils.isEmpty(str)) {
                        ClientMetadata.this.f25384q = str;
                        if (!str.equalsIgnoreCase(ClientMetadata.this.f25383p)) {
                            SharedPreferences.Editor editorEdit = SharedPreferencesUtil.getSharedPreferences(ClientMetadata.this.f25381n).edit();
                            editorEdit.putString("oaid_aes_gcm", AESUtil.EncryptString(str, Constants.AESKEY));
                            editorEdit.apply();
                        }
                    }
                    ClientMetadata.this.f25393z = true;
                }
            });
        } catch (Throwable unused) {
        }
        return this.f25384q;
    }

    public synchronized String getDeviceId(int i10) {
        try {
            if (TextUtils.isEmpty(this.f25377j) && Build.VERSION.SDK_INT < 29) {
                if (DeviceUtils.isCanUsePhoneState(this.f25381n) && DeviceUtils.isCanRetryIMEI()) {
                    this.f25377j = DeviceHelper.getIMEI(this.f25381n);
                    this.f25378k = DeviceHelper.getIMEI(this.f25381n, 0);
                    this.f25379l = DeviceHelper.getIMEI(this.f25381n, 1);
                }
                return null;
            }
            if (i10 == -1) {
                return this.f25377j;
            }
            if (i10 == 0) {
                return this.f25378k;
            }
            return this.f25379l;
        } catch (Throwable th) {
            SigmobLog.e("getDeviceId:" + th.getMessage());
            return null;
        }
    }

    public String getStringResources(String str, String str2, Object... objArr) {
        return ResourceUtil.getString(this.f25381n, str, str2, objArr);
    }
}
