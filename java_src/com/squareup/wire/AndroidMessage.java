package com.squareup.wire;

import android.os.Parcel;
import android.os.Parcelable;
import com.sdk.base.module.manager.SDKManager;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import java.lang.reflect.Array;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 \u0013*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0005:\u0002\u0014\u0015B\u001f\b\u0004\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\bH\u0016¨\u0006\u0016"}, d2 = {"Lcom/squareup/wire/AndroidMessage;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", SDKManager.ALGO_B_AES_SHA256_RSA, "Landroid/os/Parcelable;", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "describeContents", "Lcom/squareup/wire/ProtoAdapter;", "adapter", "Lokio/ByteString;", "unknownFields", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V", "Companion", "a", com.kuaishou.weapon.p0.t.f74887l, "wire-runtime"}, k = 1, mv = {1, 9, 0})
public abstract class AndroidMessage<M extends Message<M, B>, B extends Message.a<M, B>> extends Message<M, B> implements Parcelable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.squareup.wire.AndroidMessage$a, reason: from kotlin metadata */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final <E> Parcelable.Creator<E> a(@NotNull ProtoAdapter<E> adapter) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            return new b(adapter);
        }

        private Companion() {
        }
    }

    private static final class b<M> implements Parcelable.Creator<M> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        private final ProtoAdapter<M> f82262a;

        public b(@NotNull ProtoAdapter<M> adapter) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.f82262a = adapter;
        }

        @Override // android.os.Parcelable.Creator
        public M createFromParcel(@NotNull Parcel input) {
            Intrinsics.checkNotNullParameter(input, "input");
            ProtoAdapter<M> protoAdapter = this.f82262a;
            byte[] bArrCreateByteArray = input.createByteArray();
            Intrinsics.checkNotNullExpressionValue(bArrCreateByteArray, "createByteArray(...)");
            return protoAdapter.g(bArrCreateByteArray);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        public M[] newArray(int i10) {
            KClass<?> type = this.f82262a.getType();
            Object objNewInstance = Array.newInstance((Class<?>) (type != null ? JvmClassMappingKt.getJavaObjectType(type) : null), i10);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Array<M of com.squareup.wire.AndroidMessage.ProtoAdapterCreator>");
            return (M[]) ((Object[]) objNewInstance);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected AndroidMessage(@NotNull ProtoAdapter<M> adapter, @NotNull ByteString unknownFields) {
        super(adapter, unknownFields);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
    }

    @JvmStatic
    @NotNull
    public static final <E> Parcelable.Creator<E> newCreator(@NotNull ProtoAdapter<E> protoAdapter) {
        return INSTANCE.a(protoAdapter);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeByteArray(encode());
    }
}
