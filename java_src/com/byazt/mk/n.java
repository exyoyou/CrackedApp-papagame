package com.byazt.mk;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public interface n extends my, ReadableByteChannel {
    InputStream a();

    long c(byte b10) throws IOException;

    String c(Charset charset) throws IOException;

    void c(long j10) throws IOException;

    void c(byte[] bArr) throws IOException;

    boolean c(long j10, a aVar) throws IOException;

    int da() throws IOException;

    short i() throws IOException;

    String m() throws IOException;

    String n(long j10) throws IOException;

    boolean n() throws IOException;

    byte[] nu() throws IOException;

    short sl() throws IOException;

    byte[] sp(long j10) throws IOException;

    int t() throws IOException;

    long u() throws IOException;

    a ve(long j10) throws IOException;

    @Deprecated
    ve ve();

    byte x() throws IOException;

    void x(long j10) throws IOException;
}
