package com.join.kotlin.network;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.google.gson.GsonBuilder;
import com.google.protobuf.ExtensionRegistryLite;
import com.join.kotlin.base.net.BaseNetworkApi;
import com.join.kotlin.network.NetworkApi;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;
import retrofit2.converter.protobuf.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/join/kotlin/network/NetworkApi;", "Lcom/join/kotlin/base/net/BaseNetworkApi;", "<init>", "()V", "onSetHttpClientBuilder", "Lokhttp3/OkHttpClient$Builder;", "builder", "onSetRetrofitBuilder", "Lretrofit2/Retrofit$Builder;", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NetworkApi extends BaseNetworkApi {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Lazy<NetworkApi> INSTANCE$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: a6.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return NetworkApi.INSTANCE_delegate$lambda$1();
        }
    });

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/join/kotlin/network/NetworkApi$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/join/kotlin/network/NetworkApi;", "getINSTANCE", "()Lcom/join/kotlin/network/NetworkApi;", "INSTANCE$delegate", "Lkotlin/Lazy;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NetworkApi getINSTANCE() {
            return (NetworkApi) NetworkApi.INSTANCE$delegate.getValue();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkApi INSTANCE_delegate$lambda$1() {
        return new NetworkApi();
    }

    @Override // com.join.kotlin.base.net.BaseNetworkApi
    @NotNull
    public OkHttpClient.Builder onSetHttpClientBuilder(@NotNull OkHttpClient.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return builder;
    }

    @Override // com.join.kotlin.base.net.BaseNetworkApi
    @NotNull
    public Retrofit.Builder onSetRetrofitBuilder(@NotNull Retrofit.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.addConverterFactory(a.b(ExtensionRegistryLite.newInstance()));
        builder.addConverterFactory(retrofit2.converter.gson.a.b(new GsonBuilder().create()));
        builder.addConverterFactory(retrofit2.converter.jackson.a.b(new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false).configure(SerializationFeature.WRITE_NULL_MAP_VALUES, false).setSerializationInclusion(JsonInclude.Include.NON_NULL)));
        return builder;
    }
}
