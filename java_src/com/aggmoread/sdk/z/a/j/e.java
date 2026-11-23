package com.aggmoread.sdk.z.a.j;

/* JADX INFO: loaded from: classes7.dex */
public class e {
    public static Class a() {
        try {
            return Class.forName("com.aggmoread.sdk.a.adcomm.amsdk.AMCustomBroadReceiver");
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(String str) {
        Class clsA = a();
        if (clsA != null) {
            try {
                clsA.getDeclaredMethod("remove", String.class).invoke(clsA, str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void a(String str, l lVar) {
        com.aggmoread.sdk.z.a.d.d("APINFICLCKRIVER", "register enter , url = " + str);
        Class clsA = a();
        if (clsA != null) {
            try {
                clsA.getDeclaredMethod("register", String.class, l.class).invoke(clsA, str, lVar);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
