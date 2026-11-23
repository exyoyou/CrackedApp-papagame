package com.coremedia.iso.boxes.sampleentry;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a extends com.googlecode.mp4parser.b implements f {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f25060o;

    protected a(String str) {
        super(str);
        this.f25060o = 1;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public abstract void a(WritableByteChannel writableByteChannel) throws IOException;

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public int d() {
        return this.f25060o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public abstract void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException;

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public void j(int i10) {
        this.f25060o = i10;
    }
}
