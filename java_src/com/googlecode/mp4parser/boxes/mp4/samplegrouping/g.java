package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class g extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f33685c = "tele";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short f33687b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1);
        byteBufferAllocate.put((byte) (this.f33686a ? 128 : 0));
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        this.f33686a = (byteBuffer.get() & 128) == 128;
    }

    public boolean d() {
        return this.f33686a;
    }

    public void e(boolean z10) {
        this.f33686a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f33686a == gVar.f33686a && this.f33687b == gVar.f33687b;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f33685c;
    }

    public int hashCode() {
        return ((this.f33686a ? 1 : 0) * 31) + this.f33687b;
    }

    public String toString() {
        return "TemporalLevelEntry{levelIndependentlyDecodable=" + this.f33686a + '}';
    }
}
