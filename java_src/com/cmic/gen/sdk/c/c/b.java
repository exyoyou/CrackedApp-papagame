package com.cmic.gen.sdk.c.c;

import com.cmic.gen.sdk.c.b.e;
import com.cmic.gen.sdk.e.p;

/* JADX INFO: loaded from: classes9.dex */
public class b extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f24419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24420c;

    b(String str, e eVar, String str2, String str3) {
        super(str, eVar, str2, str3);
        this.f24420c = false;
        this.f24419b = eVar;
    }

    public void a(com.cmic.gen.sdk.a aVar) {
        String[] strArrA;
        com.cmic.gen.sdk.c.b.a aVarC = this.f24419b.c();
        aVarC.u(aVar.b("socketip"));
        com.cmic.gen.sdk.e.c.b("GetPrePhonescripParam", "socket socketip = " + aVar.b("socketip"));
        if (!this.f24420c) {
            if (aVar.b("isCloseIpv4", false)) {
                strArrA = null;
            } else {
                strArrA = p.a(true);
                aVarC.q(strArrA[0]);
            }
            if (!aVar.b("isCloseIpv6", false)) {
                if (strArrA == null) {
                    strArrA = p.a(true);
                }
                aVarC.r(strArrA[1]);
            }
            this.f24420c = true;
        }
        aVarC.n(aVarC.v(aVar.b("appkey")));
        this.f24419b.a(aVarC);
        this.f24419b.a(true);
        this.f24421a = this.f24419b.b().toString();
    }
}
