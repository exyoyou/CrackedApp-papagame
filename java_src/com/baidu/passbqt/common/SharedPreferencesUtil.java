package com.baidu.passbqt.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.baidu.passbqt.NoProguard;

/* JADX INFO: loaded from: classes6.dex */
public class SharedPreferencesUtil implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SharedPreferencesUtil f8306a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static SharedPreferences f8307b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f8308c = "sapi_system";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f8309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Context f8310e;

    private SharedPreferencesUtil(Context context, String str) {
        f8307b = context.getSharedPreferences(str, 0);
        f8310e = context.getApplicationContext();
    }

    public static synchronized void a(Context context) {
        if (f8306a == null) {
            f8306a = new SharedPreferencesUtil(context, f8308c);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T b(String str, T t10) {
        byte b10;
        String simpleName = t10.getClass().getSimpleName();
        try {
            switch (simpleName.hashCode()) {
                case -672261858:
                    if (!simpleName.equals("Integer")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case 2374300:
                    if (!simpleName.equals("Long")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 67973692:
                    if (!simpleName.equals("Float")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 1729365000:
                    if (!simpleName.equals("Boolean")) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                return (T) Boolean.valueOf(f8307b.getBoolean(str, ((Boolean) t10).booleanValue()));
            }
            if (b10 == 1) {
                return (T) Long.valueOf(f8307b.getLong(str, ((Long) t10).longValue()));
            }
            if (b10 != 2) {
                return b10 != 3 ? (T) f8307b.getString(str, (String) t10) : (T) Integer.valueOf(f8307b.getInt(str, ((Integer) t10).intValue()));
            }
            return (T) Float.valueOf(f8307b.getFloat(str, ((Float) t10).floatValue()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static boolean a(String str, Object obj) {
        byte b10;
        SharedPreferences.Editor editorEdit = f8307b.edit();
        String simpleName = obj.getClass().getSimpleName();
        boolean z10 = false;
        try {
            switch (simpleName.hashCode()) {
                case -672261858:
                    if (!simpleName.equals("Integer")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case 2374300:
                    if (!simpleName.equals("Long")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 67973692:
                    if (!simpleName.equals("Float")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 1729365000:
                    if (!simpleName.equals("Boolean")) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (b10 == 1) {
                editorEdit.putLong(str, ((Long) obj).longValue());
            } else if (b10 == 2) {
                editorEdit.putFloat(str, ((Float) obj).floatValue());
            } else if (b10 != 3) {
                editorEdit.putString(str, (String) obj);
            } else {
                editorEdit.putInt(str, ((Integer) obj).intValue());
            }
            z10 = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        editorEdit.apply();
        return z10;
    }
}
