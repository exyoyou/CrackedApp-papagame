package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class j implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f32892b;

    public j(h hVar) {
        this.f32892b = hVar;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f32892b.E();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f32892b.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f32892b.G();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i H() {
        return this.f32892b.H();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f32892b.N();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f32892b.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> U() {
        return this.f32892b.U();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<c> X() {
        return this.f32892b.X();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f32892b.Z();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f32892b.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f32892b.getDuration();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f32892b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return String.valueOf(this.f32892b.getName()) + "'";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f32892b.h0();
    }
}
