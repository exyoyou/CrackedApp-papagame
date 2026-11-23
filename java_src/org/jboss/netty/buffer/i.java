package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.UShort;

/* JADX INFO: loaded from: classes10.dex */
public class i extends a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final /* synthetic */ boolean f95468k = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ByteOrder f95469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e[] f95470g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int[] f95471h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f95472i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f95473j;

    public i(ByteOrder byteOrder, List<e> list, boolean z10) {
        this.f95469f = byteOrder;
        this.f95473j = z10;
        j(list);
    }

    private int e(int i10) {
        int i11 = this.f95472i;
        int[] iArr = this.f95471h;
        if (i10 >= iArr[i11]) {
            int i12 = i11 + 1;
            if (i10 < iArr[i12]) {
                return i11;
            }
            while (i12 < this.f95470g.length) {
                int i13 = i12 + 1;
                if (i10 < this.f95471h[i13]) {
                    this.f95472i = i12;
                    return i12;
                }
                i12 = i13;
            }
        } else {
            for (int i14 = i11 - 1; i14 >= 0; i14--) {
                if (i10 >= this.f95471h[i14]) {
                    this.f95472i = i14;
                    return i14;
                }
            }
        }
        throw new IndexOutOfBoundsException("Invalid index: " + i10 + ", maximum: " + this.f95471h.length);
    }

    private void f(int i10, int i11, int i12, e eVar) {
        int i13 = 0;
        while (i11 > 0) {
            e eVar2 = this.f95470g[i12];
            int i14 = i10 - this.f95471h[i12];
            int iMin = Math.min(i11, eVar2.capacity() - i14);
            eVar2.U0(i14, eVar, i13, iMin);
            i10 += iMin;
            i13 += iMin;
            i11 -= iMin;
            i12++;
        }
        eVar.u0(eVar.capacity());
    }

    private void j(List<e> list) {
        this.f95472i = 0;
        this.f95470g = new e[list.size()];
        int i10 = 0;
        while (true) {
            e[] eVarArr = this.f95470g;
            if (i10 < eVarArr.length) {
                e eVar = list.get(i10);
                if (eVar.order() != order()) {
                    throw new IllegalArgumentException("All buffers must have the same endianness.");
                }
                this.f95470g[i10] = eVar;
                i10++;
            } else {
                int i11 = 1;
                int[] iArr = new int[eVarArr.length + 1];
                this.f95471h = iArr;
                iArr[0] = 0;
                while (true) {
                    e[] eVarArr2 = this.f95470g;
                    if (i11 > eVarArr2.length) {
                        r0(0, capacity());
                        return;
                    }
                    int[] iArr2 = this.f95471h;
                    int i12 = i11 - 1;
                    iArr2[i11] = iArr2[i12] + eVarArr2[i12].capacity();
                    i11++;
                }
            }
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void G0(int i10, e eVar, int i11, int i12) {
        int iE = e(i10);
        if (i10 > capacity() - i12 || i11 > eVar.capacity() - i12) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (i10 + i12) + " or " + (i11 + i12) + ", maximum is " + capacity() + " or " + eVar.capacity());
        }
        while (i12 > 0) {
            e eVar2 = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i12, eVar2.capacity() - i13);
            eVar2.G0(i13, eVar, i11, iMin);
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iE++;
        }
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public void L() {
        int i10;
        int iWriterIndex;
        int i11 = readerIndex();
        if (i11 == 0) {
            return;
        }
        int iWriterIndex2 = writerIndex();
        List<e> listG = g(i11, capacity() - i11);
        if (listG.isEmpty()) {
            listG = new ArrayList<>(1);
        }
        e eVarB = h.b(order(), i11);
        eVarB.u0(i11);
        listG.add(eVarB);
        try {
            p0();
            i10 = readerIndex();
        } catch (IndexOutOfBoundsException unused) {
            i10 = i11;
        }
        try {
            b0();
            iWriterIndex = writerIndex();
        } catch (IndexOutOfBoundsException unused2) {
            iWriterIndex = iWriterIndex2;
        }
        j(listG);
        r0(Math.max(i10 - i11, 0), Math.max(iWriterIndex - i11, 0));
        l0();
        X0();
        r0(0, Math.max(iWriterIndex2 - i11, 0));
    }

    @Override // org.jboss.netty.buffer.e
    public void M0(int i10, int i11) {
        int iE = e(i10);
        this.f95470g[iE].M0(i10 - this.f95471h[iE], i11);
    }

    @Override // org.jboss.netty.buffer.e
    public void N0(int i10, byte[] bArr, int i11, int i12) {
        if (i10 > capacity() - i12 || i11 > bArr.length - i12) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Needs " + (i10 + i12) + ", maximum is " + capacity() + " or " + bArr.length);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
        if (i12 == 0) {
            return;
        }
        int iE = e(i10);
        while (i12 > 0) {
            e eVar = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i12, eVar.capacity() - i13);
            eVar.N0(i13, bArr, i11, iMin);
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iE++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void O(int i10, byte[] bArr, int i11, int i12) {
        int iE = e(i10);
        if (i10 > capacity() - i12 || i11 > bArr.length - i12) {
            throw new IndexOutOfBoundsException("Too many bytes to read - needs " + (i10 + i12) + " or " + (i11 + i12) + ", maximum is " + capacity() + " or " + bArr.length);
        }
        while (i12 > 0) {
            e eVar = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i12, eVar.capacity() - i13);
            eVar.O(i13, bArr, i11, iMin);
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iE++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void U0(int i10, e eVar, int i11, int i12) {
        if (i10 > capacity() - i12 || i11 > eVar.capacity() - i12) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (i10 + i12) + " or " + (i11 + i12) + ", maximum is " + capacity() + " or " + eVar.capacity());
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
        if (i12 == 0) {
            return;
        }
        int iE = e(i10);
        while (i12 > 0) {
            e eVar2 = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i12, eVar2.capacity() - i13);
            eVar2.U0(i13, eVar, i11, iMin);
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iE++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void W(int i10, OutputStream outputStream, int i11) throws IOException {
        if (i10 > capacity() - i11) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - needs " + (i10 + i11) + ", maximum of " + capacity());
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
        if (i11 == 0) {
            return;
        }
        int iE = e(i10);
        while (i11 > 0) {
            e eVar = this.f95470g[iE];
            int i12 = i10 - this.f95471h[iE];
            int iMin = Math.min(i11, eVar.capacity() - i12);
            eVar.W(i12, outputStream, iMin);
            i10 += iMin;
            i11 -= iMin;
            iE++;
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void W0(int i10, int i11) {
        int iE = e(i10);
        int i12 = i10 + 2;
        int[] iArr = this.f95471h;
        if (i12 <= iArr[iE + 1]) {
            this.f95470g[iE].W0(i10 - iArr[iE], i11);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            M0(i10, (byte) (i11 >>> 8));
            M0(i10 + 1, (byte) i11);
        } else {
            M0(i10, (byte) i11);
            M0(i10 + 1, (byte) (i11 >>> 8));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public e a(int i10, int i11) {
        if (i10 == 0) {
            if (i11 == 0) {
                return h.f95466c;
            }
        } else {
            if (i10 < 0 || i10 > capacity() - i11) {
                throw new IndexOutOfBoundsException("Invalid index: " + i10 + " - Bytes needed: " + (i10 + i11) + ", maximum is " + capacity());
            }
            if (i11 == 0) {
                return h.f95466c;
            }
        }
        List<e> listG = g(i10, i11);
        int size = listG.size();
        if (size != 0) {
            return size != 1 ? new i(order(), listG, this.f95473j) : listG.get(0);
        }
        return h.f95466c;
    }

    @Override // org.jboss.netty.buffer.e
    public byte[] array() {
        throw new UnsupportedOperationException();
    }

    @Override // org.jboss.netty.buffer.e
    public int arrayOffset() {
        throw new UnsupportedOperationException();
    }

    @Override // org.jboss.netty.buffer.e
    public void c1(int i10, ByteBuffer byteBuffer) {
        int iE = e(i10);
        int iLimit = byteBuffer.limit();
        int iRemaining = byteBuffer.remaining();
        if (i10 > capacity() - iRemaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (i10 + iRemaining) + ", maximum is " + capacity());
        }
        while (iRemaining > 0) {
            try {
                e eVar = this.f95470g[iE];
                int i11 = i10 - this.f95471h[iE];
                int iMin = Math.min(iRemaining, eVar.capacity() - i11);
                byteBuffer.limit(byteBuffer.position() + iMin);
                eVar.c1(i11, byteBuffer);
                i10 += iMin;
                iRemaining -= iMin;
                iE++;
            } catch (Throwable th) {
                byteBuffer.limit(iLimit);
                throw th;
            }
        }
        byteBuffer.limit(iLimit);
    }

    @Override // org.jboss.netty.buffer.e
    public int capacity() {
        return this.f95471h[this.f95470g.length];
    }

    @Override // org.jboss.netty.buffer.e
    public e d0(int i10, int i11) {
        int iE = e(i10);
        if (i10 <= capacity() - i11) {
            e eVarA = factory().a(order(), i11);
            f(i10, i11, iE, eVarA);
            return eVarA;
        }
        throw new IndexOutOfBoundsException("Too many bytes to copy - Needs " + (i10 + i11) + ", maximum is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        i iVar = new i(this);
        iVar.r0(readerIndex(), writerIndex());
        return iVar;
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return n.h(order());
    }

    public List<e> g(int i10, int i11) {
        if (i11 == 0) {
            return Collections.emptyList();
        }
        int i12 = i10 + i11;
        if (i12 > capacity()) {
            throw new IndexOutOfBoundsException("Too many bytes to decompose - Need " + i12 + ", capacity is " + capacity());
        }
        int iE = e(i10);
        ArrayList arrayList = new ArrayList(this.f95470g.length);
        e eVarDuplicate = this.f95470g[iE].duplicate();
        eVarDuplicate.f0(i10 - this.f95471h[iE]);
        do {
            int i13 = eVarDuplicate.readableBytes();
            if (i11 <= i13) {
                eVarDuplicate.u0(eVarDuplicate.readerIndex() + i11);
                arrayList.add(eVarDuplicate);
                break;
            }
            arrayList.add(eVarDuplicate);
            i11 -= i13;
            iE++;
            eVarDuplicate = this.f95470g[iE].duplicate();
        } while (i11 > 0);
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            arrayList.set(i14, ((e) arrayList.get(i14)).y0());
        }
        return arrayList;
    }

    @Override // org.jboss.netty.buffer.e
    public byte getByte(int i10) {
        int iE = e(i10);
        return this.f95470g[iE].getByte(i10 - this.f95471h[iE]);
    }

    @Override // org.jboss.netty.buffer.e
    public int getBytes(int i10, GatheringByteChannel gatheringByteChannel, int i11) throws IOException {
        return k() ? (int) gatheringByteChannel.write(j0(i10, i11)) : gatheringByteChannel.write(h0(i10, i11));
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i10) {
        int iE = e(i10);
        int i11 = i10 + 4;
        int[] iArr = this.f95471h;
        if (i11 <= iArr[iE + 1]) {
            return this.f95470g[iE].getInt(i10 - iArr[iE]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (getShort(i10 + 2) & UShort.MAX_VALUE) | ((getShort(i10) & UShort.MAX_VALUE) << 16);
        }
        return ((getShort(i10 + 2) & UShort.MAX_VALUE) << 16) | (getShort(i10) & UShort.MAX_VALUE);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i10) {
        int iE = e(i10);
        int i11 = i10 + 8;
        int[] iArr = this.f95471h;
        if (i11 <= iArr[iE + 1]) {
            return this.f95470g[iE].getLong(i10 - iArr[iE]);
        }
        return order() == ByteOrder.BIG_ENDIAN ? ((((long) getInt(i10)) & 4294967295L) << 32) | (((long) getInt(i10 + 4)) & 4294967295L) : (((long) getInt(i10)) & 4294967295L) | ((4294967295L & ((long) getInt(i10 + 4))) << 32);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i10) {
        int iE = e(i10);
        int i11 = i10 + 2;
        int[] iArr = this.f95471h;
        if (i11 <= iArr[iE + 1]) {
            return this.f95470g[iE].getShort(i10 - iArr[iE]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) ((getByte(i10 + 1) & 255) | ((getByte(i10) & 255) << 8));
        }
        return (short) (((getByte(i10 + 1) & 255) << 8) | (getByte(i10) & 255));
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i10) {
        int iE = e(i10);
        int i11 = i10 + 3;
        int[] iArr = this.f95471h;
        if (i11 <= iArr[iE + 1]) {
            return this.f95470g[iE].getUnsignedMedium(i10 - iArr[iE]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (getByte(i10 + 2) & 255) | ((getShort(i10) & UShort.MAX_VALUE) << 8);
        }
        return ((getByte(i10 + 2) & 255) << 16) | (getShort(i10) & UShort.MAX_VALUE);
    }

    public e h(int i10) {
        if (i10 >= 0 && i10 < capacity()) {
            return this.f95470g[e(i10)];
        }
        throw new IndexOutOfBoundsException("Invalid index: " + i10 + " - Bytes needed: " + i10 + ", maximum is " + capacity());
    }

    @Override // org.jboss.netty.buffer.e
    public ByteBuffer h0(int i10, int i11) {
        e[] eVarArr = this.f95470g;
        if (eVarArr.length == 1) {
            return eVarArr[0].h0(i10, i11);
        }
        ByteBuffer[] byteBufferArrJ0 = j0(i10, i11);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i11).order(order());
        for (ByteBuffer byteBuffer : byteBufferArrJ0) {
            byteBufferOrder.put(byteBuffer);
        }
        byteBufferOrder.flip();
        return byteBufferOrder;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean hasArray() {
        return false;
    }

    public int i() {
        return this.f95470g.length;
    }

    @Override // org.jboss.netty.buffer.e
    public boolean isDirect() {
        return false;
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public ByteBuffer[] j0(int i10, int i11) {
        int i12 = i10 + i11;
        if (i12 > capacity()) {
            throw new IndexOutOfBoundsException("Too many bytes to convert - Needs" + i12 + ", maximum is " + capacity());
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
        if (i11 == 0) {
            return new ByteBuffer[0];
        }
        ArrayList arrayList = new ArrayList(this.f95470g.length);
        int iE = e(i10);
        while (i11 > 0) {
            e eVar = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i11, eVar.capacity() - i13);
            arrayList.add(eVar.h0(i13, iMin));
            i10 += iMin;
            i11 -= iMin;
            iE++;
        }
        return (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
    }

    public boolean k() {
        return this.f95473j && org.jboss.netty.util.internal.d.e() >= 7;
    }

    @Override // org.jboss.netty.buffer.e
    public void k0(int i10, int i11) {
        int iE = e(i10);
        int i12 = i10 + 3;
        int[] iArr = this.f95471h;
        if (i12 <= iArr[iE + 1]) {
            this.f95470g[iE].k0(i10 - iArr[iE], i11);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            W0(i10, (short) (i11 >> 8));
            M0(i10 + 2, (byte) i11);
        } else {
            W0(i10, (short) i11);
            M0(i10 + 2, (byte) (i11 >>> 16));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return this.f95469f;
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, InputStream inputStream, int i11) throws IOException {
        int iE = e(i10);
        if (i10 > capacity() - i11) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i10 + i11) + ", maximum is " + capacity());
        }
        int i12 = 0;
        do {
            e eVar = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i11, eVar.capacity() - i13);
            int bytes = eVar.setBytes(i13, inputStream, iMin);
            if (bytes < 0) {
                if (i12 == 0) {
                    return -1;
                }
            } else if (bytes == iMin) {
                i10 += iMin;
                i11 -= iMin;
                i12 += iMin;
                iE++;
            } else {
                i10 += bytes;
                i11 -= bytes;
                i12 += bytes;
            }
        } while (i11 > 0);
        return i12;
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i10, int i11) {
        int iE = e(i10);
        int i12 = i10 + 4;
        int[] iArr = this.f95471h;
        if (i12 <= iArr[iE + 1]) {
            this.f95470g[iE].setInt(i10 - iArr[iE], i11);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            W0(i10, (short) (i11 >>> 16));
            W0(i10 + 2, (short) i11);
        } else {
            W0(i10, (short) i11);
            W0(i10 + 2, (short) (i11 >>> 16));
        }
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i10, long j10) {
        int iE = e(i10);
        int i11 = i10 + 8;
        int[] iArr = this.f95471h;
        if (i11 <= iArr[iE + 1]) {
            this.f95470g[iE].setLong(i10 - iArr[iE], j10);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setInt(i10, (int) (j10 >>> 32));
            setInt(i10 + 4, (int) j10);
        } else {
            setInt(i10, (int) j10);
            setInt(i10 + 4, (int) (j10 >>> 32));
        }
    }

    @Override // org.jboss.netty.buffer.a, org.jboss.netty.buffer.e
    public String toString() {
        String string = super.toString();
        return string.substring(0, string.length() - 1) + ", components=" + this.f95470g.length + ')';
    }

    @Override // org.jboss.netty.buffer.e
    public void v0(int i10, ByteBuffer byteBuffer) {
        int iE = e(i10);
        int iLimit = byteBuffer.limit();
        int iRemaining = byteBuffer.remaining();
        if (i10 > capacity() - iRemaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (i10 + iRemaining) + ", maximum is " + capacity());
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        }
        while (iRemaining > 0) {
            try {
                e eVar = this.f95470g[iE];
                int i11 = i10 - this.f95471h[iE];
                int iMin = Math.min(iRemaining, eVar.capacity() - i11);
                byteBuffer.limit(byteBuffer.position() + iMin);
                eVar.v0(i11, byteBuffer);
                i10 += iMin;
                iRemaining -= iMin;
                iE++;
            } catch (Throwable th) {
                byteBuffer.limit(iLimit);
                throw th;
            }
        }
        byteBuffer.limit(iLimit);
    }

    private i(i iVar) {
        this.f95469f = iVar.f95469f;
        this.f95473j = iVar.f95473j;
        this.f95470g = (e[]) iVar.f95470g.clone();
        this.f95471h = (int[]) iVar.f95471h.clone();
        r0(iVar.readerIndex(), iVar.writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public int setBytes(int i10, ScatteringByteChannel scatteringByteChannel, int i11) throws IOException {
        int iE = e(i10);
        if (i10 > capacity() - i11) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i10 + i11) + ", maximum is " + capacity());
        }
        int i12 = 0;
        do {
            e eVar = this.f95470g[iE];
            int i13 = i10 - this.f95471h[iE];
            int iMin = Math.min(i11, eVar.capacity() - i13);
            int bytes = eVar.setBytes(i13, scatteringByteChannel, iMin);
            if (bytes == 0) {
                break;
            }
            if (bytes < 0) {
                if (i12 == 0) {
                    return -1;
                }
            } else if (bytes == iMin) {
                i10 += iMin;
                i11 -= iMin;
                i12 += iMin;
                iE++;
            } else {
                i10 += bytes;
                i11 -= bytes;
                i12 += bytes;
            }
        } while (i11 > 0);
        return i12;
    }
}
