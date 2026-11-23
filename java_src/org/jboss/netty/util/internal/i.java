package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.Formatter;

/* JADX INFO: loaded from: classes10.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f95825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f95826b = "";

    static {
        String string;
        try {
            string = new Formatter().format("%n", new Object[0]).toString();
        } catch (Exception unused) {
            string = "\n";
        }
        f95825a = string;
    }

    private i() {
    }

    public static String[] a(String str, char c10) {
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) == c10) {
                if (i10 == i11) {
                    arrayList.add("");
                } else {
                    arrayList.add(str.substring(i10, i11));
                }
                i10 = i11 + 1;
            }
        }
        if (i10 == 0) {
            arrayList.add(str);
        } else if (i10 != length) {
            arrayList.add(str.substring(i10, length));
        } else {
            for (int size = arrayList.size() - 1; size >= 0 && ((String) arrayList.get(size)).length() == 0; size--) {
                arrayList.remove(size);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(Object obj) {
        if (obj == null) {
            return null;
        }
        return c(obj.toString());
    }

    public static String c(String str) {
        boolean z10;
        if (str == null) {
            return null;
        }
        int length = str.length() - 1;
        while (true) {
            if (length < 0) {
                z10 = false;
                break;
            }
            if (Character.isISOControl(str.charAt(length))) {
                z10 = true;
                break;
            }
            length--;
        }
        if (!z10) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        int i10 = 0;
        while (i10 < str.length() && Character.isISOControl(str.charAt(i10))) {
            i10++;
        }
        boolean z11 = false;
        while (i10 < str.length()) {
            if (Character.isISOControl(str.charAt(i10))) {
                z11 = true;
            } else {
                if (z11) {
                    sb2.append(' ');
                    z11 = false;
                }
                sb2.append(str.charAt(i10));
            }
            i10++;
        }
        return sb2.toString();
    }
}
