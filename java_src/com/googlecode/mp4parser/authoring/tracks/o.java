package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class o implements com.googlecode.mp4parser.authoring.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33236c;

    public o(com.googlecode.mp4parser.authoring.h hVar, int i10) {
        this.f33235b = hVar;
        this.f33236c = i10;
    }

    static List<com.coremedia.iso.boxes.i.a> a(List<com.coremedia.iso.boxes.i.a> list, int i10) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (com.coremedia.iso.boxes.i.a aVar : list) {
            arrayList.add(new com.coremedia.iso.boxes.i.a(aVar.a(), aVar.b() * i10));
        }
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return a(this.f33235b.E(), this.f33236c);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33235b.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f33235b.G();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        com.googlecode.mp4parser.authoring.i iVar = (com.googlecode.mp4parser.authoring.i) this.f33235b.H().clone();
        iVar.t(this.f33235b.H().i() * ((long) this.f33236c));
        return iVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f33235b.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33235b.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33235b.U();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> X() {
        return this.f33235b.X();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        long[] jArr = new long[this.f33235b.Z().length];
        for (int i10 = 0; i10 < this.f33235b.Z().length; i10++) {
            jArr[i10] = this.f33235b.Z()[i10] * ((long) this.f33236c);
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33235b.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f33235b.getDuration() * ((long) this.f33236c);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33235b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "timscale(" + this.f33235b.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f33235b.h0();
    }

    public String toString() {
        return "MultiplyTimeScaleTrack{source=" + this.f33235b + '}';
    }
}
