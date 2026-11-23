package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f74788a = "re_po_rt";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static h f74789e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f74790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences.Editor f74791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f74792d;

    public h(Context context, String str) {
        try {
            this.f74792d = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 4);
            this.f74790b = sharedPreferences;
            this.f74791c = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public static synchronized h a(Context context, String str) {
        if (f74789e == null) {
            synchronized (h.class) {
                if (f74789e == null) {
                    f74789e = new h(context, str);
                }
            }
        }
        return f74789e;
    }

    public Context b() {
        return this.f74792d;
    }

    public void c(String str, String str2) {
        try {
            this.f74791c.putString(str, str2);
            this.f74791c.apply();
        } catch (Exception unused) {
        }
    }

    public void d(String str, int i10) {
        this.f74791c.putInt(str, i10);
        this.f74791c.apply();
    }

    public boolean e(String str) {
        return this.f74790b.getBoolean(str, false);
    }

    public int b(String str) {
        try {
            return this.f74790b.getInt(str, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public int b(String str, int i10) {
        try {
            return this.f74790b.getInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    public void c(String str, String str2, boolean z10) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (z10) {
                str2 = c.b(str2.getBytes(), 2);
            }
            this.f74791c.putString(str, str2);
            this.f74791c.apply();
        } catch (Throwable unused) {
        }
    }

    public long d(String str) {
        return this.f74790b.getLong(str, 0L);
    }

    public String b(String str, String str2) {
        return this.f74790b.getString(str, str2);
    }

    public h(Context context) {
        try {
            this.f74792d = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences("re_po_rt", 4);
            this.f74790b = sharedPreferences;
            this.f74791c = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public String b(String str, String str2, boolean z10) {
        String strB = b(str, "");
        if (TextUtils.isEmpty(strB)) {
            return str2;
        }
        return z10 ? c.b(strB, 2) : strB;
    }

    public static h a() {
        return f74789e;
    }

    public int c(String str, int i10) {
        try {
            return this.f74790b.getInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    public void a(Context context) {
        this.f74792d = context;
    }

    public void b(String str, long j10) {
        this.f74791c.putLong(str, j10);
        this.f74791c.apply();
    }

    public int c(String str) {
        try {
            return this.f74790b.getInt(str, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public void a(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f74791c.putString(str, str2);
            this.f74791c.apply();
        } catch (Throwable unused) {
        }
    }

    public void c() {
        try {
            this.f74791c.apply();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, String str2, boolean z10) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f74791c.putString(str, str2);
            if (z10) {
                this.f74791c.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        return this.f74790b.getString(str, "");
    }

    public void a(String str, int i10) {
        try {
            this.f74791c.putInt(str, i10);
            this.f74791c.apply();
        } catch (Throwable unused) {
        }
    }

    public void a(String str, int i10, boolean z10) {
        try {
            this.f74791c.putInt(str, i10);
            if (z10) {
                this.f74791c.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public long a(String str, long j10) {
        return this.f74790b.getLong(str, j10);
    }

    public void a(String str, Boolean bool) {
        this.f74791c.putBoolean(str, bool.booleanValue());
        this.f74791c.apply();
    }
}
