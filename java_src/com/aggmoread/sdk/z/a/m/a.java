package com.aggmoread.sdk.z.a.m;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public static boolean a(Context context) {
        if (context == null || !(context instanceof Activity)) {
            return false;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing()) {
            return true;
        }
        return activity.isDestroyed();
    }
}
