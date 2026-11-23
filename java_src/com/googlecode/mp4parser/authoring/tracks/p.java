package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class p extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f33238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.f f33239g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33240h;

    private class b extends AbstractList<com.googlecode.mp4parser.authoring.f> {
        private b() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.googlecode.mp4parser.authoring.f get(int i10) {
            return p.this.f33238f == ((long) i10) ? p.this.f33239g : p.this.f33237e.U().get(i10);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return p.this.f33237e.U().size();
        }

        /* synthetic */ b(p pVar, b bVar) {
            this();
        }
    }

    public p(com.googlecode.mp4parser.authoring.h hVar, long j10, ByteBuffer byteBuffer) {
        super("replace(" + hVar.getName() + ")");
        this.f33237e = hVar;
        this.f33238f = j10;
        this.f33239g = new com.googlecode.mp4parser.authoring.g(byteBuffer);
        this.f33240h = new b(this, null);
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f33237e.E();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33237e.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33237e.H();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public synchronized long[] N() {
        return this.f33237e.N();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33237e.S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33240h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] Z() {
        return this.f33237e.Z();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33237e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33237e.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f33237e.h0();
    }
}
