package org.jboss.netty.buffer;

import com.join.mgps.activity.PayNowActivity_;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes10.dex */
public class j extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final j f95474i = new j(ByteOrder.BIG_ENDIAN);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final j f95475j = new j(ByteOrder.LITTLE_ENDIAN);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f95476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f95477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f95478d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f95479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f95480f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f95481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f95482h;

    public j() {
        this(ByteOrder.BIG_ENDIAN);
    }

    private e g(int i10) {
        e eVarA;
        synchronized (this.f95476b) {
            e eVar = this.f95479e;
            if (eVar == null) {
                e eVarB = h.B(ByteOrder.BIG_ENDIAN, this.f95478d);
                this.f95479e = eVarB;
                eVarA = eVarB.a(0, i10);
                this.f95480f = i10;
            } else {
                int iCapacity = eVar.capacity();
                int i11 = this.f95480f;
                if (iCapacity - i11 >= i10) {
                    eVarA = this.f95479e.a(i11, i10);
                    this.f95480f += i10;
                } else {
                    e eVarB2 = h.B(ByteOrder.BIG_ENDIAN, this.f95478d);
                    this.f95479e = eVarB2;
                    eVarA = eVarB2.a(0, i10);
                    this.f95480f = i10;
                }
            }
        }
        return eVarA;
    }

    private e h(int i10) {
        e eVarA;
        synchronized (this.f95477c) {
            e eVar = this.f95481g;
            if (eVar == null) {
                e eVarB = h.B(ByteOrder.LITTLE_ENDIAN, this.f95478d);
                this.f95481g = eVarB;
                eVarA = eVarB.a(0, i10);
                this.f95482h = i10;
            } else {
                int iCapacity = eVar.capacity();
                int i11 = this.f95482h;
                if (iCapacity - i11 >= i10) {
                    eVarA = this.f95481g.a(i11, i10);
                    this.f95482h += i10;
                } else {
                    e eVarB2 = h.B(ByteOrder.LITTLE_ENDIAN, this.f95478d);
                    this.f95481g = eVarB2;
                    eVarA = eVarB2.a(0, i10);
                    this.f95482h = i10;
                }
            }
        }
        return eVarA;
    }

    public static f i() {
        return f95474i;
    }

    public static f j(ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return f95474i;
        }
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return f95475j;
        }
        if (byteOrder == null) {
            throw new NullPointerException("defaultEndianness");
        }
        throw new IllegalStateException("Should not reach here");
    }

    @Override // org.jboss.netty.buffer.f
    public e a(ByteOrder byteOrder, int i10) {
        if (byteOrder == null) {
            throw new NullPointerException(PayNowActivity_.ORDER_EXTRA);
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity: " + i10);
        }
        if (i10 == 0) {
            return h.f95466c;
        }
        if (i10 >= this.f95478d) {
            return h.B(byteOrder, i10);
        }
        e eVarG = byteOrder == ByteOrder.BIG_ENDIAN ? g(i10) : h(i10);
        eVarG.clear();
        return eVarG;
    }

    @Override // org.jboss.netty.buffer.f
    public e c(ByteOrder byteOrder, byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("array");
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("offset: " + i10);
        }
        if (i11 == 0) {
            return h.f95466c;
        }
        if (i10 + i11 <= bArr.length) {
            e eVarA = a(byteOrder, i11);
            eVarA.O0(bArr, i10, i11);
            return eVarA;
        }
        throw new IndexOutOfBoundsException("length: " + i11);
    }

    @Override // org.jboss.netty.buffer.f
    public e d(ByteBuffer byteBuffer) {
        if (!byteBuffer.isReadOnly() && byteBuffer.isDirect()) {
            return h.Z(byteBuffer);
        }
        e eVarA = a(byteBuffer.order(), byteBuffer.remaining());
        int iPosition = byteBuffer.position();
        eVarA.Y0(byteBuffer);
        byteBuffer.position(iPosition);
        return eVarA;
    }

    public j(int i10) {
        this(ByteOrder.BIG_ENDIAN, i10);
    }

    public j(ByteOrder byteOrder) {
        this(byteOrder, 1048576);
    }

    public j(ByteOrder byteOrder, int i10) {
        super(byteOrder);
        this.f95476b = new Object();
        this.f95477c = new Object();
        if (i10 > 0) {
            this.f95478d = i10;
            return;
        }
        throw new IllegalArgumentException("preallocatedBufCapacity must be greater than 0: " + i10);
    }
}
