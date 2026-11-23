package com.windmill.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.czhj.sdk.common.utils.Preconditions;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f87408a = "WindAdSettings";

    private n() {
    }

    public static SharedPreferences a(final Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        return context.getSharedPreferences(f87408a, 0);
    }

    public static SharedPreferences a(final Context context, final String preferenceName) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(preferenceName);
        return context.getSharedPreferences(preferenceName, 0);
    }
}
