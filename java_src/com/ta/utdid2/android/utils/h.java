package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    @TargetApi(9)
    public static void a(SharedPreferences.Editor editor) {
        if (editor != null) {
            editor.apply();
        }
    }
}
