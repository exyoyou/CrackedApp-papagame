package com.byazt.eg;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 71})
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f13424a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Comparator<String> f13425c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final x f13426da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final x f13427i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final x f13428m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final x f13429n;
    public static final Map<String, x> rh;
    public static final x sl;
    public static final x sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final x f13430t;
    public static final x tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final x f13431u;
    public static final x uj;
    public static final x ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final x f13432x;
    public static final x yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final x f13433z;
    public final String nu;

    static {
        Comparator<String> comparator = new Comparator<String>() { // from class: com.byazt.eg.x.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int compare(String str, String str2) {
                int iMin = Math.min(str.length(), str2.length());
                for (int i10 = 4; i10 < iMin; i10++) {
                    char cCharAt = str.charAt(i10);
                    char cCharAt2 = str2.charAt(i10);
                    if (cCharAt != cCharAt2) {
                        return cCharAt < cCharAt2 ? -1 : 1;
                    }
                }
                int length = str.length();
                int length2 = str2.length();
                if (length != length2) {
                    return length < length2 ? -1 : 1;
                }
                return 0;
            }
        };
        f13425c = comparator;
        rh = new TreeMap(comparator);
        tt = c("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        ve = c("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        uj = c("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        f13429n = c("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        f13424a = c("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        sp = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        f13432x = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        f13427i = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        f13426da = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        sl = c("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        f13430t = c("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        f13431u = c("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        yp = c("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        f13433z = c("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        f13428m = c("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    }

    private x(String str) {
        str.getClass();
        this.nu = str;
    }

    public static synchronized x c(String str) {
        x xVar;
        Map<String, x> map = rh;
        xVar = map.get(str);
        if (xVar == null) {
            xVar = new x(str);
            map.put(str, xVar);
        }
        return xVar;
    }

    public String toString() {
        return this.nu;
    }

    public static List<x> c(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(c(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static x c(String str, int i10) {
        return c(str);
    }

    public String c() {
        return this.nu;
    }
}
