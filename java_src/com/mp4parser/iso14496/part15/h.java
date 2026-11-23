package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class h extends com.googlecode.mp4parser.boxes.mp4.samplegrouping.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f75674l = "tscl";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f75675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f75676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f75677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f75678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f75679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f75680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f75681g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f75682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f75683i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f75684j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f75685k;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(20);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f75675a);
        com.coremedia.iso.i.m(byteBufferAllocate, (this.f75676b << 6) + (this.f75677c ? 32 : 0) + this.f75678d);
        com.coremedia.iso.i.i(byteBufferAllocate, this.f75679e);
        com.coremedia.iso.i.k(byteBufferAllocate, this.f75680f);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f75681g);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f75682h);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f75683i);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f75684j);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f75685k);
        return (ByteBuffer) byteBufferAllocate.rewind();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        this.f75675a = com.coremedia.iso.g.p(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f75676b = (iP & 192) >> 6;
        this.f75677c = (iP & 32) > 0;
        this.f75678d = iP & 31;
        this.f75679e = com.coremedia.iso.g.l(byteBuffer);
        this.f75680f = com.coremedia.iso.g.n(byteBuffer);
        this.f75681g = com.coremedia.iso.g.p(byteBuffer);
        this.f75682h = com.coremedia.iso.g.i(byteBuffer);
        this.f75683i = com.coremedia.iso.g.i(byteBuffer);
        this.f75684j = com.coremedia.iso.g.p(byteBuffer);
        this.f75685k = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public int c() {
        return 20;
    }

    public int d() {
        return this.f75675a;
    }

    public int e() {
        return this.f75683i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f75675a == hVar.f75675a && this.f75683i == hVar.f75683i && this.f75685k == hVar.f75685k && this.f75684j == hVar.f75684j && this.f75682h == hVar.f75682h && this.f75680f == hVar.f75680f && this.f75681g == hVar.f75681g && this.f75679e == hVar.f75679e && this.f75678d == hVar.f75678d && this.f75676b == hVar.f75676b && this.f75677c == hVar.f75677c;
    }

    public int f() {
        return this.f75685k;
    }

    public int g() {
        return this.f75684j;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f75674l;
    }

    public int h() {
        return this.f75682h;
    }

    public int hashCode() {
        int i10 = ((((((this.f75675a * 31) + this.f75676b) * 31) + (this.f75677c ? 1 : 0)) * 31) + this.f75678d) * 31;
        long j10 = this.f75679e;
        int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f75680f;
        return ((((((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f75681g) * 31) + this.f75682h) * 31) + this.f75683i) * 31) + this.f75684j) * 31) + this.f75685k;
    }

    public long i() {
        return this.f75680f;
    }

    public int j() {
        return this.f75681g;
    }

    public long k() {
        return this.f75679e;
    }

    public int l() {
        return this.f75678d;
    }

    public int m() {
        return this.f75676b;
    }

    public boolean n() {
        return this.f75677c;
    }

    public void o(int i10) {
        this.f75675a = i10;
    }

    public void p(int i10) {
        this.f75683i = i10;
    }

    public void q(int i10) {
        this.f75685k = i10;
    }

    public void r(int i10) {
        this.f75684j = i10;
    }

    public void s(int i10) {
        this.f75682h = i10;
    }

    public void t(long j10) {
        this.f75680f = j10;
    }

    public String toString() {
        return "TemporalLayerSampleGroup{temporalLayerId=" + this.f75675a + ", tlprofile_space=" + this.f75676b + ", tltier_flag=" + this.f75677c + ", tlprofile_idc=" + this.f75678d + ", tlprofile_compatibility_flags=" + this.f75679e + ", tlconstraint_indicator_flags=" + this.f75680f + ", tllevel_idc=" + this.f75681g + ", tlMaxBitRate=" + this.f75682h + ", tlAvgBitRate=" + this.f75683i + ", tlConstantFrameRate=" + this.f75684j + ", tlAvgFrameRate=" + this.f75685k + '}';
    }

    public void u(int i10) {
        this.f75681g = i10;
    }

    public void v(long j10) {
        this.f75679e = j10;
    }

    public void w(int i10) {
        this.f75678d = i10;
    }

    public void x(int i10) {
        this.f75676b = i10;
    }

    public void y(boolean z10) {
        this.f75677c = z10;
    }
}
