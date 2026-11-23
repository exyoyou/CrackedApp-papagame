package org.jboss.netty.buffer;

import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteOrder f95450a;

    protected b() {
        this(ByteOrder.BIG_ENDIAN);
    }

    @Override // org.jboss.netty.buffer.f
    public e b(int i10) {
        return a(e(), i10);
    }

    @Override // org.jboss.netty.buffer.f
    public ByteOrder e() {
        return this.f95450a;
    }

    @Override // org.jboss.netty.buffer.f
    public e f(byte[] bArr, int i10, int i11) {
        return c(e(), bArr, i10, i11);
    }

    protected b(ByteOrder byteOrder) {
        if (byteOrder == null) {
            throw new NullPointerException("defaultOrder");
        }
        this.f95450a = byteOrder;
    }
}
