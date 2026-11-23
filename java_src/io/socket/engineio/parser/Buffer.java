package io.socket.engineio.parser;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class Buffer {
    private Buffer() {
    }

    public static byte[] concat(byte[][] bArr) {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        return concat(bArr, length);
    }

    public static byte[] concat(byte[][] bArr, int i10) {
        if (bArr.length == 0) {
            return new byte[0];
        }
        if (bArr.length == 1) {
            return bArr[0];
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
        for (byte[] bArr2 : bArr) {
            byteBufferAllocate.put(bArr2);
        }
        return byteBufferAllocate.array();
    }
}
