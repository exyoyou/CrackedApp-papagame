package com.danikula.videocache;

import java.io.ByteArrayInputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile byte[] f26012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f26013b;

    public a() {
        this(new byte[0]);
    }

    @Override // com.danikula.videocache.c
    public void a(byte[] bArr, int i10) throws ProxyCacheException {
        n.d(this.f26012a);
        n.b(i10 >= 0 && i10 <= bArr.length);
        byte[] bArrCopyOf = Arrays.copyOf(this.f26012a, this.f26012a.length + i10);
        System.arraycopy(bArr, 0, bArrCopyOf, this.f26012a.length, i10);
        this.f26012a = bArrCopyOf;
    }

    @Override // com.danikula.videocache.c
    public long available() throws ProxyCacheException {
        return this.f26012a.length;
    }

    @Override // com.danikula.videocache.c
    public int b(byte[] bArr, long j10, int i10) throws ProxyCacheException {
        if (j10 >= this.f26012a.length) {
            return -1;
        }
        if (j10 <= 2147483647L) {
            return new ByteArrayInputStream(this.f26012a).read(bArr, (int) j10, i10);
        }
        throw new IllegalArgumentException("Too long offset for memory cache " + j10);
    }

    @Override // com.danikula.videocache.c
    public void close() throws ProxyCacheException {
    }

    @Override // com.danikula.videocache.c
    public void complete() {
        this.f26013b = true;
    }

    @Override // com.danikula.videocache.c
    public boolean isCompleted() {
        return this.f26013b;
    }

    public a(byte[] bArr) {
        this.f26012a = (byte[]) n.d(bArr);
    }
}
