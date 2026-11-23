package com.danikula.videocache;

import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes9.dex */
public class b implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f26014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteArrayInputStream f26015b;

    public b(byte[] bArr) {
        this.f26014a = bArr;
    }

    @Override // com.danikula.videocache.q
    public void a(long j10) throws ProxyCacheException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.f26014a);
        this.f26015b = byteArrayInputStream;
        byteArrayInputStream.skip(j10);
    }

    @Override // com.danikula.videocache.q
    public void close() throws ProxyCacheException {
    }

    @Override // com.danikula.videocache.q
    public long length() throws ProxyCacheException {
        return this.f26014a.length;
    }

    @Override // com.danikula.videocache.q
    public int read(byte[] bArr) throws ProxyCacheException {
        return this.f26015b.read(bArr, 0, bArr.length);
    }
}
