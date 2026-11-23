package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f30935a = "lge";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f30936b = "samsung";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f30937c = "meizu";

    private k() {
    }

    @NonNull
    private static String a() {
        String str = Build.MANUFACTURER;
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static boolean b() {
        return c() || e();
    }

    public static boolean c() {
        return a().equals(f30935a);
    }

    public static boolean d() {
        return a().equals(f30937c);
    }

    public static boolean e() {
        return a().equals(f30936b);
    }
}
