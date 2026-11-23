package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.v0;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends AbstractList<f> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f32893k = 268435456;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f32894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    f1 f32895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ByteBuffer[][] f32896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f32897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long[] f32898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long[] f32899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long[][] f32900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    t0 f32901i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f32902j = 0;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.samples.a$a, reason: collision with other inner class name */
    class C0613a implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ long f32904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f32905c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ long f32906d;

        C0613a(long j10, ByteBuffer byteBuffer, long j11) {
            this.f32904b = j10;
            this.f32905c = byteBuffer;
            this.f32906d = j11;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return (ByteBuffer) ((ByteBuffer) this.f32905c.position(c.a(this.f32906d))).slice().limit(c.a(this.f32904b));
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(a());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f32904b;
        }

        public String toString() {
            return "DefaultMp4Sample(size:" + this.f32904b + ")";
        }
    }

    public a(long j10, j jVar) {
        int i10;
        this.f32895c = null;
        this.f32896d = null;
        int i11 = 0;
        this.f32894b = jVar;
        for (f1 f1Var : ((h0) jVar.c(h0.class).get(0)).c(f1.class)) {
            if (f1Var.z().C() == j10) {
                this.f32895c = f1Var;
            }
        }
        f1 f1Var2 = this.f32895c;
        if (f1Var2 == null) {
            throw new RuntimeException("This MP4 does not contain track " + j10);
        }
        long[] jArrV = f1Var2.y().v().v();
        this.f32898f = jArrV;
        this.f32899g = new long[jArrV.length];
        this.f32896d = new ByteBuffer[jArrV.length][];
        this.f32900h = new long[jArrV.length][];
        this.f32901i = this.f32895c.y().I();
        List<v0.a> listW = this.f32895c.y().J().w();
        v0.a[] aVarArr = (v0.a[]) listW.toArray(new v0.a[listW.size()]);
        v0.a aVar = aVarArr[0];
        long jA = aVar.a();
        int iA = c.a(aVar.c());
        int size = size();
        int i12 = 0;
        int i13 = 1;
        int i14 = 0;
        int i15 = 1;
        do {
            i12++;
            if (i12 == jA) {
                if (aVarArr.length > i13) {
                    v0.a aVar2 = aVarArr[i13];
                    i14 = iA;
                    iA = c.a(aVar2.c());
                    i13++;
                    jA = aVar2.a();
                } else {
                    i14 = iA;
                    iA = -1;
                    jA = Long.MAX_VALUE;
                }
            }
            this.f32900h[i12 - 1] = new long[i14];
            i15 += i14;
        } while (i15 <= size);
        this.f32897e = new int[i12 + 1];
        v0.a aVar3 = aVarArr[0];
        long jA2 = aVar3.a();
        int iA2 = c.a(aVar3.c());
        int i16 = 0;
        int i17 = 1;
        int i18 = 1;
        int i19 = 0;
        while (true) {
            i10 = i16 + 1;
            this.f32897e[i16] = i17;
            if (i10 == jA2) {
                if (aVarArr.length > i18) {
                    v0.a aVar4 = aVarArr[i18];
                    i19 = iA2;
                    i18++;
                    iA2 = c.a(aVar4.c());
                    jA2 = aVar4.a();
                } else {
                    i19 = iA2;
                    iA2 = -1;
                    jA2 = Long.MAX_VALUE;
                }
            }
            i17 += i19;
            if (i17 > size) {
                break;
            } else {
                i16 = i10;
            }
        }
        this.f32897e[i10] = Integer.MAX_VALUE;
        long jX = 0;
        for (int i20 = 1; i20 <= this.f32901i.v(); i20++) {
            while (i20 == this.f32897e[i11]) {
                i11++;
                jX = 0;
            }
            long[] jArr = this.f32899g;
            int i21 = i11 - 1;
            int i22 = i20 - 1;
            jArr[i21] = jArr[i21] + this.f32901i.x(i22);
            this.f32900h[i21][i20 - this.f32897e[i21]] = jX;
            jX += this.f32901i.x(i22);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f get(int i10) {
        ByteBuffer byteBuffer;
        if (i10 >= this.f32901i.v()) {
            throw new IndexOutOfBoundsException();
        }
        int iB = b(i10);
        int i11 = this.f32897e[iB] - 1;
        long j10 = iB;
        long j11 = this.f32898f[c.a(j10)];
        long[] jArr = this.f32900h[c.a(j10)];
        long j12 = jArr[i10 - i11];
        ByteBuffer[] byteBufferArr = this.f32896d[c.a(j10)];
        if (byteBufferArr == null) {
            ArrayList arrayList = new ArrayList();
            long j13 = 0;
            int i12 = 0;
            while (i12 < jArr.length) {
                try {
                    long j14 = j10;
                    if ((jArr[i12] + this.f32901i.x(i12 + i11)) - j13 > f32893k) {
                        arrayList.add(this.f32894b.g(j11 + j13, jArr[i12] - j13));
                        j13 = jArr[i12];
                    }
                    i12++;
                    j12 = j12;
                    j10 = j14;
                } catch (IOException e10) {
                    throw new IndexOutOfBoundsException(e10.getMessage());
                }
            }
            arrayList.add(this.f32894b.g(j11 + j13, (-j13) + jArr[jArr.length - 1] + this.f32901i.x((i11 + jArr.length) - 1)));
            byteBufferArr = (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
            this.f32896d[c.a(j10)] = byteBufferArr;
        }
        long jLimit = j12;
        for (ByteBuffer byteBuffer2 : byteBufferArr) {
            if (jLimit < byteBuffer2.limit()) {
                byteBuffer = byteBuffer2;
                return new C0613a(this.f32901i.x(i10), byteBuffer, jLimit);
            }
            jLimit -= (long) byteBuffer2.limit();
        }
        byteBuffer = null;
        return new C0613a(this.f32901i.x(i10), byteBuffer, jLimit);
    }

    synchronized int b(int i10) {
        int i11 = i10 + 1;
        int[] iArr = this.f32897e;
        int i12 = this.f32902j;
        int i13 = iArr[i12];
        if (i11 >= i13 && i11 < iArr[i12 + 1]) {
            return i12;
        }
        if (i11 < i13) {
            this.f32902j = 0;
            while (true) {
                int[] iArr2 = this.f32897e;
                int i14 = this.f32902j;
                if (iArr2[i14 + 1] > i11) {
                    return i14;
                }
                this.f32902j = i14 + 1;
            }
        } else {
            this.f32902j = i12 + 1;
            while (true) {
                int[] iArr3 = this.f32897e;
                int i15 = this.f32902j;
                if (iArr3[i15 + 1] > i11) {
                    return i15;
                }
                this.f32902j = i15 + 1;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return c.a(this.f32895c.y().I().v());
    }
}
