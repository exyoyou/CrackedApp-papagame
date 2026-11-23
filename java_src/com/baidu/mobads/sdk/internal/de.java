package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class de {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7835a = "error_message";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7836b = "error_code";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile de f7837d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final bv f7838c = bv.a();

    private de() {
    }

    public static de a() {
        if (f7837d == null) {
            synchronized (de.class) {
                if (f7837d == null) {
                    f7837d = new de();
                }
            }
        }
        return f7837d;
    }

    public String a(br brVar, String str) {
        if (brVar == null) {
            return "";
        }
        return a(brVar.b() + "", brVar.c(), str);
    }

    public String a(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append("ErrorCode: [");
            sb2.append(str);
            sb2.append("];");
        }
        if (!TextUtils.isEmpty(str2)) {
            sb2.append("ErrorDesc: [");
            sb2.append(str2);
            sb2.append("];");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb2.append(" Extra: [");
            sb2.append(str3);
            sb2.append("];");
        }
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0027  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:11:0x0026
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public java.lang.String a(java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            r4 = this;
            java.lang.String r0 = "error_message"
            java.lang.String r1 = "msg"
            java.lang.String r2 = ""
            if (r5 == 0) goto L27
            boolean r3 = r5.containsKey(r1)     // Catch: java.lang.Exception -> L26
            if (r3 == 0) goto L19
            java.lang.Object r5 = r5.get(r1)     // Catch: java.lang.Exception -> L26
            com.baidu.mobads.sdk.internal.br r5 = (com.baidu.mobads.sdk.internal.br) r5     // Catch: java.lang.Exception -> L26
            java.lang.String r5 = r4.a(r5, r2)     // Catch: java.lang.Exception -> L26
            goto L28
        L19:
            boolean r1 = r5.containsKey(r0)     // Catch: java.lang.Exception -> L26
            if (r1 == 0) goto L27
            java.lang.Object r5 = r5.get(r0)     // Catch: java.lang.Exception -> L26
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L26
            goto L28
        L26:
        L27:
            r5 = r2
        L28:
            if (r5 != 0) goto L2b
            goto L2c
        L2b:
            r2 = r5
        L2c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.de.a(java.util.Map):java.lang.String");
    }
}
