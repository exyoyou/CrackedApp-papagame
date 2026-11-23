package com.beizi.fusion.tool;

import android.util.Base64;

/* JADX INFO: loaded from: classes6.dex */
public class d {
    public static String a(String str) {
        try {
            return Base64.encodeToString(str.getBytes(), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String b(String str) {
        try {
            return new String(Base64.decode(str, 0));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
