package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {19})
public class i extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    byte[] f33632e;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        if (a() > 0) {
            byte[] bArr = new byte[a()];
            this.f33632e = bArr;
            byteBuffer.get(bArr);
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ExtensionDescriptor");
        sb2.append("{bytes=");
        byte[] bArr = this.f33632e;
        sb2.append(bArr == null ? "null" : com.coremedia.iso.e.b(bArr));
        sb2.append('}');
        return sb2.toString();
    }
}
