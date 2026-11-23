package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.coremedia.iso.boxes.k1;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (defaultSharedPreferences.contains(k1.f24950p)) {
            return defaultSharedPreferences.getString(k1.f24950p, "");
        }
        String string = UUID.randomUUID().toString();
        defaultSharedPreferences.edit().putString(k1.f24950p, string).apply();
        return string;
    }
}
