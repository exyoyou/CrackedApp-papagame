package com.squareup.wire;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.kwad.sdk.api.model.AdnName;
import java.io.IOException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0019\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\b\u0010\u0007J\b\u0010\t\u001a\u00020\u0002H\u0017J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u0013R\u0017\u0010\u0012\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0014\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Lcom/squareup/wire/AnyMessage;", "Lcom/squareup/wire/Message;", "", "T", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "unpack", "(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;", "unpackOrNull", "newBuilder", "", AdnName.OTHER, "", "equals", "", "hashCode", "", "toString", "typeUrl", "Lokio/ByteString;", HmInputMappingContent.FIELD_VALUE, "copy", "Ljava/lang/String;", "getTypeUrl", "()Ljava/lang/String;", "Lokio/ByteString;", "getValue", "()Lokio/ByteString;", "<init>", "(Ljava/lang/String;Lokio/ByteString;)V", "Companion", com.kuaishou.weapon.p0.t.f74887l, "wire-runtime"}, k = 1, mv = {1, 9, 0})
public final class AnyMessage extends Message {

    @NotNull
    private final String typeUrl;

    @NotNull
    private final ByteString value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    @NotNull
    public static final ProtoAdapter<AnyMessage> ADAPTER = new a(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(AnyMessage.class), Syntax.PROTO_3);

    @SourceDebugExtension({"SMAP\nAnyMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,127:1\n463#2,7:128\n*S KotlinDebug\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n*L\n111#1:128,7\n*E\n"})
    public static final class a extends ProtoAdapter<AnyMessage> {
        a(FieldEncoding fieldEncoding, KClass<AnyMessage> kClass, Syntax syntax) {
            super(fieldEncoding, kClass, "type.googleapis.com/google.protobuf.Any", syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public AnyMessage c(@NotNull b0 reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            ByteString byteStringC = ByteString.EMPTY;
            long jF = reader.f();
            String strC = "";
            while (true) {
                int iM = reader.m();
                if (iM == -1) {
                    reader.h(jF);
                    return new AnyMessage(strC, byteStringC);
                }
                if (iM == 1) {
                    strC = ProtoAdapter.J.c(reader);
                } else if (iM != 2) {
                    reader.s(iM);
                } else {
                    byteStringC = ProtoAdapter.I.c(reader);
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
        public void h(@NotNull c0 writer, @NotNull AnyMessage value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            ProtoAdapter.J.n(writer, 1, value.getTypeUrl());
            ProtoAdapter.I.n(writer, 2, value.getValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
        public void i(@NotNull ReverseProtoWriter writer, @NotNull AnyMessage value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            ProtoAdapter.I.o(writer, 2, value.getValue());
            ProtoAdapter.J.o(writer, 1, value.getTypeUrl());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public int p(@NotNull AnyMessage value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return ProtoAdapter.J.q(1, value.getTypeUrl()) + ProtoAdapter.I.q(2, value.getValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public AnyMessage J(@NotNull AnyMessage value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return new AnyMessage("square.github.io/wire/redacted", ByteString.EMPTY);
        }
    }

    /* JADX INFO: renamed from: com.squareup.wire.AnyMessage$b, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AnyMessage a(@NotNull Message<?, ?> message) {
            Intrinsics.checkNotNullParameter(message, "message");
            String strB = message.adapter().B();
            if (strB != null) {
                return new AnyMessage(strB, message.encodeByteString());
            }
            throw new IllegalStateException(("recompile " + Reflection.getOrCreateKotlinClass(message.getClass()) + " to use it with AnyMessage").toString());
        }

        private Companion() {
        }
    }

    public /* synthetic */ AnyMessage(String str, ByteString byteString, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    public static /* synthetic */ AnyMessage copy$default(AnyMessage anyMessage, String str, ByteString byteString, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = anyMessage.typeUrl;
        }
        if ((i10 & 2) != 0) {
            byteString = anyMessage.value;
        }
        return anyMessage.copy(str, byteString);
    }

    @NotNull
    public final AnyMessage copy(@NotNull String typeUrl, @NotNull ByteString value) {
        Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
        Intrinsics.checkNotNullParameter(value, "value");
        return new AnyMessage(typeUrl, value);
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AnyMessage)) {
            return false;
        }
        AnyMessage anyMessage = (AnyMessage) other;
        return Intrinsics.areEqual(this.typeUrl, anyMessage.typeUrl) && Intrinsics.areEqual(this.value, anyMessage.value);
    }

    @NotNull
    public final String getTypeUrl() {
        return this.typeUrl;
    }

    @NotNull
    public final ByteString getValue() {
        return this.value;
    }

    public int hashCode() {
        int i10 = this.hashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = (((i10 * 37) + this.typeUrl.hashCode()) * 37) + this.value.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public /* bridge */ /* synthetic */ Message.a newBuilder() {
        return (Message.a) m41newBuilder();
    }

    @Override // com.squareup.wire.Message
    @NotNull
    public String toString() {
        return "Any{type_url=" + this.typeUrl + ", value=" + this.value + '}';
    }

    public final <T> T unpack(@NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (Intrinsics.areEqual(this.typeUrl, adapter.B())) {
            return adapter.f(this.value);
        }
        throw new IllegalStateException(("type mismatch: " + this.typeUrl + " != " + adapter.B()).toString());
    }

    @Nullable
    public final <T> T unpackOrNull(@NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (Intrinsics.areEqual(this.typeUrl, adapter.B())) {
            return adapter.f(this.value);
        }
        return null;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Shouldn't be used in Kotlin")
    /* JADX INFO: renamed from: newBuilder, reason: collision with other method in class */
    public /* synthetic */ Void m41newBuilder() {
        throw new AssertionError();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnyMessage(@NotNull String typeUrl, @NotNull ByteString value) {
        super(ADAPTER, ByteString.EMPTY);
        Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
        Intrinsics.checkNotNullParameter(value, "value");
        this.typeUrl = typeUrl;
        this.value = value;
    }
}
