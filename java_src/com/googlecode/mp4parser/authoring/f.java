package com.googlecode.mp4parser.authoring;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public interface f {
    ByteBuffer a();

    void b(WritableByteChannel writableByteChannel) throws IOException;

    long getSize();
}
