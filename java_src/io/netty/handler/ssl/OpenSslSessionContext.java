package io.netty.handler.ssl;

import com.tencent.cos.common.COSHttpResponseKey;
import io.netty.internal.tcnative.SSL;
import io.netty.internal.tcnative.SSLContext;
import io.netty.internal.tcnative.SessionTicketKey;
import io.netty.util.internal.ObjectUtil;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.Lock;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;

/* JADX INFO: loaded from: classes.dex */
public abstract class OpenSslSessionContext implements SSLSessionContext {
    private static final Enumeration<byte[]> EMPTY = new EmptyEnumeration();
    final ReferenceCountedOpenSslContext context;
    private final OpenSslKeyMaterialProvider provider;
    private final OpenSslSessionStats stats;

    private static final class EmptyEnumeration implements Enumeration<byte[]> {
        private EmptyEnumeration() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return false;
        }

        @Override // java.util.Enumeration
        public byte[] nextElement() {
            throw new NoSuchElementException();
        }
    }

    OpenSslSessionContext(ReferenceCountedOpenSslContext referenceCountedOpenSslContext, OpenSslKeyMaterialProvider openSslKeyMaterialProvider) {
        this.context = referenceCountedOpenSslContext;
        this.provider = openSslKeyMaterialProvider;
        this.stats = new OpenSslSessionStats(referenceCountedOpenSslContext);
    }

    final void destroy() {
        OpenSslKeyMaterialProvider openSslKeyMaterialProvider = this.provider;
        if (openSslKeyMaterialProvider != null) {
            openSslKeyMaterialProvider.destroy();
        }
    }

    @Override // javax.net.ssl.SSLSessionContext
    public Enumeration<byte[]> getIds() {
        return EMPTY;
    }

    @Override // javax.net.ssl.SSLSessionContext
    public SSLSession getSession(byte[] bArr) {
        ObjectUtil.checkNotNull(bArr, "bytes");
        return null;
    }

    public abstract boolean isSessionCacheEnabled();

    public abstract void setSessionCacheEnabled(boolean z10);

    @Deprecated
    public void setTicketKeys(byte[] bArr) {
        if (bArr.length % 48 != 0) {
            throw new IllegalArgumentException("keys.length % 48 != 0");
        }
        int length = bArr.length / 48;
        SessionTicketKey[] sessionTicketKeyArr = new SessionTicketKey[length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, 16);
            int i12 = i11 + 16;
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i12, 16);
            int i13 = i10 + 16;
            byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr, i12, 16);
            i11 = i12 + 16;
            sessionTicketKeyArr[i13] = new SessionTicketKey(bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3);
            i10 = i13 + 1;
        }
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            SSLContext.clearOptions(this.context.ctx, SSL.SSL_OP_NO_TICKET);
            SSLContext.setSessionTicketKeys(this.context.ctx, sessionTicketKeyArr);
        } finally {
            lockWriteLock.unlock();
        }
    }

    public OpenSslSessionStats stats() {
        return this.stats;
    }

    public void setTicketKeys(OpenSslSessionTicketKey... openSslSessionTicketKeyArr) {
        ObjectUtil.checkNotNull(openSslSessionTicketKeyArr, COSHttpResponseKey.Data.KEYS);
        int length = openSslSessionTicketKeyArr.length;
        SessionTicketKey[] sessionTicketKeyArr = new SessionTicketKey[length];
        for (int i10 = 0; i10 < length; i10++) {
            sessionTicketKeyArr[i10] = openSslSessionTicketKeyArr[i10].key;
        }
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            SSLContext.clearOptions(this.context.ctx, SSL.SSL_OP_NO_TICKET);
            SSLContext.setSessionTicketKeys(this.context.ctx, sessionTicketKeyArr);
        } finally {
            lockWriteLock.unlock();
        }
    }
}
