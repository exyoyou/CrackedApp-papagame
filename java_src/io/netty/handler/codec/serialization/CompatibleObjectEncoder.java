package io.netty.handler.codec.serialization;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufOutputStream;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CompatibleObjectEncoder extends MessageToByteEncoder<Serializable> {
    private final int resetInterval;
    private int writtenObjects;

    public CompatibleObjectEncoder() {
        this(16);
    }

    protected ObjectOutputStream newObjectOutputStream(OutputStream outputStream) throws Exception {
        return new ObjectOutputStream(outputStream);
    }

    public CompatibleObjectEncoder(int i10) {
        if (i10 >= 0) {
            this.resetInterval = i10;
            return;
        }
        throw new IllegalArgumentException("resetInterval: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, Serializable serializable, ByteBuf byteBuf) throws Exception {
        ObjectOutputStream objectOutputStreamNewObjectOutputStream = newObjectOutputStream(new ByteBufOutputStream(byteBuf));
        try {
            int i10 = this.resetInterval;
            if (i10 != 0) {
                int i11 = this.writtenObjects + 1;
                this.writtenObjects = i11;
                if (i11 % i10 == 0) {
                    objectOutputStreamNewObjectOutputStream.reset();
                }
            }
            objectOutputStreamNewObjectOutputStream.writeObject(serializable);
            objectOutputStreamNewObjectOutputStream.flush();
        } finally {
            objectOutputStreamNewObjectOutputStream.close();
        }
    }
}
