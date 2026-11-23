package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class o extends b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Logger f33650f = Logger.getLogger(o.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBuffer f33651e;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f33651e = (ByteBuffer) byteBuffer.slice().limit(c());
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "UnknownDescriptor{tag=" + this.f33594a + ", sizeOfInstance=" + this.f33595b + ", data=" + this.f33651e + '}';
    }
}
