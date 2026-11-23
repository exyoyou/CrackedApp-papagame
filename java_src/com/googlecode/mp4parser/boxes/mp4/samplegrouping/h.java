package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f33688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f33689b;

    public h(String str) {
        this.f33689b = str;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        return this.f33688a.duplicate();
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        this.f33688a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    public ByteBuffer d() {
        return this.f33688a;
    }

    public void e(ByteBuffer byteBuffer) {
        this.f33688a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f33688a;
        ByteBuffer byteBuffer2 = ((h) obj).f33688a;
        return byteBuffer == null ? byteBuffer2 == null : byteBuffer.equals(byteBuffer2);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return this.f33689b;
    }

    public int hashCode() {
        ByteBuffer byteBuffer = this.f33688a;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    public String toString() {
        ByteBuffer byteBufferDuplicate = this.f33688a.duplicate();
        byteBufferDuplicate.rewind();
        byte[] bArr = new byte[byteBufferDuplicate.limit()];
        byteBufferDuplicate.get(bArr);
        return "UnknownEntry{content=" + com.coremedia.iso.e.b(bArr) + '}';
    }
}
