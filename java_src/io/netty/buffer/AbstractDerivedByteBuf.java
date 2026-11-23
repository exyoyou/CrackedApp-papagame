package io.netty.buffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
@Deprecated
public abstract class AbstractDerivedByteBuf extends AbstractByteBuf {
    protected AbstractDerivedByteBuf(int i10) {
        super(i10);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int i10, int i11) {
        return nioBuffer(i10, i11);
    }

    @Override // io.netty.buffer.ByteBuf
    final boolean isAccessible() {
        return unwrap().isAccessible();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isContiguous() {
        return unwrap().isContiguous();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return unwrap().isReadOnly();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int i10, int i11) {
        return unwrap().nioBuffer(i10, i11);
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return refCnt0();
    }

    int refCnt0() {
        return unwrap().refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release() {
        return release0();
    }

    boolean release0() {
        return unwrap().release();
    }

    ByteBuf retain0() {
        unwrap().retain();
        return this;
    }

    ByteBuf touch0() {
        unwrap().touch();
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release(int i10) {
        return release0(i10);
    }

    boolean release0(int i10) {
        return unwrap().release(i10);
    }

    ByteBuf retain0(int i10) {
        unwrap().retain(i10);
        return this;
    }

    ByteBuf touch0(Object obj) {
        unwrap().touch(obj);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public final ByteBuf retain() {
        return retain0();
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public final ByteBuf touch() {
        return touch0();
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public final ByteBuf retain(int i10) {
        return retain0(i10);
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public final ByteBuf touch(Object obj) {
        return touch0(obj);
    }
}
