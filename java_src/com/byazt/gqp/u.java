package com.byazt.gqp;

import io.netty.handler.ssl.ApplicationProtocolNames;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public enum u {
    HTTP_1_0("http/1.0"),
    HTTP_1_1(ApplicationProtocolNames.HTTP_1_1),
    SPDY_3(ApplicationProtocolNames.SPDY_3_1),
    HTTP_2(ApplicationProtocolNames.HTTP_2);


    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f14717n;

    u(String str) {
        this.f14717n = str;
    }

    public static u c(String str) throws IOException {
        u uVar = HTTP_1_0;
        if (str.equals(uVar.f14717n)) {
            return uVar;
        }
        u uVar2 = HTTP_1_1;
        if (str.equals(uVar2.f14717n)) {
            return uVar2;
        }
        u uVar3 = HTTP_2;
        if (str.equals(uVar3.f14717n)) {
            return uVar3;
        }
        u uVar4 = SPDY_3;
        if (str.equals(uVar4.f14717n)) {
            return uVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f14717n;
    }
}
