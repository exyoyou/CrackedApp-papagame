package com.czhj.wire.okio;

/* JADX INFO: loaded from: classes9.dex */
final class Segment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f25990a = 8192;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f25991b = 1024;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final byte[] f25992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f25993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f25994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f25995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f25996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Segment f25997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Segment f25998i;

    Segment() {
        this.f25992c = new byte[8192];
        this.f25996g = true;
        this.f25995f = false;
    }

    final Segment a() {
        this.f25995f = true;
        return new Segment(this.f25992c, this.f25993d, this.f25994e, true, false);
    }

    final Segment b() {
        return new Segment((byte[]) this.f25992c.clone(), this.f25993d, this.f25994e, false, true);
    }

    public final void compact() {
        Segment segment = this.f25998i;
        if (segment == this) {
            throw new IllegalStateException();
        }
        if (segment.f25996g) {
            int i10 = this.f25994e - this.f25993d;
            if (i10 > (8192 - segment.f25994e) + (segment.f25995f ? 0 : segment.f25993d)) {
                return;
            }
            writeTo(segment, i10);
            pop();
            SegmentPool.a(this);
        }
    }

    public final Segment pop() {
        Segment segment = this.f25997h;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.f25998i;
        segment3.f25997h = segment;
        this.f25997h.f25998i = segment3;
        this.f25997h = null;
        this.f25998i = null;
        return segment2;
    }

    public final Segment push(Segment segment) {
        segment.f25998i = this;
        segment.f25997h = this.f25997h;
        this.f25997h.f25998i = segment;
        this.f25997h = segment;
        return segment;
    }

    public final Segment split(int i10) {
        Segment segmentA;
        if (i10 <= 0 || i10 > this.f25994e - this.f25993d) {
            throw new IllegalArgumentException();
        }
        if (i10 >= 1024) {
            segmentA = a();
        } else {
            segmentA = SegmentPool.a();
            System.arraycopy(this.f25992c, this.f25993d, segmentA.f25992c, 0, i10);
        }
        segmentA.f25994e = segmentA.f25993d + i10;
        this.f25993d += i10;
        this.f25998i.push(segmentA);
        return segmentA;
    }

    public final void writeTo(Segment segment, int i10) {
        if (!segment.f25996g) {
            throw new IllegalArgumentException();
        }
        int i11 = segment.f25994e;
        if (i11 + i10 > 8192) {
            if (segment.f25995f) {
                throw new IllegalArgumentException();
            }
            int i12 = segment.f25993d;
            if ((i11 + i10) - i12 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = segment.f25992c;
            System.arraycopy(bArr, i12, bArr, 0, i11 - i12);
            segment.f25994e -= segment.f25993d;
            segment.f25993d = 0;
        }
        System.arraycopy(this.f25992c, this.f25993d, segment.f25992c, segment.f25994e, i10);
        segment.f25994e += i10;
        this.f25993d += i10;
    }

    Segment(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f25992c = bArr;
        this.f25993d = i10;
        this.f25994e = i11;
        this.f25995f = z10;
        this.f25996g = z11;
    }
}
