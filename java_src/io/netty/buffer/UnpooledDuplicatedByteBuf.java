package io.netty.buffer;

/* JADX INFO: loaded from: classes8.dex */
class UnpooledDuplicatedByteBuf extends DuplicatedByteBuf {
    UnpooledDuplicatedByteBuf(AbstractByteBuf abstractByteBuf) {
        super(abstractByteBuf);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected byte _getByte(int i10) {
        return unwrap()._getByte(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected int _getInt(int i10) {
        return unwrap()._getInt(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected int _getIntLE(int i10) {
        return unwrap()._getIntLE(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected long _getLong(int i10) {
        return unwrap()._getLong(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected long _getLongLE(int i10) {
        return unwrap()._getLongLE(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected short _getShort(int i10) {
        return unwrap()._getShort(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected short _getShortLE(int i10) {
        return unwrap()._getShortLE(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected int _getUnsignedMedium(int i10) {
        return unwrap()._getUnsignedMedium(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected int _getUnsignedMediumLE(int i10) {
        return unwrap()._getUnsignedMediumLE(i10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setByte(int i10, int i11) {
        unwrap()._setByte(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setInt(int i10, int i11) {
        unwrap()._setInt(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setIntLE(int i10, int i11) {
        unwrap()._setIntLE(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setLong(int i10, long j10) {
        unwrap()._setLong(i10, j10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setLongLE(int i10, long j10) {
        unwrap()._setLongLE(i10, j10);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setMedium(int i10, int i11) {
        unwrap()._setMedium(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setMediumLE(int i10, int i11) {
        unwrap()._setMediumLE(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setShort(int i10, int i11) {
        unwrap()._setShort(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    protected void _setShortLE(int i10, int i11) {
        unwrap()._setShortLE(i10, i11);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.ByteBuf
    public AbstractByteBuf unwrap() {
        return (AbstractByteBuf) super.unwrap();
    }
}
