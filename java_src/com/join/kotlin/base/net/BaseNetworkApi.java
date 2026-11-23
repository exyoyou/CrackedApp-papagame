package com.join.kotlin.base.net;

import c7.a;
import com.join.mgps.Util.q2;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u0004\u001a\u0002H\u0005\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000fH&J\b\u0010\u0014\u001a\u00020\fH\u0002R\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/base/net/BaseNetworkApi;", "", "<init>", "()V", "getApi", "T", "serviceClass", "Ljava/lang/Class;", "baseUrl", "", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "onSetHttpClientBuilder", "Lokhttp3/OkHttpClient$Builder;", "builder", "onSetRetrofitBuilder", "Lretrofit2/Retrofit$Builder;", "okHttpClient", "Lokhttp3/OkHttpClient;", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "createOkHttpBuilder", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseNetworkApi {
    private final OkHttpClient.Builder createOkHttpBuilder() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new a());
        OkHttpClient.Builder builderA = q2.a(builder);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builderA.connectTimeout(2L, timeUnit);
        builderA.connectTimeout(10L, timeUnit).readTimeout(10L, timeUnit).writeTimeout(10L, timeUnit);
        return builderA;
    }

    private final OkHttpClient getOkHttpClient() {
        return onSetHttpClientBuilder(createOkHttpBuilder()).build();
    }

    public final <T> T getApi(@NotNull Class<T> serviceClass, @NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Retrofit.Builder builderClient = new Retrofit.Builder().baseUrl(baseUrl).client(getOkHttpClient());
        Intrinsics.checkNotNull(builderClient);
        return (T) onSetRetrofitBuilder(builderClient).build().create(serviceClass);
    }

    @NotNull
    public abstract OkHttpClient.Builder onSetHttpClientBuilder(@NotNull OkHttpClient.Builder builder);

    @NotNull
    public abstract Retrofit.Builder onSetRetrofitBuilder(@NotNull Retrofit.Builder builder);
}
