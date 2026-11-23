package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public class i extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f33690c = "rap ";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short f33692b;

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1);
        byteBufferAllocate.put((byte) ((this.f33691a ? 128 : 0) | (this.f33692b & 127)));
        byteBufferAllocate.rewind();
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void b(ByteBuffer byteBuffer) {
        byte b10 = byteBuffer.get();
        this.f33691a = (b10 & 128) == 128;
        this.f33692b = (short) (b10 & ByteCompanionObject.MAX_VALUE);
    }

    public short d() {
        return this.f33692b;
    }

    public boolean e() {
        return this.f33691a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f33692b == iVar.f33692b && this.f33691a == iVar.f33691a;
    }

    public void f(short s10) {
        this.f33692b = s10;
    }

    public void g(boolean z10) {
        this.f33691a = z10;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String getType() {
        return f33690c;
    }

    public int hashCode() {
        return ((this.f33691a ? 1 : 0) * 31) + this.f33692b;
    }

    public String toString() {
        return "VisualRandomAccessEntry{numLeadingSamplesKnown=" + this.f33691a + ", numLeadingSamples=" + ((int) this.f33692b) + '}';
    }
}
