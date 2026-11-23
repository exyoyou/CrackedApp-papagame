package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultFullBinaryMemcacheResponse extends DefaultBinaryMemcacheResponse implements FullBinaryMemcacheResponse {
    private final ByteBuf content;

    public DefaultFullBinaryMemcacheResponse(ByteBuf byteBuf, ByteBuf byteBuf2) {
        this(byteBuf, byteBuf2, Unpooled.buffer(0));
    }

    private FullBinaryMemcacheResponse newInstance(ByteBuf byteBuf, ByteBuf byteBuf2, ByteBuf byteBuf3) {
        DefaultFullBinaryMemcacheResponse defaultFullBinaryMemcacheResponse = new DefaultFullBinaryMemcacheResponse(byteBuf, byteBuf2, byteBuf3);
        copyMeta((DefaultBinaryMemcacheResponse) defaultFullBinaryMemcacheResponse);
        return defaultFullBinaryMemcacheResponse;
    }

    @Override // io.netty.buffer.ByteBufHolder
    public ByteBuf content() {
        return this.content;
    }

    @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        super.deallocate();
        this.content.release();
    }

    public DefaultFullBinaryMemcacheResponse(ByteBuf byteBuf, ByteBuf byteBuf2, ByteBuf byteBuf3) {
        super(byteBuf, byteBuf2);
        this.content = (ByteBuf) ObjectUtil.checkNotNull(byteBuf3, "content");
        setTotalBodyLength(keyLength() + extrasLength() + byteBuf3.readableBytes());
    }

    @Override // io.netty.handler.codec.memcache.MemcacheContent, io.netty.buffer.ByteBufHolder
    public FullBinaryMemcacheResponse copy() {
        ByteBuf byteBufKey = key();
        if (byteBufKey != null) {
            byteBufKey = byteBufKey.copy();
        }
        ByteBuf byteBufExtras = extras();
        if (byteBufExtras != null) {
            byteBufExtras = byteBufExtras.copy();
        }
        return newInstance(byteBufKey, byteBufExtras, content().copy());
    }

    @Override // io.netty.handler.codec.memcache.MemcacheContent, io.netty.buffer.ByteBufHolder
    public FullBinaryMemcacheResponse duplicate() {
        ByteBuf byteBufKey = key();
        if (byteBufKey != null) {
            byteBufKey = byteBufKey.duplicate();
        }
        ByteBuf byteBufExtras = extras();
        if (byteBufExtras != null) {
            byteBufExtras = byteBufExtras.duplicate();
        }
        return newInstance(byteBufKey, byteBufExtras, content().duplicate());
    }

    @Override // io.netty.handler.codec.memcache.MemcacheContent, io.netty.buffer.ByteBufHolder
    public FullBinaryMemcacheResponse replace(ByteBuf byteBuf) {
        ByteBuf byteBufKey = key();
        if (byteBufKey != null) {
            byteBufKey = byteBufKey.retainedDuplicate();
        }
        ByteBuf byteBufExtras = extras();
        if (byteBufExtras != null) {
            byteBufExtras = byteBufExtras.retainedDuplicate();
        }
        return newInstance(byteBufKey, byteBufExtras, byteBuf);
    }

    @Override // io.netty.handler.codec.memcache.MemcacheContent, io.netty.buffer.ByteBufHolder
    public FullBinaryMemcacheResponse retainedDuplicate() {
        return replace(content().retainedDuplicate());
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheResponse retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheResponse touch() {
        super.touch();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheResponse retain(int i10) {
        super.retain(i10);
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheResponse touch(Object obj) {
        super.touch(obj);
        this.content.touch(obj);
        return this;
    }
}
