package com.googlecode.mp4parser.util;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ByteBuffer f33777a = ByteBuffer.allocate(0).asReadOnlyBuffer();

    public static int a(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer, int i10) throws IOException {
        int i11;
        int i12 = 0;
        do {
            i11 = readableByteChannel.read(byteBuffer);
            if (-1 == i11) {
                break;
            }
            i12 += i11;
        } while (i12 != i10);
        if (i11 != -1) {
            return i12;
        }
        throw new EOFException("End of file. No more boxes.");
    }

    public static void b(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        a(readableByteChannel, byteBuffer, byteBuffer.remaining());
    }
}
