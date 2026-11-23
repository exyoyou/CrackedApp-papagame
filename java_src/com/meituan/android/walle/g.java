package com.meituan.android.walle;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private g() {
    }

    @Nullable
    public static String a(@NonNull Context context, @NonNull String str) {
        Map<String, String> mapF = f(context);
        if (mapF == null) {
            return null;
        }
        return mapF.get(str);
    }

    @Nullable
    private static String b(@NonNull Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static String c(@NonNull Context context) {
        return d(context, null);
    }

    @Nullable
    public static String d(@NonNull Context context, @NonNull String str) {
        c cVarE = e(context);
        return cVarE == null ? str : cVarE.a();
    }

    @Nullable
    public static c e(@NonNull Context context) {
        String strB = b(context);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        return d.a(new File(strB));
    }

    @Nullable
    public static Map<String, String> f(@NonNull Context context) {
        String strB = b(context);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        return d.b(new File(strB));
    }
}
