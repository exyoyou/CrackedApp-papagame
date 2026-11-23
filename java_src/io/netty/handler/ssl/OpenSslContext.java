package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import java.security.cert.Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes.dex */
public abstract class OpenSslContext extends ReferenceCountedOpenSslContext {
    OpenSslContext(Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, int i10, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11) throws SSLException {
        super(iterable, cipherSuiteFilter, applicationProtocolConfig, j10, j11, i10, certificateArr, clientAuth, strArr, z10, z11, false);
    }

    protected final void finalize() throws Throwable {
        super.finalize();
        OpenSsl.releaseIfNeeded(this);
    }

    @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext
    final SSLEngine newEngine0(ByteBufAllocator byteBufAllocator, String str, int i10, boolean z10) {
        return new OpenSslEngine(this, byteBufAllocator, str, i10, z10);
    }

    OpenSslContext(Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, OpenSslApplicationProtocolNegotiator openSslApplicationProtocolNegotiator, long j10, long j11, int i10, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11) throws SSLException {
        super(iterable, cipherSuiteFilter, openSslApplicationProtocolNegotiator, j10, j11, i10, certificateArr, clientAuth, strArr, z10, z11, false);
    }
}
