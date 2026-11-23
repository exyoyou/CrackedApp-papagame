package com.sdk.j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ApplySharedPref"})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78542a = "com.sdk.j.a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Boolean f78543b = Boolean.valueOf(d.f78521a);

    public static Long a(Context context, String str) {
        long j10 = 0;
        try {
            j10 = context.getSharedPreferences("ZzxCache", 0).getLong(str, 0L);
        } catch (Exception e10) {
            LogUtils.e(f78542a, e10.getMessage(), f78543b);
        }
        return Long.valueOf(j10);
    }

    public static String b(Context context, String str) {
        try {
            return context.getSharedPreferences("ZzxCache", 0).getString(str, "");
        } catch (Exception e10) {
            LogUtils.e(f78542a, e10.getMessage(), f78543b);
            return "";
        }
    }

    public static String a(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences("ZzxCache", 0).getString(str, str2);
        } catch (Exception e10) {
            LogUtils.e(f78542a, e10.getMessage(), f78543b);
            return "";
        }
    }

    public static boolean b(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("ZzxCache", 0).edit();
            editorEdit.putString(str, str2);
            return editorEdit.commit();
        } catch (Exception e10) {
            LogUtils.e(f78542a, e10.getMessage(), f78543b);
            return false;
        }
    }

    public static void a(Context context, String str, Long l10) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("ZzxCache", 0).edit();
            editorEdit.putLong(str, l10.longValue());
            editorEdit.commit();
        } catch (Exception e10) {
            LogUtils.e(f78542a, e10.getMessage(), f78543b);
        }
    }
}
