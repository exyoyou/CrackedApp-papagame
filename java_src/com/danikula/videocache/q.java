package com.danikula.videocache;

/* JADX INFO: loaded from: classes9.dex */
public interface q {
    void a(long j10) throws ProxyCacheException;

    void close() throws ProxyCacheException;

    long length() throws ProxyCacheException;

    int read(byte[] bArr) throws ProxyCacheException;
}
