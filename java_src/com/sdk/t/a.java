package com.sdk.t;

import android.content.Context;
import com.sdk.f.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f78584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f78585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f78586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f78587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f78588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f78589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f78590g;

    static {
        boolean z10 = d.f78521a;
    }

    public a(Context context) {
    }

    public static a a(Context context) {
        if (f78584a == null) {
            synchronized (a.class) {
                f78584a = new a(context);
            }
        }
        return f78584a;
    }

    public static String b() {
        return f78587d;
    }

    public static String a() {
        return f78585b;
    }
}
