package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfo {
    public static final int NEW_USER = 0;
    public static final int OLD_USER = 1;
    public static final String TAG_ANDROID_ID = "aid";
    public static final String TAG_FLAG = "__MTA_DEVICE_INFO__";
    public static final String TAG_IMEI = "ui";
    public static final String TAG_MAC = "mc";
    public static final String TAG_MID = "mid";
    public static final String TAG_TIMESTAMPS = "ts";
    public static final String TAG_VERSION = "ver";
    public static final int UPGRADE_USER = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static StatLogger f83747h = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f83749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f83750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f83752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f83753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f83754g;

    DeviceInfo() {
        this.f83748a = null;
        this.f83749b = null;
        this.f83750c = null;
        this.f83751d = "0";
        this.f83753f = 0;
        this.f83754g = 0L;
    }

    int a() {
        return this.f83753f;
    }

    long b() {
        return this.f83754g;
    }

    JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.tencent.stat.common.k.a(jSONObject, TAG_IMEI, this.f83748a);
            com.tencent.stat.common.k.a(jSONObject, "mc", this.f83749b);
            com.tencent.stat.common.k.a(jSONObject, "mid", this.f83751d);
            com.tencent.stat.common.k.a(jSONObject, TAG_ANDROID_ID, this.f83750c);
            jSONObject.put("ts", this.f83754g);
            jSONObject.put(TAG_VERSION, this.f83753f);
        } catch (JSONException e10) {
            f83747h.e((Exception) e10);
        }
        return jSONObject;
    }

    void d(String str) {
        this.f83748a = str;
    }

    void e(String str) {
        this.f83749b = str;
    }

    public String getImei() {
        return this.f83748a;
    }

    public String getMac() {
        return this.f83749b;
    }

    public String getMid() {
        return this.f83751d;
    }

    public int getUserType() {
        return this.f83752e;
    }

    public String toString() {
        return c().toString();
    }

    DeviceInfo(String str, String str2, int i10) {
        this.f83750c = null;
        this.f83751d = "0";
        this.f83753f = 0;
        this.f83754g = 0L;
        this.f83748a = str;
        this.f83749b = str2;
        this.f83752e = i10;
    }

    int a(DeviceInfo deviceInfo) {
        if (deviceInfo == null) {
            return 1;
        }
        String mid = getMid();
        String mid2 = deviceInfo.getMid();
        if (mid != null && mid2 != null && mid.equals(mid2)) {
            return 0;
        }
        int iA = a();
        int iA2 = deviceInfo.a();
        if (iA > iA2) {
            return 1;
        }
        if (iA == iA2) {
            long jB = b();
            long jB2 = deviceInfo.b();
            if (jB > jB2) {
                return 1;
            }
            if (jB == jB2) {
                return 0;
            }
        }
        return -1;
    }

    void b(int i10) {
        this.f83752e = i10;
    }

    void c(String str) {
        this.f83751d = str;
    }

    static DeviceInfo a(String str) {
        DeviceInfo deviceInfo = new DeviceInfo();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull(TAG_IMEI)) {
                deviceInfo.d(jSONObject.getString(TAG_IMEI));
            }
            if (!jSONObject.isNull("mc")) {
                deviceInfo.e(jSONObject.getString("mc"));
            }
            if (!jSONObject.isNull("mid")) {
                deviceInfo.c(jSONObject.getString("mid"));
            }
            if (!jSONObject.isNull(TAG_ANDROID_ID)) {
                deviceInfo.b(jSONObject.getString(TAG_ANDROID_ID));
            }
            if (!jSONObject.isNull("ts")) {
                deviceInfo.a(jSONObject.getLong("ts"));
            }
            if (!jSONObject.isNull(TAG_VERSION)) {
                deviceInfo.a(jSONObject.getInt(TAG_VERSION));
            }
        } catch (JSONException e10) {
            f83747h.e((Exception) e10);
        }
        return deviceInfo;
    }

    void b(String str) {
        this.f83750c = str;
    }

    void a(int i10) {
        this.f83753f = i10;
    }

    void a(long j10) {
        this.f83754g = j10;
    }
}
