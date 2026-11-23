package com.baidu.mobads.sdk.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class bn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7589a = "mobads_builds";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7590b = "brand_period";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7591c = "version_period";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f7592d = 604800000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f7593e = 172800000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f7594f = "sdk_int";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7595g = "sdk";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7596h = "release";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f7597i = "model";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f7598j = "brand";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7599k = "netopera";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f7600l = "tags";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f7601m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f7602n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f7603o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f7604p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f7605q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f7606r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f7607s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Context f7608t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private SharedPreferences f7609u;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final bn f7610a = new bn();

        private a() {
        }
    }

    public static bn a(Context context) {
        a.f7610a.b(context);
        return a.f7610a;
    }

    private void h() {
        i();
        j();
    }

    private void i() {
        try {
            if (System.currentTimeMillis() > b(f7590b).longValue()) {
                this.f7604p = Build.MODEL;
                this.f7605q = Build.BRAND;
                this.f7606r = ((TelephonyManager) this.f7608t.getSystemService("phone")).getNetworkOperator();
                this.f7607s = Build.TAGS;
                a(f7597i, this.f7604p);
                a(f7598j, this.f7605q);
                a(f7599k, this.f7606r);
                a(f7600l, this.f7607s);
                a(f7590b, Long.valueOf(System.currentTimeMillis() + f7592d));
            } else {
                this.f7604p = a(f7597i);
                this.f7605q = a(f7598j);
                this.f7606r = a(f7599k);
                this.f7607s = a(f7600l);
            }
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private void j() {
        try {
            if (System.currentTimeMillis() > b(f7591c).longValue()) {
                int i10 = Build.VERSION.SDK_INT;
                this.f7601m = i10;
                this.f7602n = Build.VERSION.SDK;
                this.f7603o = Build.VERSION.RELEASE;
                a(f7594f, i10);
                a("sdk", this.f7602n);
                a("release", this.f7603o);
                a(f7591c, Long.valueOf(System.currentTimeMillis() + f7593e));
            } else {
                this.f7601m = c(f7594f);
                this.f7602n = a("sdk");
                this.f7603o = a("release");
            }
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private SharedPreferences.Editor k() throws Exception {
        return this.f7609u.edit();
    }

    public void b(Context context) {
        if (this.f7608t != null || context == null) {
            if (a.f7610a == null) {
                bc.a(context);
                return;
            }
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f7608t = applicationContext;
        try {
            if (this.f7609u == null) {
                this.f7609u = applicationContext.getSharedPreferences(f7589a, 0);
                h();
            }
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    public String c() {
        return this.f7603o;
    }

    public String d() {
        return this.f7604p;
    }

    public String e() {
        return this.f7605q;
    }

    public String f() {
        return this.f7606r;
    }

    public String g() {
        return this.f7607s;
    }

    private bn() {
        this.f7601m = 0;
        this.f7602n = "";
        this.f7603o = "";
        this.f7604p = "";
        this.f7605q = "";
        this.f7606r = "";
        this.f7607s = "";
    }

    private int c(String str) {
        try {
            return this.f7609u.getInt(str, 0);
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return 0;
        }
    }

    public int a() {
        if (this.f7601m == 0) {
            this.f7601m = Build.VERSION.SDK_INT;
        }
        return this.f7601m;
    }

    private String a(String str) {
        try {
            return this.f7609u.getString(str, "");
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return "";
        }
    }

    @TargetApi(9)
    private void a(String str, String str2) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putString(str, str2);
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f7602n)) {
            this.f7602n = Build.VERSION.SDK;
        }
        return this.f7602n;
    }

    @TargetApi(9)
    private void a(String str, Long l10) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putLong(str, l10.longValue());
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }

    private Long b(String str) {
        try {
            return Long.valueOf(this.f7609u.getLong(str, 0L));
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
            return 0L;
        }
    }

    @TargetApi(9)
    private void a(String str, int i10) {
        try {
            SharedPreferences.Editor editorK = k();
            editorK.putInt(str, i10);
            editorK.apply();
        } catch (Throwable th) {
            bv.a().c(th.getMessage());
        }
    }
}
