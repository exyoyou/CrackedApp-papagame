package com.byakv.z;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.media.MediaDrm;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.android.dex.DexFormat;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.nys.tt;
import com.byazt.qi.a;
import com.byazt.qi.i;
import com.byazt.qi.x;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.sigmob.sdk.archives.tar.e;
import com.umeng.analytics.pro.bm;
import com.windmill.sdk.WMConstants;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class SoftDecTool {
    public static final String SP_NAME = "softdec";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f11366a = false;
    public static volatile double acs = -1.0d;
    public static volatile long act;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SharedPreferences f11367c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile boolean f11368f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile boolean f11369h;
    public static volatile String sp;
    public static boolean tt;
    public static volatile String uj;
    public static final AtomicBoolean ve = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile int f11370n = 0;
    public static long LastReportTooltypeTime = System.currentTimeMillis();
    public static Map<Integer, Integer> codeIdCountMap = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @DungeonFlag
    public static int b() throws Throwable {
        InputStream inputStream;
        ZipFile zipFile;
        InputStream inputStream2;
        boolean zEquals;
        String strN = a.n();
        if (strN.isEmpty()) {
            return 1;
        }
        ?? r10 = 11;
        r10 = 11;
        r10 = 11;
        InputStream inputStream3 = null;
        try {
            zipFile = new ZipFile(strN + "/apk/base-1.apk");
            try {
                InputStream inputStream4 = zipFile.getInputStream(zipFile.getEntry(DexFormat.DEX_IN_JAR_NAME));
                try {
                    String strC = c(inputStream4);
                    String str = strC.substring(strC.length() / 2) + strC.substring(0, strC.length() / 2);
                    ZipEntry entry = zipFile.getEntry("assets/pangle_vp_config.db");
                    if (entry != null) {
                        inputStream3 = zipFile.getInputStream(entry);
                        byte[] bArr = new byte[inputStream3.available()];
                        inputStream3.read(bArr);
                        zEquals = new String(bArr).equals(str);
                    }
                    if (inputStream4 != null) {
                        try {
                            r10 = zEquals;
                            inputStream4.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused2) {
                        }
                    }
                } catch (Exception unused3) {
                    InputStream inputStream5 = inputStream3;
                    inputStream3 = inputStream4;
                    inputStream2 = inputStream5;
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused5) {
                        }
                    }
                    if (zipFile != null) {
                    }
                    return r10;
                } catch (Throwable th) {
                    th = th;
                    InputStream inputStream6 = inputStream3;
                    inputStream3 = inputStream4;
                    inputStream = inputStream6;
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused7) {
                        }
                    }
                    if (zipFile == null) {
                        throw th;
                    }
                    try {
                        zipFile.close();
                        throw th;
                    } catch (IOException unused8) {
                        throw th;
                    }
                }
            } catch (Exception unused9) {
                inputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        } catch (Exception unused10) {
            inputStream2 = null;
            zipFile = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            zipFile = null;
        }
        try {
            zipFile.close();
        } catch (IOException unused11) {
        }
        return r10;
    }

    @HungeonFlag
    public static native Object b(int i10, Object[] objArr);

    public static native byte[] bc(int i10, byte[] bArr);

    @DungeonFlag
    public static synchronized Object cn(int i10, Object[] objArr) {
        if (!i.tt()) {
            return null;
        }
        return b(i10, objArr);
    }

    @DungeonFlag
    public static void cs(String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("sofchara", str).putLong(bm.aM, System.currentTimeMillis()).apply();
        }
    }

    @DungeonFlag
    public static String dgb() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c(Build.BOARD, "ro.product.board"));
        sb2.append(c(Build.MODEL, "ro.product.model"));
        sb2.append(c(Build.VERSION.RELEASE, "ro.build.version.release"));
        sb2.append(c(Build.MANUFACTURER, "ro.product.manufacturer"));
        sb2.append(c(Build.DISPLAY, "ro.build.display.id"));
        long j10 = Build.TIME;
        long j11 = Long.parseLong(a.c("ro.build.date.utc", WMConstants.TIMER_STAGE_NONE));
        if (j10 == -1000 || j11 == -1) {
            sb2.append(e.V);
        } else {
            if (String.valueOf(j10).length() >= 10) {
                sb2.append(Long.parseLong(String.valueOf(j10).substring(0, 10)) == j11 ? 0 : 1);
            } else {
                sb2.append(1);
            }
            sb2.append(j10 != j11 * 1000 ? 1 : 0);
        }
        return sb2.toString();
    }

    @DungeonFlag
    public static String dn() {
        try {
            return Settings.Secure.getString(a.ve().getContentResolver(), "bluetooth_name");
        } catch (Throwable unused) {
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    @DungeonFlag
    public static long fi() {
        try {
            return a.ve().getPackageManager().getPackageInfo(a.ve().getPackageName(), 0).firstInstallTime / 1000;
        } catch (PackageManager.NameNotFoundException e10) {
            m.c(e10);
            return 0L;
        }
    }

    @DungeonFlag
    public static long fr() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences == null) {
            return 0L;
        }
        long j10 = sharedPreferences.getLong("frt", 0L);
        if (j10 != 0) {
            return j10;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        sharedPreferences.edit().putLong("frt", jCurrentTimeMillis).apply();
        return jCurrentTimeMillis;
    }

    @DungeonFlag
    public static String gc() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("sofchara", "");
            long j10 = sharedPreferences.getLong(bm.aM, 0L);
            if (j10 != 0 && !TextUtils.isEmpty(string) && System.currentTimeMillis() - j10 <= e0.a.f90863b) {
                return string;
            }
        }
        return "";
    }

    @DungeonFlag
    public static JSONObject gdh() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            if (sharedPreferences == null || sharedPreferences.getBoolean("reported_devicehardware_2", false) || a.ve() == null || c(a.ve().getPackageManager().getPackageInfo(a.ve().getPackageName(), 0).firstInstallTime, System.currentTimeMillis())) {
                return null;
            }
            String strC = a.c("gsm.version.baseband", "");
            String strC2 = a.c("ro.build.fingerprint", "");
            String property = System.getProperty("os.version");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("radio", strC);
            jSONObject.put("fp", strC2);
            jSONObject.put("kernel", property);
            jSONObject.put("rom_version", a.c("ro.build.display.id", ""));
            jSONObject.put("build_id", a.c("ro.build.id", ""));
            jSONObject.put("incremental", a.c("ro.build.version.incremental", ""));
            jSONObject.put("compiling_time", a.c("ro.build.date.utc", ""));
            sharedPreferences.edit().putBoolean("reported_devicehardware_2", true).apply();
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getBId() {
        if (sp != null) {
            return sp;
        }
        synchronized (SoftDecTool.class) {
            if (sp == null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/sys/kernel/random/boot_id"));
                    try {
                        sp = bufferedReader.readLine();
                        bufferedReader.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return sp;
    }

    public static SharedPreferences getSharedPreferences(String str) {
        if (f11367c == null) {
            try {
                Context contextVe = a.ve();
                if (contextVe != null && str != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        Context contextCreateDeviceProtectedStorageContext = contextVe.createDeviceProtectedStorageContext();
                        if (!contextCreateDeviceProtectedStorageContext.moveSharedPreferencesFrom(contextVe, str)) {
                            m.tt("HARLOG", "Failed to move shared preferences.");
                        }
                        contextVe = contextCreateDeviceProtectedStorageContext;
                    }
                    f11367c = tt.tt(contextVe, str, 0);
                }
                return null;
            } catch (Throwable unused) {
            }
        }
        return f11367c;
    }

    public static String getss() {
        boolean z10;
        SensorManager sensorManager;
        List<Sensor> sensorList;
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        String string = sharedPreferences.getString("sensor_fingerprint", null);
        int i10 = 0;
        if (string == null || string.isEmpty()) {
            string = null;
            z10 = false;
        } else {
            z10 = true;
        }
        boolean zC = c(System.currentTimeMillis(), sharedPreferences.getLong("last_sensor_hash_time", 0L));
        if (!zC) {
            tt = false;
        }
        if (!tt && (!z10 || !zC)) {
            tt = true;
            try {
                x xVarA = a.a();
                JSONObject jSONObject = new JSONObject();
                if (xVarA != null && (sensorManager = (SensorManager) a.ve().getSystemService("sensor")) != null && (sensorList = sensorManager.getSensorList(-1)) != null && !sensorList.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArray = new JSONArray();
                    for (Sensor sensor : sensorList) {
                        if (sensor != null) {
                            i10++;
                            if (i10 > 100) {
                                break;
                            }
                            arrayList.add(ve(sensor.getName() + "|" + sensor.getVendor() + "|" + sensor.getVersion()));
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("name", sensor.getName());
                            jSONObject2.put("vendor", sensor.getVendor());
                            jSONObject2.put("version", sensor.getVersion());
                            jSONArray.put(jSONObject2);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    Collections.sort(arrayList);
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        sb2.append((String) it2.next());
                        sb2.append("|");
                    }
                    String strUj = uj(sb2.toString());
                    sharedPreferences.edit().putString("sensor_fingerprint", strUj).putLong("last_sensor_hash_time", System.currentTimeMillis()).apply();
                    jSONObject.put("sensors", jSONArray);
                    jSONObject.put("sensor_fingerprint", strUj);
                    xVarA.c("device_hardware_sensor", jSONObject);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return string;
    }

    @DungeonFlag
    public static String getwvid() {
        if (uj != null) {
            return uj;
        }
        if (!ve.compareAndSet(false, true)) {
            return null;
        }
        n.tt(new sp("wvid") { // from class: com.byakv.z.SoftDecTool.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    MediaDrm mediaDrm = new MediaDrm(UUID.fromString("edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"));
                    byte[] propertyByteArray = mediaDrm.getPropertyByteArray("deviceUniqueId");
                    mediaDrm.release();
                    if (propertyByteArray == null || propertyByteArray.length <= 0) {
                        return;
                    }
                    String unused = SoftDecTool.uj = SoftDecTool.uj(SoftDecTool.tt(propertyByteArray));
                } catch (Throwable unused2) {
                    SoftDecTool.ve.set(false);
                }
            }
        });
        return null;
    }

    @DungeonFlag
    public static synchronized int h(String str, boolean z10) {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            int i10 = sharedPreferences.getInt(str, 0);
            if (!z10) {
                return i10;
            }
            int i11 = i10 + 1;
            sharedPreferences.edit().putInt(str, i11).apply();
            return i11;
        } catch (Throwable th) {
            m.c(th);
            return -1;
        }
    }

    @DungeonFlag
    public static int hv() {
        if (Build.VERSION.SDK_INT < 23) {
            return -1;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) a.ve().getSystemService("connectivity");
            return connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork()).hasCapability(15) ? 0 : 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @DungeonFlag
    public static String i() {
        int i10 = f11370n + 1;
        f11370n = i10;
        if (i10 != 2) {
            return "2";
        }
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) a.ve().getSystemService("accessibility");
            TreeSet treeSet = new TreeSet();
            for (AccessibilityServiceInfo accessibilityServiceInfo : accessibilityManager.getInstalledAccessibilityServiceList()) {
                treeSet.add(String.format("%s#%s", accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName, accessibilityServiceInfo.getResolveInfo().serviceInfo.name));
            }
            JSONArray jSONArray = new JSONArray((Collection) treeSet);
            SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
            String string = jSONArray.toString();
            String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
            String string2 = sharedPreferences.getString("iacba", "");
            String string3 = sharedPreferences.getString("date", "1970-01-01");
            if (string2.equals(jSONArray.toString()) && str.equals(string3)) {
                return "2";
            }
            sharedPreferences.edit().putString("iacba", string).apply();
            sharedPreferences.edit().putString("date", str).apply();
            return string;
        } catch (Throwable th) {
            m.c(th);
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    @DungeonFlag
    public static String kv() {
        return System.getProperty("os.version");
    }

    @DungeonFlag
    public static String p() {
        return tt.c(a.ve()).getPath();
    }

    @DungeonFlag
    public static String prx() {
        String property = System.getProperty("http.proxyHost");
        String property2 = System.getProperty("http.proxyPort");
        return (TextUtils.isEmpty(property) && TextUtils.isEmpty(property2)) ? "" : String.format(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_CACHE, property, property2);
    }

    @DungeonFlag
    public static void rsd(final String str) {
        da.c().postDelayed(new Runnable() { // from class: com.byakv.z.SoftDecTool.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    x xVarA = a.a();
                    if (xVarA != null) {
                        JSONObject jSONObjectGdh = SoftDecTool.gdh();
                        if (jSONObjectGdh == null && !TextUtils.isEmpty(str)) {
                            jSONObjectGdh = new JSONObject();
                        }
                        if (jSONObjectGdh != null) {
                            if (!TextUtils.isEmpty(str)) {
                                jSONObjectGdh.put("rd2", str);
                            }
                            xVarA.c("device_hardware", jSONObjectGdh);
                        }
                    }
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        }, 20000L);
    }

    public static JSONObject t() {
        try {
            if (System.currentTimeMillis() - LastReportTooltypeTime <= BaseCloudFileManager.ACK_TIMEOUT || codeIdCountMap.isEmpty()) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<Integer, Integer> entry : codeIdCountMap.entrySet()) {
                jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
            }
            jSONObject.put("ctt", jSONObject2);
            LastReportTooltypeTime = System.currentTimeMillis();
            codeIdCountMap.clear();
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    @DungeonFlag
    public static long tft() {
        return a.sp();
    }

    @DungeonFlag
    public static int trc() {
        return a.x();
    }

    @DungeonFlag
    public static int u() {
        UsbAccessory[] accessoryList = ((UsbManager) a.ve().getSystemService("usb")).getAccessoryList();
        return (accessoryList == null || accessoryList.length == 0) ? 0 : 1;
    }

    public static void ua() {
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            acs = sharedPreferences.getFloat("acs", -1.0f);
            act = sharedPreferences.getLong("act", 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String uj(String str) throws Exception {
        return tt(Arrays.copyOf(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)), 16));
    }

    private static String ve(String str) throws Exception {
        return tt(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tt(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }

    @DungeonFlag
    private static String c(InputStream inputStream) {
        int i10;
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i11);
            }
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b10 : bArrDigest) {
                int i12 = b10 & 255;
                if (i12 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i12));
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("UnsupportedEncodingException", e10);
        } catch (IOException e11) {
            m.c(e11);
            return "";
        } catch (NoSuchAlgorithmException e12) {
            throw new RuntimeException("NoSuchAlgorithmException", e12);
        }
    }

    public static void ua(double d10, long j10) {
        acs = d10;
        act = j10;
        SharedPreferences sharedPreferences = getSharedPreferences(SP_NAME);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putFloat("acs", (float) d10).putLong("act", j10).apply();
        }
    }

    private static boolean c(long j10, long j11) {
        long j12 = j11 - j10;
        return j12 < 86400000 && j12 > -86400000 && c(j10) == c(j11);
    }

    private static long c(long j10) {
        return (j10 + ((long) TimeZone.getDefault().getOffset(j10))) / 86400000;
    }

    @DungeonFlag
    private static int c(String str, String str2) {
        String strC = a.c(str2, "unknown");
        return (str.equals("unknown") || strC.equals("unknown") || str.equals(strC)) ? 0 : 1;
    }
}
