package com.kwad.sdk.utils;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.service.ServiceProvider;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class bq {
    static final String TAG = "bq";

    static void a(String str, String str2, int i10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        sharedPreferencesM40if.edit().putInt(str2, i10).apply();
    }

    static void az(String str, String str2) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        sharedPreferencesM40if.edit().remove(str2).apply();
    }

    static int b(String str, String str2, int i10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        return sharedPreferencesM40if == null ? i10 : sharedPreferencesM40if.getInt(str2, i10);
    }

    static void h(String str, String str2, String str3) {
        a(str, str2, str3, false);
    }

    static String i(String str, String str2, String str3) {
        String string;
        try {
            SharedPreferences sharedPreferencesM40if = m40if(str);
            if (sharedPreferencesM40if != null && (string = sharedPreferencesM40if.getString(str2, str3)) != null && !TextUtils.isEmpty(string)) {
                return (TextUtils.equals(string, str3) || !com.kwad.sdk.core.a.c.isEncodeKsSdk(string)) ? string : com.kwad.sdk.core.a.c.decodeKsSdk(string);
            }
            return str3;
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
            return "";
        }
    }

    @Nullable
    /* JADX INFO: renamed from: if, reason: not valid java name */
    public static SharedPreferences m40if(String str) {
        try {
            return ServiceProvider.Ud().getSharedPreferences(str, 0);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return null;
        }
    }

    static void j(String str, String str2, String str3) {
        if (com.kwad.sdk.core.a.c.isEncodeKsSdk(str)) {
            return;
        }
        h(str2, str3, com.kwad.sdk.core.a.c.encodeKsSdk(str));
    }

    static void l(String str, String str2, boolean z10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        sharedPreferencesM40if.edit().putBoolean(str2, z10).apply();
    }

    static boolean m(String str, String str2, boolean z10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        return sharedPreferencesM40if == null ? z10 : sharedPreferencesM40if.getBoolean(str2, z10);
    }

    static void a(String str, String str2, long j10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        sharedPreferencesM40if.edit().putLong(str2, j10).apply();
    }

    static long b(String str, String str2, long j10) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        return sharedPreferencesM40if == null ? j10 : sharedPreferencesM40if.getLong(str2, j10);
    }

    static void a(String str, String str2, String str3, boolean z10) {
        try {
            SharedPreferences sharedPreferencesM40if = m40if(str);
            if (sharedPreferencesM40if == null) {
                return;
            }
            if (z10 && !com.kwad.sdk.core.a.c.isEncodeKsSdk(str3)) {
                sharedPreferencesM40if.edit().putString(str2, com.kwad.sdk.core.a.c.encodeKsSdk(str3)).apply();
            } else {
                sharedPreferencesM40if.edit().putString(str2, str3).apply();
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    static <T> void a(String str, Map<String, T> map) {
        SharedPreferences sharedPreferencesM40if = m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
        for (Map.Entry<String, T> entry : map.entrySet()) {
            try {
                a(editorEdit, entry.getKey(), entry.getValue());
            } catch (Throwable th) {
                com.kwad.sdk.core.d.c.e(TAG, Log.getStackTraceString(th));
            }
        }
        editorEdit.apply();
    }

    private static void a(SharedPreferences.Editor editor, String str, Object obj) {
        if (str != null) {
            if (obj instanceof Integer) {
                editor.putInt(str, ((Integer) obj).intValue());
                return;
            }
            if (obj instanceof Long) {
                editor.putLong(str, ((Long) obj).longValue());
                return;
            }
            if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
                return;
            }
            if (obj instanceof Float) {
                editor.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Set) {
                editor.putStringSet(str, (Set) obj);
            } else if (obj instanceof String) {
                editor.putString(str, String.valueOf(obj));
            }
        }
    }
}
