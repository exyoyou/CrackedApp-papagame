package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class BufferedByteArrayOutputStream extends ByteArrayOutputStream implements PublicMemberKeeper {
    public BufferedByteArrayOutputStream() {
    }

    public byte[] getBuffer() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int getBufferSize() {
        return ((ByteArrayOutputStream) this).buf.length;
    }

    public boolean switchBuffer(byte[] bArr) {
        if (bArr == null || bArr.length != ((ByteArrayOutputStream) this).buf.length) {
            return false;
        }
        ((ByteArrayOutputStream) this).buf = bArr;
        return true;
    }

    public void write(ByteBuffer byteBuffer) throws IOException {
        write(byteBuffer, byteBuffer.limit());
    }

    public BufferedByteArrayOutputStream(int i10) {
        super(i10);
    }

    public void write(ByteBuffer byteBuffer, int i10) throws IOException {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        int length = bArr.length;
        int i11 = ((ByteArrayOutputStream) this).count;
        if (length - i11 >= i10) {
            byteBuffer.get(bArr, i11, i10);
            ((ByteArrayOutputStream) this).count += i10;
        } else {
            byte[] bArr2 = new byte[i10];
            byteBuffer.get(bArr2);
            write(bArr2);
        }
    }
}
