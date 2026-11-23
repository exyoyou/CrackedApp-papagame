package com.sigmob.sdk.videocache;

import java.io.ByteArrayInputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile byte[] f81902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f81903b;

    public a() {
        this(new byte[0]);
    }

    @Override // com.sigmob.sdk.videocache.c
    public int a(byte[] buffer, long offset, int length) throws p {
        if (offset >= this.f81902a.length) {
            return -1;
        }
        if (offset <= 2147483647L) {
            return new ByteArrayInputStream(this.f81902a).read(buffer, (int) offset, length);
        }
        throw new IllegalArgumentException("Too long offset for memory cache " + offset);
    }

    @Override // com.sigmob.sdk.videocache.c
    public void b() throws p {
    }

    @Override // com.sigmob.sdk.videocache.c
    public void c() {
        this.f81903b = true;
    }

    @Override // com.sigmob.sdk.videocache.c
    public boolean d() {
        return this.f81903b;
    }

    public a(byte[] data) {
        this.f81902a = (byte[]) n.a(data);
    }

    @Override // com.sigmob.sdk.videocache.c
    public long a() throws p {
        return this.f81902a.length;
    }

    @Override // com.sigmob.sdk.videocache.c
    public void a(byte[] newData, int length) throws p {
        n.a(this.f81902a);
        n.a(length >= 0 && length <= newData.length);
        byte[] bArrCopyOf = Arrays.copyOf(this.f81902a, this.f81902a.length + length);
        System.arraycopy(newData, 0, bArrCopyOf, this.f81902a.length, length);
        this.f81902a = bArrCopyOf;
    }
}
