package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {4})
public class e extends b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static Logger f33604o = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f33605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f33606f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f33607g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f33608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f33609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f33610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    f f33611k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    a f33612l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    List<m> f33613m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    byte[] f33614n;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int iA;
        this.f33605e = com.coremedia.iso.g.p(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f33606f = iP >>> 2;
        this.f33607g = (iP >> 1) & 1;
        this.f33608h = com.coremedia.iso.g.k(byteBuffer);
        this.f33609i = com.coremedia.iso.g.l(byteBuffer);
        this.f33610j = com.coremedia.iso.g.l(byteBuffer);
        if (byteBuffer.remaining() > 2) {
            int iPosition = byteBuffer.position();
            b bVarA = l.a(this.f33605e, byteBuffer);
            int iPosition2 = byteBuffer.position() - iPosition;
            Logger logger = f33604o;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(bVarA);
            sb2.append(" - DecoderConfigDescr1 read: ");
            sb2.append(iPosition2);
            sb2.append(", size: ");
            sb2.append(bVarA != null ? Integer.valueOf(bVarA.a()) : null);
            logger.finer(sb2.toString());
            if (bVarA != null && iPosition2 < (iA = bVarA.a())) {
                byte[] bArr = new byte[iA - iPosition2];
                this.f33614n = bArr;
                byteBuffer.get(bArr);
            }
            if (bVarA instanceof f) {
                this.f33611k = (f) bVarA;
            }
            if (bVarA instanceof a) {
                this.f33612l = (a) bVarA;
            }
        }
        while (byteBuffer.remaining() > 2) {
            long jPosition = byteBuffer.position();
            b bVarA2 = l.a(this.f33605e, byteBuffer);
            long jPosition2 = ((long) byteBuffer.position()) - jPosition;
            Logger logger2 = f33604o;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(bVarA2);
            sb3.append(" - DecoderConfigDescr2 read: ");
            sb3.append(jPosition2);
            sb3.append(", size: ");
            sb3.append(bVarA2 != null ? Integer.valueOf(bVarA2.a()) : null);
            logger2.finer(sb3.toString());
            if (bVarA2 instanceof m) {
                this.f33613m.add((m) bVarA2);
            }
        }
    }

    public a g() {
        return this.f33612l;
    }

    public long h() {
        return this.f33610j;
    }

    public int i() {
        return this.f33608h;
    }

    public f j() {
        return this.f33611k;
    }

    public long k() {
        return this.f33609i;
    }

    public int l() {
        return this.f33605e;
    }

    public List<m> m() {
        return this.f33613m;
    }

    public int n() {
        return this.f33606f;
    }

    public int o() {
        return this.f33607g;
    }

    public ByteBuffer p() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(q());
        com.coremedia.iso.i.m(byteBufferAllocate, 4);
        com.coremedia.iso.i.m(byteBufferAllocate, q() - 2);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f33605e);
        com.coremedia.iso.i.m(byteBufferAllocate, (this.f33606f << 2) | (this.f33607g << 1) | 1);
        com.coremedia.iso.i.h(byteBufferAllocate, this.f33608h);
        com.coremedia.iso.i.i(byteBufferAllocate, this.f33609i);
        com.coremedia.iso.i.i(byteBufferAllocate, this.f33610j);
        a aVar = this.f33612l;
        if (aVar != null) {
            byteBufferAllocate.put(aVar.t().array());
        }
        return byteBufferAllocate;
    }

    public int q() {
        a aVar = this.f33612l;
        return (aVar == null ? 0 : aVar.u()) + 15;
    }

    public void r(a aVar) {
        this.f33612l = aVar;
    }

    public void s(long j10) {
        this.f33610j = j10;
    }

    public void t(int i10) {
        this.f33608h = i10;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DecoderConfigDescriptor");
        sb2.append("{objectTypeIndication=");
        sb2.append(this.f33605e);
        sb2.append(", streamType=");
        sb2.append(this.f33606f);
        sb2.append(", upStream=");
        sb2.append(this.f33607g);
        sb2.append(", bufferSizeDB=");
        sb2.append(this.f33608h);
        sb2.append(", maxBitRate=");
        sb2.append(this.f33609i);
        sb2.append(", avgBitRate=");
        sb2.append(this.f33610j);
        sb2.append(", decoderSpecificInfo=");
        sb2.append(this.f33611k);
        sb2.append(", audioSpecificInfo=");
        sb2.append(this.f33612l);
        sb2.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.f33614n;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb2.append(com.coremedia.iso.e.b(bArr));
        sb2.append(", profileLevelIndicationDescriptors=");
        List<m> list = this.f33613m;
        sb2.append(list == null ? "null" : Arrays.asList(list).toString());
        sb2.append('}');
        return sb2.toString();
    }

    public void u(long j10) {
        this.f33609i = j10;
    }

    public void v(int i10) {
        this.f33605e = i10;
    }

    public void w(int i10) {
        this.f33606f = i10;
    }

    public void x(int i10) {
        this.f33607g = i10;
    }
}
