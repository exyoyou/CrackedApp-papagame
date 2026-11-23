package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class l implements com.googlecode.mp4parser.authoring.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33182c;

    public l(com.googlecode.mp4parser.authoring.h hVar, int i10) {
        this.f33181b = hVar;
        this.f33182c = i10;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return b();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33181b.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f33181b.G();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f33181b.H().clone();
        iVar.t(this.f33181b.H().i() / ((long) this.f33182c));
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f33181b.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33181b.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33181b.U();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> X() {
        return this.f33181b.X();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        long[] jArr = new long[this.f33181b.Z().length];
        for (int i10 = 0; i10 < this.f33181b.Z().length; i10++) {
            jArr[i10] = this.f33181b.Z()[i10] / ((long) this.f33182c);
        }
        return jArr;
    }

    List<com.coremedia.iso.boxes.i.a> b() {
        List<com.coremedia.iso.boxes.i.a> listE = this.f33181b.E();
        if (listE == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listE.size());
        for (com.coremedia.iso.boxes.i.a aVar : listE) {
            arrayList.add(new com.coremedia.iso.boxes.i.a(aVar.a(), aVar.b() / this.f33182c));
        }
        return arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33181b.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j10 = 0;
        for (long j11 : Z()) {
            j10 += j11;
        }
        return j10;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33181b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timscale(" + this.f33181b.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f33181b.h0();
    }

    public String toString() {
        return "MultiplyTimeScaleTrack{source=" + this.f33181b + '}';
    }
}
