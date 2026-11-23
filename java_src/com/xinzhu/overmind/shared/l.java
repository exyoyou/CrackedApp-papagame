package com.xinzhu.overmind.shared;

import android.app.Application;
import android.content.SharedPreferences;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes8.dex */
public final class l {
    /* JADX INFO: Access modifiers changed from: private */
    public static final SharedPreferences b(Application application) {
        SharedPreferences sharedPreferences = application.getSharedPreferences(application.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }
}
