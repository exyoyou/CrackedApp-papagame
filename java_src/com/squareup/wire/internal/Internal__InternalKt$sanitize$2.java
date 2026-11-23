package com.squareup.wire.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class Internal__InternalKt$sanitize$2 extends FunctionReference implements Function1<String, String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Internal__InternalKt$sanitize$2 f82363b = new Internal__InternalKt$sanitize$2();

    Internal__InternalKt$sanitize$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke(@NotNull String p10) {
        Intrinsics.checkNotNullParameter(p10, "p0");
        return n.b0(p10);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @NotNull
    public final String getName() {
        return "sanitize";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @NotNull
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(Internal__InternalKt.class, "wire-runtime");
    }

    @Override // kotlin.jvm.internal.CallableReference
    @NotNull
    public final String getSignature() {
        return "sanitize(Ljava/lang/String;)Ljava/lang/String;";
    }
}
