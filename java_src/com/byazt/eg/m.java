package com.byazt.eg;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 130})
public abstract class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final m f13349c = new m() { // from class: com.byazt.eg.m.1
    };

    public interface c {
        m c(n nVar);
    }

    public void c(n nVar, IOException iOException) {
    }

    public void c(n nVar, InetSocketAddress inetSocketAddress, Proxy proxy, gr grVar, IOException iOException) {
    }

    public static c c(m mVar) {
        return new c() { // from class: com.byazt.eg.m.2
            @Override // com.byazt.eg.m.c
            public m c(n nVar) {
                return m.this;
            }
        };
    }
}
