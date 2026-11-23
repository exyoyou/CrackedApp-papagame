package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {5})
public class f extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    byte[] f33615e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.f33615e, ((f) obj).f33615e);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int i10 = this.f33595b;
        if (i10 > 0) {
            byte[] bArr = new byte[i10];
            this.f33615e = bArr;
            byteBuffer.get(bArr);
        }
    }

    public ByteBuffer g() {
        return ByteBuffer.wrap(this.f33615e);
    }

    public int h() {
        return this.f33615e.length;
    }

    public int hashCode() {
        byte[] bArr = this.f33615e;
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DecoderSpecificInfo");
        sb2.append("{bytes=");
        byte[] bArr = this.f33615e;
        sb2.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb2.append('}');
        return sb2.toString();
    }
}
