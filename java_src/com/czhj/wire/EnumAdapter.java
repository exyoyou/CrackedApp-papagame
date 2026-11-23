package com.czhj.wire;

import com.czhj.wire.WireEnum;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class EnumAdapter<E extends WireEnum> extends ProtoAdapter<E> {
    protected EnumAdapter(Class<E> cls) {
        super(FieldEncoding.VARINT, cls);
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final E decode(ProtoReader protoReader) throws IOException {
        int varint32 = protoReader.readVarint32();
        E e10 = (E) fromValue(varint32);
        if (e10 != null) {
            return e10;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(varint32, this.javaType);
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final void encode(ProtoWriter protoWriter, E e10) throws IOException {
        protoWriter.writeVarint32(e10.getValue());
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final int encodedSize(E e10) {
        return ProtoWriter.c(e10.getValue());
    }

    protected abstract E fromValue(int i10);
}
