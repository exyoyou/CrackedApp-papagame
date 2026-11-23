package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {20})
public class m extends b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f33648e;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f33648e == ((m) obj).f33648e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f33648e = com.coremedia.iso.g.p(byteBuffer);
    }

    public int hashCode() {
        return this.f33648e;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "ProfileLevelIndicationDescriptor{profileLevelIndicationIndex=" + Integer.toHexString(this.f33648e) + '}';
    }
}
