package io.netty.buffer;

import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes8.dex */
public class ByteBufOutputStream extends OutputStream implements DataOutput {
    private final ByteBuf buffer;
    private final int startIndex;
    private final DataOutputStream utf8out = new DataOutputStream(this);

    public ByteBufOutputStream(ByteBuf byteBuf) {
        this.buffer = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "buffer");
        this.startIndex = byteBuf.writerIndex();
    }

    public ByteBuf buffer() {
        return this.buffer;
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return;
        }
        this.buffer.writeBytes(bArr, i10, i11);
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z10) throws IOException {
        this.buffer.writeBoolean(z10);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i10) throws IOException {
        this.buffer.writeByte(i10);
    }

    @Override // java.io.DataOutput
    public void writeBytes(String str) throws IOException {
        this.buffer.writeCharSequence(str, CharsetUtil.US_ASCII);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i10) throws IOException {
        this.buffer.writeChar(i10);
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) throws IOException {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.buffer.writeChar(str.charAt(i10));
        }
    }

    @Override // java.io.DataOutput
    public void writeDouble(double d10) throws IOException {
        this.buffer.writeDouble(d10);
    }

    @Override // java.io.DataOutput
    public void writeFloat(float f10) throws IOException {
        this.buffer.writeFloat(f10);
    }

    @Override // java.io.DataOutput
    public void writeInt(int i10) throws IOException {
        this.buffer.writeInt(i10);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j10) throws IOException {
        this.buffer.writeLong(j10);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i10) throws IOException {
        this.buffer.writeShort((short) i10);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) throws IOException {
        this.utf8out.writeUTF(str);
    }

    public int writtenBytes() {
        return this.buffer.writerIndex() - this.startIndex;
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(byte[] bArr) throws IOException {
        this.buffer.writeBytes(bArr);
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(int i10) throws IOException {
        this.buffer.writeByte(i10);
    }
}
