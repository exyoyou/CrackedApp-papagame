package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes9.dex */
final class MessageSerializedForm<M extends Message<M, B>, B extends Message.Builder<M, B>> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f25865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<M> f25866b;

    MessageSerializedForm(byte[] bArr, Class<M> cls) {
        this.f25865a = bArr;
        this.f25866b = cls;
    }

    Object readResolve() throws ObjectStreamException {
        try {
            return ProtoAdapter.get(this.f25866b).decode(this.f25865a);
        } catch (IOException e10) {
            throw new StreamCorruptedException(e10.getMessage());
        }
    }
}
