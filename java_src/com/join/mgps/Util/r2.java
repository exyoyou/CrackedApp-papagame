package com.join.mgps.Util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class r2 {
    private r2() {
    }

    public static void a(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().clear().commit();
    }

    public static Object b(Context context, String key) throws IOException {
        try {
            return new ObjectInputStream(new ByteArrayInputStream(Base64.decode(PreferenceManager.getDefaultSharedPreferences(context).getString(key, "").getBytes(), 0))).readObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int c(Context context, String key, int defVal) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(key, defVal);
    }

    public static long d(Context context, String key, long defVal) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(key, defVal);
    }

    public static String e(Context context, String key, String defVal) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(key, defVal);
    }

    public static Boolean f(Context context, String key, Boolean defVal) {
        return Boolean.valueOf(PreferenceManager.getDefaultSharedPreferences(context).getBoolean(key, defVal.booleanValue()));
    }

    public static void g(Context context, String key, int value) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(key, value).commit();
    }

    public static void h(Context context, String key, long value) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong(key, value).commit();
    }

    public static void i(Context context, String key, String value) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(key, value).commit();
    }

    public static void j(Context context, String key, Boolean value) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(key, value.booleanValue()).commit();
    }

    public static void k(Context context, String key) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editorEdit.remove(key);
        editorEdit.commit();
    }

    public static boolean l(Context context, String key, Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (obj == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        ObjectOutputStream objectOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    editorEdit.putString(key, new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0)));
                    objectOutputStream2.close();
                } catch (Exception unused) {
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                    }
                    return editorEdit.commit();
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        byteArrayOutputStream.close();
        return editorEdit.commit();
    }
}
