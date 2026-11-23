package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 {
    @NotNull
    public static final String a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            String string = context.getResources().getString(R.string.app_name);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
    }

    @Nullable
    public static final String b(@NotNull Context context, @NotNull String key) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null && bundle.containsKey(key)) {
                Object obj = bundle.get(key);
                if (!(obj instanceof Integer) && !(obj instanceof String)) {
                    return String.valueOf(bundle.getString(key));
                }
                return obj.toString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public static final int c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            return applicationInfo.targetSdkVersion;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 30;
        }
    }
}
