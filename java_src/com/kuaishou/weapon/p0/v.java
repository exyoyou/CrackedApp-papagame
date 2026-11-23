package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class v {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static JSONObject f74924h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f74925i = "1";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f74926j = "2";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f74927k = "3";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f74928l = "4";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f74929m = "5";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f74930n = "6";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f74931o = "7";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f74932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f74933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f74934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f74935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f74936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f74937f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f74938g;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PackageInfo f74939p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ApplicationInfo f74940q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Context f74941r;

    public v(PackageInfo packageInfo, Context context) {
        this.f74939p = packageInfo;
        this.f74941r = context;
    }

    public int a() {
        return this.f74932a;
    }

    public String b() {
        return this.f74936e;
    }

    public String c() {
        return this.f74937f;
    }

    public long d() {
        return this.f74933b;
    }

    public String e() {
        return this.f74935d;
    }

    public long f() {
        return this.f74934c;
    }

    public int g() {
        return this.f74938g;
    }

    public void h() {
        PackageInfo packageInfo = this.f74939p;
        if (packageInfo == null && this.f74940q == null) {
            return;
        }
        if (packageInfo == null) {
            try {
                if (this.f74940q != null) {
                    this.f74939p = this.f74941r.getPackageManager().getPackageInfo(this.f74940q.packageName, 0);
                }
            } catch (Exception unused) {
            }
        }
        PackageInfo packageInfo2 = this.f74939p;
        a(packageInfo2 == null ? this.f74940q.packageName : packageInfo2.packageName);
        PackageInfo packageInfo3 = this.f74939p;
        a((packageInfo3 == null ? this.f74940q : packageInfo3.applicationInfo).flags & 1);
        b(j());
        PackageInfo packageInfo4 = this.f74939p;
        if (packageInfo4 != null) {
            a(packageInfo4.firstInstallTime);
            b(this.f74939p.lastUpdateTime);
            c(this.f74939p.versionName);
            b(this.f74939p.versionCode);
        }
    }

    public void i() {
        PackageInfo packageInfo = this.f74939p;
        if (packageInfo == null && this.f74940q == null) {
            return;
        }
        if (packageInfo == null) {
            try {
                if (this.f74940q != null) {
                    this.f74939p = this.f74941r.getPackageManager().getPackageInfo(this.f74940q.packageName, 0);
                }
            } catch (Exception unused) {
            }
        }
        PackageInfo packageInfo2 = this.f74939p;
        a(packageInfo2 == null ? this.f74940q.packageName : packageInfo2.packageName);
        PackageInfo packageInfo3 = this.f74939p;
        a((packageInfo3 == null ? this.f74940q : packageInfo3.applicationInfo).flags & 1);
        PackageInfo packageInfo4 = this.f74939p;
        if (packageInfo4 != null) {
            a(packageInfo4.firstInstallTime);
            b(this.f74939p.lastUpdateTime);
            c(this.f74939p.versionName);
            b(this.f74939p.versionCode);
        }
    }

    public String j() {
        ApplicationInfo applicationInfo;
        try {
            PackageInfo packageInfo = this.f74939p;
            if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
                ApplicationInfo applicationInfo2 = this.f74940q;
                if (applicationInfo2 != null) {
                    String string = applicationInfo2.loadLabel(this.f74941r.getPackageManager()).toString();
                    if (!TextUtils.isEmpty(string)) {
                        return string;
                    }
                }
            } else {
                String string2 = applicationInfo.loadLabel(this.f74941r.getPackageManager()).toString();
                if (!TextUtils.isEmpty(string2)) {
                    return string2;
                }
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public JSONObject k() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("1", c());
            jSONObject.put("2", b());
            jSONObject.put("3", e());
            jSONObject.put("4", g());
            jSONObject.put("5", a());
            jSONObject.put("6", d());
            jSONObject.put("7", f());
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(int i10) {
        this.f74932a = i10;
    }

    public void b(String str) {
        this.f74937f = str;
    }

    public void c(String str) {
        this.f74935d = str;
    }

    public void a(String str) {
        this.f74936e = str;
    }

    public void b(long j10) {
        this.f74934c = j10;
    }

    public v(ApplicationInfo applicationInfo, Context context) {
        this.f74940q = applicationInfo;
        this.f74941r = context;
    }

    public void a(long j10) {
        this.f74933b = j10;
    }

    public void b(int i10) {
        this.f74938g = i10;
    }
}
