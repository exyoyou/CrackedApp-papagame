package com.googlecode.mp4parser.authoring;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f32877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f32878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer[] f32879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.coremedia.iso.boxes.j f32880d;

    public g(ByteBuffer byteBuffer) {
        this.f32877a = -1L;
        this.f32878b = byteBuffer.limit();
        this.f32879c = new ByteBuffer[]{byteBuffer};
        this.f32880d = null;
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public ByteBuffer a() {
        c();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[com.googlecode.mp4parser.util.c.a(this.f32878b)]);
        for (ByteBuffer byteBuffer : this.f32879c) {
            byteBufferWrap.put(byteBuffer.duplicate());
        }
        byteBufferWrap.rewind();
        return byteBufferWrap;
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public void b(WritableByteChannel writableByteChannel) throws IOException {
        c();
        for (ByteBuffer byteBuffer : this.f32879c) {
            writableByteChannel.write(byteBuffer.duplicate());
        }
    }

    protected void c() {
        if (this.f32879c != null) {
            return;
        }
        com.coremedia.iso.boxes.j jVar = this.f32880d;
        if (jVar == null) {
            throw new RuntimeException("Missing parent container, can't read sample " + this);
        }
        try {
            this.f32879c = new ByteBuffer[]{jVar.g(this.f32877a, this.f32878b)};
        } catch (IOException e10) {
            throw new RuntimeException("couldn't read sample " + this, e10);
        }
    }

    @Override // com.googlecode.mp4parser.authoring.f
    public long getSize() {
        return this.f32878b;
    }

    public String toString() {
        return "SampleImpl{offset=" + this.f32877a + "{size=" + this.f32878b + '}';
    }

    public g(ByteBuffer[] byteBufferArr) {
        this.f32877a = -1L;
        int iRemaining = 0;
        for (ByteBuffer byteBuffer : byteBufferArr) {
            iRemaining += byteBuffer.remaining();
        }
        this.f32878b = iRemaining;
        this.f32879c = byteBufferArr;
        this.f32880d = null;
    }

    public g(long j10, long j11, ByteBuffer byteBuffer) {
        this.f32877a = j10;
        this.f32878b = j11;
        this.f32879c = new ByteBuffer[]{byteBuffer};
        this.f32880d = null;
    }

    public g(long j10, long j11, com.coremedia.iso.boxes.j jVar) {
        this.f32877a = j10;
        this.f32878b = j11;
        this.f32879c = null;
        this.f32880d = jVar;
    }
}
