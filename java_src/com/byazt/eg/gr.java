package com.byazt.eg;

import io.netty.handler.ssl.ApplicationProtocolNames;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public enum gr {
    HTTP_1_0("http/1.0"),
    HTTP_1_1(ApplicationProtocolNames.HTTP_1_1),
    SPDY_3(ApplicationProtocolNames.SPDY_3_1),
    HTTP_2(ApplicationProtocolNames.HTTP_2);


    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f13306n;

    gr(String str) {
        this.f13306n = str;
    }

    public static gr c(String str) throws IOException {
        gr grVar = HTTP_1_0;
        if (str.equals(grVar.f13306n)) {
            return grVar;
        }
        gr grVar2 = HTTP_1_1;
        if (str.equals(grVar2.f13306n)) {
            return grVar2;
        }
        gr grVar3 = HTTP_2;
        if (str.equals(grVar3.f13306n)) {
            return grVar3;
        }
        gr grVar4 = SPDY_3;
        if (str.equals(grVar4.f13306n)) {
            return grVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f13306n;
    }
}
