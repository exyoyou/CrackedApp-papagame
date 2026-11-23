package org.jboss.netty.util.internal;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f95827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f95828b = Pattern.compile("-?[0-9]+");

    private j() {
    }

    public static boolean a(String str) {
        return b(str) != null;
    }

    public static String b(String str) {
        return c(str, null);
    }

    public static String c(String str, String str2) {
        String property;
        if (str == null) {
            throw new NullPointerException("key");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("key must not be empty.");
        }
        try {
            property = System.getProperty(str);
        } catch (Exception e10) {
            if (!f95827a) {
                h("Unable to retrieve a system property '" + str + "'; default values will be used.", e10);
                f95827a = true;
            }
            property = null;
        }
        return property == null ? str2 : property;
    }

    public static boolean d(String str, boolean z10) {
        String strB = b(str);
        if (strB == null) {
            return z10;
        }
        String lowerCase = strB.trim().toLowerCase();
        if (lowerCase.length() == 0 || "true".equals(lowerCase) || "yes".equals(lowerCase) || "1".equals(lowerCase)) {
            return true;
        }
        if ("false".equals(lowerCase) || "no".equals(lowerCase) || "0".equals(lowerCase)) {
            return false;
        }
        g("Unable to parse the boolean system property '" + str + "':" + lowerCase + " - using the default value: " + z10);
        return z10;
    }

    public static int e(String str, int i10) {
        String strB = b(str);
        if (strB == null) {
            return i10;
        }
        String lowerCase = strB.trim().toLowerCase();
        if (f95828b.matcher(lowerCase).matches()) {
            try {
                return Integer.parseInt(lowerCase);
            } catch (Exception unused) {
            }
        }
        g("Unable to parse the integer system property '" + str + "':" + lowerCase + " - using the default value: " + i10);
        return i10;
    }

    public static long f(String str, long j10) {
        String strB = b(str);
        if (strB == null) {
            return j10;
        }
        String lowerCase = strB.trim().toLowerCase();
        if (f95828b.matcher(lowerCase).matches()) {
            try {
                return Long.parseLong(lowerCase);
            } catch (Exception unused) {
            }
        }
        g("Unable to parse the long integer system property '" + str + "':" + lowerCase + " - using the default value: " + j10);
        return j10;
    }

    private static void g(String str) {
    }

    private static void h(String str, Exception exc) {
    }
}
