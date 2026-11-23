package com.xinzhu.overmind.utils;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f90049a = "b";

    public static int a(String str) {
        int i10;
        if (str.startsWith("R.")) {
            i10 = 2;
        } else {
            if (!str.startsWith("com.android.internal.R.")) {
                throw new RuntimeException("AccessInternalR invalid");
            }
            i10 = 23;
        }
        String strSubstring = str.substring(i10);
        int iLastIndexOf = strSubstring.lastIndexOf(46);
        String strSubstring2 = strSubstring.substring(0, iLastIndexOf);
        String strSubstring3 = strSubstring.substring(iLastIndexOf + 1);
        q.e(f90049a, "AccessInternalR " + strSubstring2 + " " + strSubstring3);
        return Resources.getSystem().getIdentifier(strSubstring3, strSubstring2, "android");
    }

    public static int[] b(String str) {
        int i10;
        if (str.startsWith("R.")) {
            i10 = 2;
        } else {
            if (!str.startsWith("com.android.internal.R.")) {
                throw new RuntimeException("AccessInternalR invalid");
            }
            i10 = 23;
        }
        String strSubstring = str.substring(i10);
        int iLastIndexOf = strSubstring.lastIndexOf(46);
        String strSubstring2 = strSubstring.substring(0, iLastIndexOf);
        String strSubstring3 = strSubstring.substring(iLastIndexOf + 1);
        q.e(f90049a, "AccessInternalR " + strSubstring2 + " " + strSubstring3);
        Resources system = Resources.getSystem();
        return system.getIntArray(system.getIdentifier(strSubstring3, strSubstring2, "android"));
    }
}
