package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SharedPreferences f83928a;

    public static int a(Context context, String str, int i10) {
        return a(context).getInt(k.b(context, "" + str), i10);
    }

    public static void b(Context context, String str, int i10) {
        String strB = k.b(context, "" + str);
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putInt(strB, i10);
        editorEdit.commit();
    }

    public static long a(Context context, String str, long j10) {
        return a(context).getLong(k.b(context, "" + str), j10);
    }

    public static void b(Context context, String str, long j10) {
        String strB = k.b(context, "" + str);
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putLong(strB, j10);
        editorEdit.commit();
    }

    static synchronized SharedPreferences a(Context context) {
        if (f83928a == null) {
            f83928a = PreferenceManager.getDefaultSharedPreferences(context);
        }
        return f83928a;
    }

    public static void b(Context context, String str, String str2) {
        String strB = k.b(context, "" + str);
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putString(strB, str2);
        editorEdit.commit();
    }

    public static String a(Context context, String str, String str2) {
        return a(context).getString(k.b(context, "" + str), str2);
    }
}
