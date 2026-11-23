package com.danikula.videocache;

/* JADX INFO: loaded from: classes9.dex */
public interface c {
    void a(byte[] bArr, int i10) throws ProxyCacheException;

    long available() throws ProxyCacheException;

    int b(byte[] bArr, long j10, int i10) throws ProxyCacheException;

    void close() throws ProxyCacheException;

    void complete() throws ProxyCacheException;

    boolean isCompleted();
}
