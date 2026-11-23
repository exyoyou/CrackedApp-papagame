package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public interface d {
    void a(WritableByteChannel writableByteChannel) throws IOException;

    long e();

    void f(j jVar);

    j getParent();

    long getSize();

    String getType();

    void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException;
}
