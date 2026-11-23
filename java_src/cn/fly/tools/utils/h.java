package cn.fly.tools.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile h f2323c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f2324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences.Editor f2325b;

    public h(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        this.f2324a = sharedPreferences;
        this.f2325b = sharedPreferences.edit();
    }

    public static h a(Context context) {
        if (f2323c == null) {
            synchronized (h.class) {
                if (f2323c == null) {
                    f2323c = new h(context, "common_nsp");
                }
            }
        }
        return f2323c;
    }

    public String b(String str, String str2) {
        return this.f2324a.getString(str, str2);
    }

    public int b(String str, int i10) {
        return this.f2324a.getInt(str, i10);
    }

    public long b(String str, long j10) {
        return this.f2324a.getLong(str, j10);
    }

    public double b(String str, double d10) {
        long j10 = this.f2324a.getLong(str, -1L);
        return j10 != -1 ? Double.longBitsToDouble(j10) : d10;
    }

    public void b() {
        this.f2325b.clear().apply();
    }

    public void a(String str, String str2) {
        this.f2325b.putString(str, str2).apply();
    }

    public void a(String str, int i10) {
        this.f2325b.putInt(str, i10).apply();
    }

    public void a(String str, long j10) {
        this.f2325b.putLong(str, j10).apply();
    }

    public void a(String str, double d10) {
        this.f2325b.putLong(str, Double.doubleToRawLongBits(d10)).apply();
    }

    public boolean a() {
        return this.f2325b.commit();
    }

    public void a(String str) {
        this.f2325b.remove(str).apply();
    }
}
