package com.cmic.gen.sdk.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"ApplySharedPref"})
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static Context f24495a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SharedPreferences.Editor f24496a;

        a(SharedPreferences.Editor editor) {
            this.f24496a = editor;
        }

        public void a(String str, String str2) {
            this.f24496a.putString(d.a(str), str2);
        }

        public void b() {
            this.f24496a.commit();
        }

        public void c() {
            this.f24496a.clear();
        }

        public void a(String str, long j10) {
            this.f24496a.putLong(d.a(str), j10);
        }

        public void a(String str, int i10) {
            this.f24496a.putInt(d.a(str), i10);
        }

        public void a() {
            this.f24496a.apply();
        }

        public void a(String str) {
            this.f24496a.remove(d.a(str));
        }
    }

    public static void a(Context context) {
        f24495a = context.getApplicationContext();
    }

    public static String b(String str, String str2) {
        return f24495a.getSharedPreferences("ssoconfigs", 0).getString(d.a(str), str2);
    }

    public static int a(String str, int i10) {
        return f24495a.getSharedPreferences("ssoconfigs", 0).getInt(d.a(str), i10);
    }

    public static a b(String str) {
        return new a(f24495a.getSharedPreferences(str, 0).edit());
    }

    public static int a(String str, String str2, int i10) {
        return f24495a.getSharedPreferences(str, 0).getInt(d.a(str2), i10);
    }

    public static long a(String str, long j10) {
        return f24495a.getSharedPreferences("ssoconfigs", 0).getLong(d.a(str), j10);
    }

    public static long a(String str, String str2, long j10) {
        return f24495a.getSharedPreferences(str, 0).getLong(d.a(str2), j10);
    }

    public static void a(String str, String str2) {
        SharedPreferences sharedPreferences = f24495a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().putString(d.a(str), str2).commit();
    }

    public static void a(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        SharedPreferences.Editor editorEdit = f24495a.getSharedPreferences("ssoconfigs", 0).edit();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            String strA = d.a(str);
            if (obj instanceof String) {
                editorEdit.putString(strA, (String) obj);
            } else if (obj instanceof Integer) {
                editorEdit.putInt(strA, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                editorEdit.putLong(strA, ((Long) obj).longValue());
            } else if (obj instanceof Boolean) {
                editorEdit.putBoolean(strA, ((Boolean) obj).booleanValue());
            }
        }
        editorEdit.commit();
    }

    public static String a(String str, String str2, String str3) {
        return f24495a.getSharedPreferences(str, 0).getString(d.a(str2), str3);
    }

    public static void a(String str) {
        SharedPreferences sharedPreferences = f24495a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().remove(d.a(str)).commit();
    }

    public static a a() {
        return new a(f24495a.getSharedPreferences("ssoconfigs", 0).edit());
    }
}
