package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultFullBinaryMemcacheRequest extends DefaultBinaryMemcacheRequest implements FullBinaryMemcacheRequest {
    private final ByteBuf content;

    public DefaultFullBinaryMemcacheRequest(ByteBuf byteBuf, ByteBuf byteBuf2) {
        this(byteBuf, byteBuf2, Unpooled.buffer(0));
    }

    private DefaultFullBinaryMemcacheRequest newInstance(ByteBuf byteBuf, ByteBuf byteBuf2, ByteBuf byteBuf3) {
        DefaultFullBinaryMemcacheRequest defaultFullBinaryMemcacheRequest = new DefaultFullBinaryMemcacheRequest(byteBuf, byteBuf2, byteBuf3);
        copyMeta((DefaultBinaryMemcacheRequest) defaultFullBinaryMemcacheRequest);
        return defaultFullBinaryMemcacheRequest;
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

    public DefaultFullBinaryMemcacheRequest(ByteBuf byteBuf, ByteBuf byteBuf2, ByteBuf byteBuf3) {
        super(byteBuf, byteBuf2);
        this.content = (ByteBuf) ObjectUtil.checkNotNull(byteBuf3, "content");
        setTotalBodyLength(keyLength() + extrasLength() + byteBuf3.readableBytes());
    }

    @Override // io.netty.handler.codec.memcache.MemcacheContent, io.netty.buffer.ByteBufHolder
    public FullBinaryMemcacheRequest copy() {
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
    public FullBinaryMemcacheRequest duplicate() {
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
    public FullBinaryMemcacheRequest replace(ByteBuf byteBuf) {
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
    public FullBinaryMemcacheRequest retainedDuplicate() {
        return replace(content().retainedDuplicate());
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheRequest, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheRequest retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheRequest, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheRequest touch() {
        super.touch();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheRequest, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheRequest retain(int i10) {
        super.retain(i10);
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheRequest, io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.ReferenceCounted
    public FullBinaryMemcacheRequest touch(Object obj) {
        super.touch(obj);
        this.content.touch(obj);
        return this;
    }
}
