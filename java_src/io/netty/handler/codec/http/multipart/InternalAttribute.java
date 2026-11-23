package io.netty.handler.codec.http.multipart;

import com.haima.hmcp.beans.HmInputMappingContent;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.internal.ObjectUtil;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class InternalAttribute extends AbstractReferenceCounted implements InterfaceHttpData {
    private final Charset charset;
    private int size;
    private final List<ByteBuf> value = new ArrayList();

    InternalAttribute(Charset charset) {
        this.charset = charset;
    }

    public void addValue(String str) {
        ObjectUtil.checkNotNull(str, HmInputMappingContent.FIELD_VALUE);
        ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(str, this.charset);
        this.value.add(byteBufCopiedBuffer);
        this.size += byteBufCopiedBuffer.readableBytes();
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
    }

    public boolean equals(Object obj) {
        if (obj instanceof InternalAttribute) {
            return getName().equalsIgnoreCase(((InternalAttribute) obj).getName());
        }
        return false;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpData
    public InterfaceHttpData.HttpDataType getHttpDataType() {
        return InterfaceHttpData.HttpDataType.InternalAttribute;
    }

    @Override // io.netty.handler.codec.http.multipart.InterfaceHttpData
    public String getName() {
        return "InternalAttribute";
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public void setValue(String str, int i10) {
        ObjectUtil.checkNotNull(str, HmInputMappingContent.FIELD_VALUE);
        ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(str, this.charset);
        ByteBuf byteBuf = this.value.set(i10, byteBufCopiedBuffer);
        if (byteBuf != null) {
            this.size -= byteBuf.readableBytes();
            byteBuf.release();
        }
        this.size += byteBufCopiedBuffer.readableBytes();
    }

    public int size() {
        return this.size;
    }

    public ByteBuf toByteBuf() {
        return Unpooled.compositeBuffer().addComponents(this.value).writerIndex(size()).readerIndex(0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<ByteBuf> it2 = this.value.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().toString(this.charset));
        }
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData instanceof InternalAttribute) {
            return compareTo((InternalAttribute) interfaceHttpData);
        }
        throw new ClassCastException("Cannot compare " + getHttpDataType() + " with " + interfaceHttpData.getHttpDataType());
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public InterfaceHttpData retain() {
        Iterator<ByteBuf> it2 = this.value.iterator();
        while (it2.hasNext()) {
            it2.next().retain();
        }
        return this;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public InterfaceHttpData touch() {
        Iterator<ByteBuf> it2 = this.value.iterator();
        while (it2.hasNext()) {
            it2.next().touch();
        }
        return this;
    }

    public void addValue(String str, int i10) {
        ObjectUtil.checkNotNull(str, HmInputMappingContent.FIELD_VALUE);
        ByteBuf byteBufCopiedBuffer = Unpooled.copiedBuffer(str, this.charset);
        this.value.add(i10, byteBufCopiedBuffer);
        this.size += byteBufCopiedBuffer.readableBytes();
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public InterfaceHttpData retain(int i10) {
        Iterator<ByteBuf> it2 = this.value.iterator();
        while (it2.hasNext()) {
            it2.next().retain(i10);
        }
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public InterfaceHttpData touch(Object obj) {
        Iterator<ByteBuf> it2 = this.value.iterator();
        while (it2.hasNext()) {
            it2.next().touch(obj);
        }
        return this;
    }

    public int compareTo(InternalAttribute internalAttribute) {
        return getName().compareToIgnoreCase(internalAttribute.getName());
    }
}
