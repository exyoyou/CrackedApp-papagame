package com.byazt.yx;

import com.byazt.eg.h;
import com.byazt.eg.my;
import com.byazt.eg.rh;
import com.byazt.eg.u;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 46})
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f22468c = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    public static long c(h hVar) {
        return c(hVar.sp());
    }

    public static Set<String> tt(rh rhVar) {
        Set<String> setEmptySet = Collections.emptySet();
        int iC = rhVar.c();
        for (int i10 = 0; i10 < iC; i10++) {
            if ("Vary".equalsIgnoreCase(rhVar.c(i10))) {
                String strTt = rhVar.tt(i10);
                if (setEmptySet.isEmpty()) {
                    setEmptySet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : strTt.split(",")) {
                    setEmptySet.add(str.trim());
                }
            }
        }
        return setEmptySet;
    }

    public static boolean ve(h hVar) {
        if (hVar.c().tt().equals("HEAD")) {
            return false;
        }
        int iVe = hVar.ve();
        return (((iVe >= 100 && iVe < 200) || iVe == 204 || iVe == 304) && c(hVar) == -1 && !"chunked".equalsIgnoreCase(hVar.c("Transfer-Encoding"))) ? false : true;
    }

    public static long c(rh rhVar) {
        return c(rhVar.c("Content-Length"));
    }

    private static long c(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static rh c(rh rhVar, rh rhVar2) {
        Set<String> setTt = tt(rhVar2);
        if (setTt.isEmpty()) {
            return new rh.c().c();
        }
        rh.c cVar = new rh.c();
        int iC = rhVar.c();
        for (int i10 = 0; i10 < iC; i10++) {
            String strC = rhVar.c(i10);
            if (setTt.contains(strC)) {
                cVar.c(strC, rhVar.tt(i10));
            }
        }
        return cVar.c();
    }

    public static rh tt(h hVar) {
        return c(hVar.da().c().ve(), hVar.sp());
    }

    public static void c(u uVar, my myVar, rh rhVar) {
        if (uVar == u.f13401c) {
            return;
        }
        com.byazt.eg.t.c(myVar, rhVar).isEmpty();
    }

    public static int tt(String str, int i10) {
        try {
            long j10 = Long.parseLong(str);
            if (j10 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j10 < 0) {
                return 0;
            }
            return (int) j10;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static int c(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int c(String str, int i10) {
        char cCharAt;
        while (i10 < str.length() && ((cCharAt = str.charAt(i10)) == ' ' || cCharAt == '\t')) {
            i10++;
        }
        return i10;
    }
}
