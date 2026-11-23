package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f33665b = "roll";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private short f33666a;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort(this.f33666a);
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        this.f33666a = byteBuffer.getShort();
    }

    public short d() {
        return this.f33666a;
    }

    public void e(short s10) {
        this.f33666a = s10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33666a == ((d) obj).f33666a;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f33665b;
    }

    public int hashCode() {
        return this.f33666a;
    }
}
