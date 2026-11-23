package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.j;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33395w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33396x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33397y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33398z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f33399s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f33400t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected byte[] f33401u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f33402v;

    static {
        s();
    }

    protected b(String str) {
        super(str);
        this.f33399s = -1;
        this.f33400t = -1;
        this.f33401u = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        this.f33402v = Collections.emptyList();
    }

    private List<com.mp4parser.iso23001.part7.a> A(ByteBuffer byteBuffer, long j10, int i10) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            long j11 = j10 - 1;
            if (j10 <= 0) {
                return arrayList;
            }
            try {
                com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
                byte[] bArr = new byte[i10];
                aVar.f75728a = bArr;
                byteBuffer.get(bArr);
                if ((getFlags() & 2) > 0) {
                    aVar.f75729b = new com.mp4parser.iso23001.part7.a.k[g.i(byteBuffer)];
                    int i11 = 0;
                    while (true) {
                        com.mp4parser.iso23001.part7.a.k[] kVarArr = aVar.f75729b;
                        if (i11 >= kVarArr.length) {
                            break;
                        }
                        kVarArr[i11] = aVar.a(g.i(byteBuffer), g.l(byteBuffer));
                        i11++;
                    }
                }
                arrayList.add(aVar);
                j10 = j11;
            } catch (BufferUnderflowException unused) {
                return null;
            }
        }
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractSampleEncryptionBox.java", b.class);
        f33395w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOffsetToFirstIV", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 29);
        f33396x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 89);
        f33397y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.util.List", "entries", "", "void"), 93);
        f33398z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.lang.Object", "o", "", "boolean"), 162);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 189);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntrySizes", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 197);
    }

    public void B(List<com.mp4parser.iso23001.part7.a> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33397y, this, this, list));
        this.f33402v = list;
    }

    @DoNotParseDetail
    public void C(boolean z10) {
        if (z10) {
            setFlags(getFlags() | 2);
        } else {
            setFlags(getFlags() & 16777213);
        }
    }

    @Override // com.googlecode.mp4parser.a, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        super.a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) > 0) {
            this.f33399s = g.k(byteBuffer);
            this.f33400t = g.p(byteBuffer);
            byte[] bArr = new byte[16];
            this.f33401u = bArr;
            byteBuffer.get(bArr);
        }
        long jL = g.l(byteBuffer);
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        ByteBuffer byteBufferDuplicate2 = byteBuffer.duplicate();
        List<com.mp4parser.iso23001.part7.a> listA = A(byteBufferDuplicate, jL, 8);
        this.f33402v = listA;
        if (listA == null) {
            this.f33402v = A(byteBufferDuplicate2, jL, 16);
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - byteBufferDuplicate2.remaining());
        } else {
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - byteBufferDuplicate.remaining());
        }
        if (this.f33402v == null) {
            throw new RuntimeException("Cannot parse SampleEncryptionBox");
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (y()) {
            i.h(byteBuffer, this.f33399s);
            i.m(byteBuffer, this.f33400t);
            byteBuffer.put(this.f33401u);
        }
        i.i(byteBuffer, this.f33402v.size());
        for (com.mp4parser.iso23001.part7.a aVar : this.f33402v) {
            if (aVar.b() > 0) {
                byte[] bArr = aVar.f75728a;
                if (bArr.length != 8 && bArr.length != 16) {
                    throw new RuntimeException("IV must be either 8 or 16 bytes");
                }
                byteBuffer.put(bArr);
                if (z()) {
                    i.f(byteBuffer, aVar.f75729b.length);
                    for (com.mp4parser.iso23001.part7.a.k kVar : aVar.f75729b) {
                        i.f(byteBuffer, kVar.clear());
                        i.i(byteBuffer, kVar.a());
                    }
                }
            }
        }
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33398z, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f33399s != bVar.f33399s || this.f33400t != bVar.f33400t) {
            return false;
        }
        List<com.mp4parser.iso23001.part7.a> list = this.f33402v;
        if (list == null ? bVar.f33402v == null : list.equals(bVar.f33402v)) {
            return Arrays.equals(this.f33401u, bVar.f33401u);
        }
        return false;
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long length = (y() ? 8 + ((long) this.f33401u.length) : 4L) + 4;
        Iterator<com.mp4parser.iso23001.part7.a> it2 = this.f33402v.iterator();
        while (it2.hasNext()) {
            length += (long) it2.next().b();
        }
        return length;
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        int i10 = ((this.f33399s * 31) + this.f33400t) * 31;
        byte[] bArr = this.f33401u;
        int iHashCode = (i10 + (bArr != null ? Arrays.hashCode(bArr) : 0)) * 31;
        List<com.mp4parser.iso23001.part7.a> list = this.f33402v;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public List<com.mp4parser.iso23001.part7.a> v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33396x, this, this));
        return this.f33402v;
    }

    public List<Short> w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        ArrayList arrayList = new ArrayList(this.f33402v.size());
        for (com.mp4parser.iso23001.part7.a aVar : this.f33402v) {
            short length = (short) aVar.f75728a.length;
            if (z()) {
                length = (short) (((short) (length + 2)) + (aVar.f75729b.length * 6));
            }
            arrayList.add(Short.valueOf(length));
        }
        return arrayList;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33395w, this, this));
        return (getSize() > 4294967296L ? 16 : 8) + (y() ? this.f33401u.length + 4 : 0) + 4;
    }

    @DoNotParseDetail
    protected boolean y() {
        return (getFlags() & 1) > 0;
    }

    @DoNotParseDetail
    public boolean z() {
        return (getFlags() & 2) > 0;
    }
}
