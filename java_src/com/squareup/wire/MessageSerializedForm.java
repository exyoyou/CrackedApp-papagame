package com.squareup.wire;

import com.sdk.base.module.manager.SDKManager;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u0010*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00020\u0005:\u0001\u0011B\u001d\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/squareup/wire/MessageSerializedForm;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", SDKManager.ALGO_B_AES_SHA256_RSA, "Ljava/io/Serializable;", "", "readResolve", "", "bytes", "[B", "Ljava/lang/Class;", "messageClass", "Ljava/lang/Class;", "<init>", "([BLjava/lang/Class;)V", "Companion", "a", "wire-runtime"}, k = 1, mv = {1, 9, 0})
public final class MessageSerializedForm<M extends Message<M, B>, B extends Message.a<M, B>> implements Serializable {
    private static final long serialVersionUID = 0;

    @NotNull
    private final byte[] bytes;

    @NotNull
    private final Class<M> messageClass;

    public MessageSerializedForm(@NotNull byte[] bytes, @NotNull Class<M> messageClass) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Intrinsics.checkNotNullParameter(messageClass, "messageClass");
        this.bytes = bytes;
        this.messageClass = messageClass;
    }

    @NotNull
    public final Object readResolve() throws ObjectStreamException {
        try {
            return ProtoAdapter.f82266i.b(this.messageClass).g(this.bytes);
        } catch (IOException e10) {
            throw new StreamCorruptedException(e10.getMessage());
        }
    }
}
