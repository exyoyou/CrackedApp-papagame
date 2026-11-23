package m7;

import com.join.mgps.rpc.h;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.g;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final a f94172c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final Lazy<c> f94173d = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: m7.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.i();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Interceptor f94174a = new Interceptor() { // from class: m7.b
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            return c.c(chain);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Retrofit f94175b = new Retrofit.Builder().baseUrl(h.f72345i).addConverterFactory(retrofit2.converter.gson.a.a()).addCallAdapterFactory(g.a()).client(g()).build();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final c a() {
            return (c) c.f94173d.getValue();
        }

        private a() {
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Response c(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        return chain.proceed(chain.request().newBuilder().addHeader("Content_Type", "application/json").addHeader("charset", "UTF-8").build());
    }

    private final OkHttpClient g() {
        OkHttpClient.Builder builderAddInterceptor = new OkHttpClient.Builder().addInterceptor(new c7.a());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builderAddInterceptor.connectTimeout(10L, timeUnit).connectTimeout(10L, timeUnit).readTimeout(10L, timeUnit).writeTimeout(10L, timeUnit).build();
    }

    private final Interceptor h() {
        return new c7.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c i() {
        return new c();
    }

    public final <T> T e(@NotNull Class<T> service) {
        Intrinsics.checkNotNullParameter(service, "service");
        return (T) this.f94175b.create(service);
    }

    @NotNull
    public final Retrofit f(@NotNull String basUrl) {
        Intrinsics.checkNotNullParameter(basUrl, "basUrl");
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(basUrl).addConverterFactory(retrofit2.converter.gson.a.a()).addCallAdapterFactory(g.a()).client(g()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "build(...)");
        return retrofitBuild;
    }
}
