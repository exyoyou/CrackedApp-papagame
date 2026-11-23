package com.join.kotlin.http;

import com.join.kotlin.http.RpcKotlinServiceFactory;
import com.join.kotlin.http.api.RpcJavaApiForKotlin;
import com.join.mgps.rpc.h;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m7.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "", "<init>", "()V", "javaApi", "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "getJavaApi", "()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "setJavaApi", "(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V", "javaAccountApi", "getJavaAccountApi", "setJavaAccountApi", "getJavaRootAPI", "getJavaAccountAPI", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RpcKotlinServiceFactory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Lazy<RpcKotlinServiceFactory> instances$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: z5.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RpcKotlinServiceFactory.instances_delegate$lambda$0();
        }
    });

    @Nullable
    private RpcJavaApiForKotlin javaAccountApi;

    @Nullable
    private RpcJavaApiForKotlin javaApi;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;", "", "<init>", "()V", "instances", "Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "getInstances", "()Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "instances$delegate", "Lkotlin/Lazy;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RpcKotlinServiceFactory getInstances() {
            return (RpcKotlinServiceFactory) RpcKotlinServiceFactory.instances$delegate.getValue();
        }

        private Companion() {
        }
    }

    private RpcKotlinServiceFactory() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RpcKotlinServiceFactory instances_delegate$lambda$0() {
        return new RpcKotlinServiceFactory();
    }

    @NotNull
    public final RpcJavaApiForKotlin getJavaAccountAPI() {
        if (this.javaAccountApi == null) {
            c cVarA = c.f94172c.a();
            String accountV2 = h.F;
            Intrinsics.checkNotNullExpressionValue(accountV2, "accountV2");
            this.javaAccountApi = (RpcJavaApiForKotlin) cVarA.f(accountV2).create(RpcJavaApiForKotlin.class);
        }
        RpcJavaApiForKotlin rpcJavaApiForKotlin = this.javaAccountApi;
        Intrinsics.checkNotNull(rpcJavaApiForKotlin);
        return rpcJavaApiForKotlin;
    }

    @Nullable
    public final RpcJavaApiForKotlin getJavaAccountApi() {
        return this.javaAccountApi;
    }

    @Nullable
    public final RpcJavaApiForKotlin getJavaApi() {
        return this.javaApi;
    }

    @NotNull
    public final RpcJavaApiForKotlin getJavaRootAPI() {
        if (this.javaApi == null) {
            c cVarA = c.f94172c.a();
            String gameUrl = h.B;
            Intrinsics.checkNotNullExpressionValue(gameUrl, "gameUrl");
            this.javaApi = (RpcJavaApiForKotlin) cVarA.f(gameUrl).create(RpcJavaApiForKotlin.class);
        }
        RpcJavaApiForKotlin rpcJavaApiForKotlin = this.javaApi;
        Intrinsics.checkNotNull(rpcJavaApiForKotlin);
        return rpcJavaApiForKotlin;
    }

    public final void setJavaAccountApi(@Nullable RpcJavaApiForKotlin rpcJavaApiForKotlin) {
        this.javaAccountApi = rpcJavaApiForKotlin;
    }

    public final void setJavaApi(@Nullable RpcJavaApiForKotlin rpcJavaApiForKotlin) {
        this.javaApi = rpcJavaApiForKotlin;
    }
}
