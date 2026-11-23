package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes10.dex */
public class n extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n f95488b = new n(ByteOrder.BIG_ENDIAN);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final n f95489c = new n(ByteOrder.LITTLE_ENDIAN);

    public n() {
    }

    public static f g() {
        return f95488b;
    }

    public static f h(ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return f95488b;
        }
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return f95489c;
        }
        if (byteOrder == null) {
            throw new NullPointerException("endianness");
        }
        throw new IllegalStateException("Should not reach here");
    }

    @Override // org.jboss.netty.buffer.f
    public e a(ByteOrder byteOrder, int i10) {
        return h.b(byteOrder, i10);
    }

    @Override // org.jboss.netty.buffer.f
    public e c(ByteOrder byteOrder, byte[] bArr, int i10, int i11) {
        return h.b0(byteOrder, bArr, i10, i11);
    }

    @Override // org.jboss.netty.buffer.f
    public e d(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return h.Z(byteBuffer);
        }
        e eVarA = a(byteBuffer.order(), byteBuffer.remaining());
        int iPosition = byteBuffer.position();
        eVarA.Y0(byteBuffer);
        byteBuffer.position(iPosition);
        return eVarA;
    }

    public n(ByteOrder byteOrder) {
        super(byteOrder);
    }
}
