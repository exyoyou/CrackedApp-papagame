package com.squareup.wire;

import com.sdk.base.module.manager.SDKManager;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\r\b&\u0018\u0000 '*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u00020\u0004:\u0002()B\u001f\b\u0004\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0012¢\u0006\u0004\b%\u0010&J\u000f\u0010\u0005\u001a\u00028\u0001H&¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0004J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0007¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019R\u0017\u0010\u001a\u001a\u00020\u00128G¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u001d8\u0004@\u0004X\u0085\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001f¨\u0006*"}, d2 = {"Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", SDKManager.ALGO_B_AES_SHA256_RSA, "Ljava/io/Serializable;", "newBuilder", "()Lcom/squareup/wire/Message$a;", "withoutUnknownFields", "()Lcom/squareup/wire/Message;", "", "toString", "", "writeReplace", "Lokio/BufferedSink;", "sink", "", "encode", "", "Lokio/ByteString;", "encodeByteString", "Ljava/io/OutputStream;", "stream", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "Lcom/squareup/wire/ProtoAdapter;", "()Lcom/squareup/wire/ProtoAdapter;", "unknownFields", "Lokio/ByteString;", "()Lokio/ByteString;", "", "cachedSerializedSize", "I", "getCachedSerializedSize$wire_runtime", "()I", "setCachedSerializedSize$wire_runtime", "(I)V", "hashCode", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V", "Companion", "a", com.kuaishou.weapon.p0.t.f74887l, "wire-runtime"}, k = 1, mv = {1, 9, 0})
public abstract class Message<M extends Message<M, B>, B extends a<M, B>> implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @NotNull
    private final transient ProtoAdapter<M> adapter;
    private transient int cachedSerializedSize;

    @JvmField
    protected transient int hashCode;

    @NotNull
    private final transient ByteString unknownFields;

    public static abstract class a<M extends Message<M, B>, B extends a<M, B>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        private transient ByteString f82263a = ByteString.EMPTY;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private transient Buffer f82264b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private transient c0 f82265c;

        protected a() {
        }

        private final void i() throws IOException {
            if (this.f82264b == null) {
                this.f82264b = new Buffer();
                Buffer buffer = this.f82264b;
                Intrinsics.checkNotNull(buffer);
                c0 c0Var = new c0(buffer);
                this.f82265c = c0Var;
                Intrinsics.checkNotNull(c0Var);
                c0Var.a(this.f82263a);
                this.f82263a = ByteString.EMPTY;
            }
        }

        @NotNull
        public final a<M, B> a(int i10, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj) throws IOException {
            Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
            i();
            ProtoAdapter<?> protoAdapterRawProtoAdapter = fieldEncoding.rawProtoAdapter();
            Intrinsics.checkNotNull(protoAdapterRawProtoAdapter, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            c0 c0Var = this.f82265c;
            Intrinsics.checkNotNull(c0Var);
            protoAdapterRawProtoAdapter.n(c0Var, i10, obj);
            return this;
        }

        @NotNull
        public final a<M, B> b(@NotNull ByteString unknownFields) throws IOException {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            if (unknownFields.size() > 0) {
                i();
                c0 c0Var = this.f82265c;
                Intrinsics.checkNotNull(c0Var);
                c0Var.a(unknownFields);
            }
            return this;
        }

        @NotNull
        public abstract M c();

        @NotNull
        public final ByteString d() {
            Buffer buffer = this.f82264b;
            if (buffer != null) {
                Intrinsics.checkNotNull(buffer);
                this.f82263a = buffer.readByteString();
                this.f82264b = null;
                this.f82265c = null;
            }
            return this.f82263a;
        }

        @NotNull
        public final a<M, B> e() throws EOFException {
            this.f82263a = ByteString.EMPTY;
            Buffer buffer = this.f82264b;
            if (buffer != null) {
                Intrinsics.checkNotNull(buffer);
                buffer.clear();
                this.f82264b = null;
            }
            this.f82265c = null;
            return this;
        }

        @Nullable
        public final Buffer f() {
            return this.f82264b;
        }

        @NotNull
        public final ByteString g() {
            return this.f82263a;
        }

        @Nullable
        public final c0 h() {
            return this.f82265c;
        }

        public final void j(@Nullable Buffer buffer) {
            this.f82264b = buffer;
        }

        public final void k(@NotNull ByteString byteString) {
            Intrinsics.checkNotNullParameter(byteString, "<set-?>");
            this.f82263a = byteString;
        }

        public final void l(@Nullable c0 c0Var) {
            this.f82265c = c0Var;
        }
    }

    /* JADX INFO: renamed from: com.squareup.wire.Message$b, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static /* synthetic */ void a() {
        }

        private Companion() {
        }
    }

    protected Message(@NotNull ProtoAdapter<M> adapter, @NotNull ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.adapter = adapter;
        this.unknownFields = unknownFields;
    }

    @JvmName(name = "adapter")
    @NotNull
    public final ProtoAdapter<M> adapter() {
        return this.adapter;
    }

    public final void encode(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        ProtoAdapter<M> protoAdapter = this.adapter;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type M of com.squareup.wire.Message");
        protoAdapter.k(sink, this);
    }

    @NotNull
    public final ByteString encodeByteString() {
        ProtoAdapter<M> protoAdapter = this.adapter;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type M of com.squareup.wire.Message");
        return protoAdapter.m(this);
    }

    /* JADX INFO: renamed from: getCachedSerializedSize$wire_runtime, reason: from getter */
    public final int getCachedSerializedSize() {
        return this.cachedSerializedSize;
    }

    @NotNull
    public abstract B newBuilder();

    public final void setCachedSerializedSize$wire_runtime(int i10) {
        this.cachedSerializedSize = i10;
    }

    @NotNull
    public String toString() {
        ProtoAdapter<M> protoAdapter = this.adapter;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type M of com.squareup.wire.Message");
        return protoAdapter.K(this);
    }

    @JvmName(name = "unknownFields")
    @NotNull
    public final ByteString unknownFields() {
        ByteString byteString = this.unknownFields;
        return byteString == null ? ByteString.EMPTY : byteString;
    }

    @NotNull
    public final M withoutUnknownFields() {
        return (M) newBuilder().e().c();
    }

    @NotNull
    protected final Object writeReplace() throws ObjectStreamException {
        byte[] bArrEncode = encode();
        Class<?> cls = getClass();
        Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<M of com.squareup.wire.Message>");
        return new MessageSerializedForm(bArrEncode, cls);
    }

    @NotNull
    public final byte[] encode() {
        ProtoAdapter<M> protoAdapter = this.adapter;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type M of com.squareup.wire.Message");
        return protoAdapter.l(this);
    }

    public final void encode(@NotNull OutputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        ProtoAdapter<M> protoAdapter = this.adapter;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type M of com.squareup.wire.Message");
        protoAdapter.j(stream, this);
    }
}
