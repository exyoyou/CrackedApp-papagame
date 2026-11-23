package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.core.download.f;
import com.sigmob.sdk.downloader.core.exception.g;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class d implements c.a, c.b {
    @Override // com.sigmob.sdk.downloader.core.interceptor.c.a
    public com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a a(f chain) throws IOException {
        com.sigmob.sdk.downloader.core.download.d dVarF = chain.f();
        while (true) {
            try {
                if (dVarF.k()) {
                    throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
                }
                return chain.n();
            } catch (IOException e10) {
                if (!(e10 instanceof g)) {
                    chain.f().e(e10);
                    chain.g().d(chain.e());
                    throw e10;
                }
                chain.l();
            }
        }
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(f chain) throws IOException {
        try {
            return chain.o();
        } catch (IOException e10) {
            chain.f().e(e10);
            throw e10;
        }
    }
}
