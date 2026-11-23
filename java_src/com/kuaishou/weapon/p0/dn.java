package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
public class dn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f74758a = "plc001_t_re";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f74759b = "wlpauct2";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f74760c = "plc001_pd_ptip_pi";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f74761d = "wiipaot";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f74762e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f74763f = "a1_p_s_p_s";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f74764g = "a1_p_s_p_s_c_b";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static dn f74765j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SharedPreferences f74766h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SharedPreferences.Editor f74767i;

    private dn(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(bg.f74509r, 4);
            this.f74766h = sharedPreferences;
            this.f74767i = sharedPreferences.edit();
        } catch (Throwable unused) {
        }
    }

    public static synchronized dn a(Context context) {
        try {
            if (f74765j == null) {
                f74765j = new dn(context);
            }
        } catch (Exception unused) {
            return null;
        }
        return f74765j;
    }

    public boolean b(String str) {
        return this.f74766h.getBoolean(str, false);
    }

    public void b(String str, String str2) {
        try {
            this.f74767i.putString(str, str2);
            this.f74767i.apply();
        } catch (Exception unused) {
        }
    }

    public static dn a() {
        return f74765j;
    }

    public long a(String str) {
        return this.f74766h.getLong(str, 0L);
    }

    public void a(String str, long j10, boolean z10) {
        try {
            this.f74767i.putLong(str, j10);
            if (z10) {
                this.f74767i.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public int a(String str, int i10) {
        try {
            return this.f74766h.getInt(str, i10);
        } catch (Throwable unused) {
            return i10;
        }
    }

    public void a(String str, int i10, boolean z10) {
        try {
            this.f74767i.putInt(str, i10);
            if (z10) {
                this.f74767i.apply();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, Boolean bool, boolean z10) {
        try {
            SharedPreferences.Editor editor = this.f74767i;
            if (editor != null) {
                editor.putBoolean(str, bool.booleanValue());
                if (z10) {
                    this.f74767i.apply();
                }
            }
        } catch (Exception unused) {
        }
    }

    public String a(String str, String str2) {
        return this.f74766h.getString(str, str2);
    }
}
