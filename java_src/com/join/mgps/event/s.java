package com.join.mgps.event;

import com.wufan.user.service.protobuf.MessageProto;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final MessageProto.Response f68215a;

    public s(@NotNull MessageProto.Response data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.f68215a = data;
    }

    public static /* synthetic */ s c(s sVar, MessageProto.Response response, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            response = sVar.f68215a;
        }
        return sVar.b(response);
    }

    @NotNull
    public final MessageProto.Response a() {
        return this.f68215a;
    }

    @NotNull
    public final s b(@NotNull MessageProto.Response data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new s(data);
    }

    @NotNull
    public final MessageProto.Response d() {
        return this.f68215a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && Intrinsics.areEqual(this.f68215a, ((s) obj).f68215a);
    }

    public int hashCode() {
        return this.f68215a.hashCode();
    }

    @NotNull
    public String toString() {
        return "EMessageEvent(data=" + this.f68215a + ')';
    }
}
