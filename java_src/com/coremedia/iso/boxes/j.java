package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public interface j {
    void b(List<d> list);

    <T extends d> List<T> c(Class<T> cls);

    ByteBuffer g(long j10, long j11) throws IOException;

    void h(WritableByteChannel writableByteChannel) throws IOException;

    <T extends d> List<T> k(Class<T> cls, boolean z10);

    List<d> l();
}
