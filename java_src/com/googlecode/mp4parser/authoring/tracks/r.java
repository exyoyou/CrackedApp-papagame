package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class r implements com.googlecode.mp4parser.authoring.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f33255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f33256c = new LinkedList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long[] f33257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f33258e;

    public r(com.googlecode.mp4parser.authoring.h hVar, long j10) {
        this.f33255b = hVar;
        this.f33258e = j10 + "ms silence";
        if (!com.coremedia.iso.boxes.sampleentry.c.E.equals(hVar.F().v().getType())) {
            throw new RuntimeException("Tracks of type " + hVar.getClass().getSimpleName() + " are not supported");
        }
        int iA = com.googlecode.mp4parser.util.c.a(((H().i() * j10) / 1000) / 1024);
        long[] jArr = new long[iA];
        this.f33257d = jArr;
        Arrays.fill(jArr, ((H().i() * j10) / ((long) iA)) / 1000);
        while (true) {
            int i10 = iA - 1;
            if (iA <= 0) {
                return;
            }
            this.f33256c.add(new com.googlecode.mp4parser.authoring.g((ByteBuffer) ByteBuffer.wrap(new byte[]{BinaryMemcacheOpcodes.SASL_AUTH, 16, 4, 96, -116, BinaryMemcacheOpcodes.TOUCH}).rewind()));
            iA = i10;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33255b.F();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> G() {
        return this.f33255b.G();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33255b.H();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33256c;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> X() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33257d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j10 = 0;
        for (long j11 : this.f33257d) {
            j10 += j11;
        }
        return j10;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33255b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return this.f33258e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }
}
