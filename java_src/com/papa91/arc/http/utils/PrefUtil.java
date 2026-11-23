package com.papa91.arc.http.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class PrefUtil {
    static PrefUtil prefUtil;
    Context context;
    SharedPreferences mSharedPreferences;

    private PrefUtil(Context context) {
        this.context = context;
        this.mSharedPreferences = context.getSharedPreferences("Papa_Stat_SharedPreferences", 4);
    }

    public static PrefUtil getInstance(Context context) {
        if (prefUtil == null) {
            prefUtil = new PrefUtil(context);
        }
        return prefUtil;
    }

    public boolean getBoolean(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, false);
        }
        return false;
    }

    public String getDNSHttpUrl() {
        return this.mSharedPreferences.getString("DNSHttpUrl", "");
    }

    public int getInt(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (sharedPreferences != null) {
            return sharedPreferences.getInt(str, 0);
        }
        return 0;
    }

    public String getRequestHeaders() {
        return this.mSharedPreferences.getString("RequestHeaders", "");
    }

    public String getString(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        return sharedPreferences != null ? sharedPreferences.getString(str, "") : "";
    }

    public void save(String str, Object obj) {
        if (this.mSharedPreferences == null || TextUtils.isEmpty(str)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof String) {
            editorEdit.putString(str, obj.toString());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        }
        editorEdit.commit();
    }
}
