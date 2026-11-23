package io.netty.handler.codec.marshalling;

import io.netty.buffer.ByteBuf;
import java.io.IOException;
import org.jboss.marshalling.ByteOutput;

/* JADX INFO: loaded from: classes.dex */
class ChannelBufferByteOutput implements ByteOutput {
    private final ByteBuf buffer;

    ChannelBufferByteOutput(ByteBuf byteBuf) {
        this.buffer = byteBuf;
    }

    public void close() throws IOException {
    }

    public void flush() throws IOException {
    }

    ByteBuf getBuffer() {
        return this.buffer;
    }

    public void write(int i10) throws IOException {
        this.buffer.writeByte(i10);
    }

    public void write(byte[] bArr) throws IOException {
        this.buffer.writeBytes(bArr);
    }

    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.buffer.writeBytes(bArr, i10, i11);
    }
}
