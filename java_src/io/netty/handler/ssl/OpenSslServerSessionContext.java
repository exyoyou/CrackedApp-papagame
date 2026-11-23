package io.netty.handler.ssl;

import io.netty.internal.tcnative.SSL;
import io.netty.internal.tcnative.SSLContext;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public final class OpenSslServerSessionContext extends OpenSslSessionContext {
    OpenSslServerSessionContext(ReferenceCountedOpenSslContext referenceCountedOpenSslContext, OpenSslKeyMaterialProvider openSslKeyMaterialProvider) {
        super(referenceCountedOpenSslContext, openSslKeyMaterialProvider);
    }

    @Override // javax.net.ssl.SSLSessionContext
    public int getSessionCacheSize() {
        Lock lock = this.context.ctxLock.readLock();
        lock.lock();
        try {
            return (int) SSLContext.getSessionCacheSize(this.context.ctx);
        } finally {
            lock.unlock();
        }
    }

    @Override // javax.net.ssl.SSLSessionContext
    public int getSessionTimeout() {
        Lock lock = this.context.ctxLock.readLock();
        lock.lock();
        try {
            return (int) SSLContext.getSessionCacheTimeout(this.context.ctx);
        } finally {
            lock.unlock();
        }
    }

    @Override // io.netty.handler.ssl.OpenSslSessionContext
    public boolean isSessionCacheEnabled() {
        Lock lock = this.context.ctxLock.readLock();
        lock.lock();
        try {
            return SSLContext.getSessionCacheMode(this.context.ctx) == SSL.SSL_SESS_CACHE_SERVER;
        } finally {
            lock.unlock();
        }
    }

    @Override // io.netty.handler.ssl.OpenSslSessionContext
    public void setSessionCacheEnabled(boolean z10) {
        long j10 = z10 ? SSL.SSL_SESS_CACHE_SERVER : SSL.SSL_SESS_CACHE_OFF;
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            SSLContext.setSessionCacheMode(this.context.ctx, j10);
        } finally {
            lockWriteLock.unlock();
        }
    }

    @Override // javax.net.ssl.SSLSessionContext
    public void setSessionCacheSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            SSLContext.setSessionCacheSize(this.context.ctx, i10);
        } finally {
            lockWriteLock.unlock();
        }
    }

    public boolean setSessionIdContext(byte[] bArr) {
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            return SSLContext.setSessionIdContext(this.context.ctx, bArr);
        } finally {
            lockWriteLock.unlock();
        }
    }

    @Override // javax.net.ssl.SSLSessionContext
    public void setSessionTimeout(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        Lock lockWriteLock = this.context.ctxLock.writeLock();
        lockWriteLock.lock();
        try {
            SSLContext.setSessionCacheTimeout(this.context.ctx, i10);
        } finally {
            lockWriteLock.unlock();
        }
    }
}
