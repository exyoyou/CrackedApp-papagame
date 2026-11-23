package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.memcache.AbstractMemcacheObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinaryMemcacheMessage extends AbstractMemcacheObject implements BinaryMemcacheMessage {
    private long cas;
    private byte dataType;
    private ByteBuf extras;
    private byte extrasLength;
    private ByteBuf key;
    private short keyLength;
    private byte magic;
    private int opaque;
    private byte opcode;
    private int totalBodyLength;

    protected AbstractBinaryMemcacheMessage(ByteBuf byteBuf, ByteBuf byteBuf2) {
        this.key = byteBuf;
        this.keyLength = byteBuf == null ? (short) 0 : (short) byteBuf.readableBytes();
        this.extras = byteBuf2;
        byte b10 = byteBuf2 != null ? (byte) byteBuf2.readableBytes() : (byte) 0;
        this.extrasLength = b10;
        this.totalBodyLength = this.keyLength + b10;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public long cas() {
        return this.cas;
    }

    void copyMeta(AbstractBinaryMemcacheMessage abstractBinaryMemcacheMessage) {
        abstractBinaryMemcacheMessage.magic = this.magic;
        abstractBinaryMemcacheMessage.opcode = this.opcode;
        abstractBinaryMemcacheMessage.keyLength = this.keyLength;
        abstractBinaryMemcacheMessage.extrasLength = this.extrasLength;
        abstractBinaryMemcacheMessage.dataType = this.dataType;
        abstractBinaryMemcacheMessage.totalBodyLength = this.totalBodyLength;
        abstractBinaryMemcacheMessage.opaque = this.opaque;
        abstractBinaryMemcacheMessage.cas = this.cas;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public byte dataType() {
        return this.dataType;
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        ByteBuf byteBuf = this.key;
        if (byteBuf != null) {
            byteBuf.release();
        }
        ByteBuf byteBuf2 = this.extras;
        if (byteBuf2 != null) {
            byteBuf2.release();
        }
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public ByteBuf extras() {
        return this.extras;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public byte extrasLength() {
        return this.extrasLength;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public ByteBuf key() {
        return this.key;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public short keyLength() {
        return this.keyLength;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public byte magic() {
        return this.magic;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public int opaque() {
        return this.opaque;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public byte opcode() {
        return this.opcode;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setCas(long j10) {
        this.cas = j10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setDataType(byte b10) {
        this.dataType = b10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setExtras(ByteBuf byteBuf) {
        ByteBuf byteBuf2 = this.extras;
        if (byteBuf2 != null) {
            byteBuf2.release();
        }
        this.extras = byteBuf;
        short s10 = this.extrasLength;
        byte b10 = byteBuf == null ? (byte) 0 : (byte) byteBuf.readableBytes();
        this.extrasLength = b10;
        this.totalBodyLength = (this.totalBodyLength + b10) - s10;
        return this;
    }

    BinaryMemcacheMessage setExtrasLength(byte b10) {
        this.extrasLength = b10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setKey(ByteBuf byteBuf) {
        ByteBuf byteBuf2 = this.key;
        if (byteBuf2 != null) {
            byteBuf2.release();
        }
        this.key = byteBuf;
        short s10 = this.keyLength;
        short s11 = byteBuf == null ? (short) 0 : (short) byteBuf.readableBytes();
        this.keyLength = s11;
        this.totalBodyLength = (this.totalBodyLength + s11) - s10;
        return this;
    }

    BinaryMemcacheMessage setKeyLength(short s10) {
        this.keyLength = s10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setMagic(byte b10) {
        this.magic = b10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setOpaque(int i10) {
        this.opaque = i10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setOpcode(byte b10) {
        this.opcode = b10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public BinaryMemcacheMessage setTotalBodyLength(int i10) {
        this.totalBodyLength = i10;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage
    public int totalBodyLength() {
        return this.totalBodyLength;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheMessage retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheMessage touch() {
        super.touch();
        return this;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheMessage retain(int i10) {
        super.retain(i10);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public BinaryMemcacheMessage touch(Object obj) {
        ByteBuf byteBuf = this.key;
        if (byteBuf != null) {
            byteBuf.touch(obj);
        }
        ByteBuf byteBuf2 = this.extras;
        if (byteBuf2 != null) {
            byteBuf2.touch(obj);
        }
        return this;
    }
}
