package com.papa.controller.core.hardware;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f76654p;

    public b() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{BinaryMemcacheOpcodes.REPLACEQ});
    }

    public byte[] k() {
        return this.f76654p;
    }

    public void l(byte[] bArr) {
        this.f76654p = bArr;
    }

    public b(byte[] bArr) {
        super(bArr);
        if (this.f76653d == 20) {
            int i10 = this.f76652c - 5;
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, 5, bArr2, 0, i10);
            this.f76654p = bArr2;
        }
    }
}
