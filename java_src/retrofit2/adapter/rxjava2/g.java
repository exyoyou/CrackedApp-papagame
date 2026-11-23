package retrofit2.adapter.rxjava2;

import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes10.dex */
public final class g extends CallAdapter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Scheduler f96845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f96846b;

    private g(@Nullable Scheduler scheduler, boolean z10) {
        this.f96845a = scheduler;
        this.f96846b = z10;
    }

    public static g a() {
        return new g(null, false);
    }

    public static g b() {
        return new g(null, true);
    }

    public static g c(Scheduler scheduler) {
        if (scheduler != null) {
            return new g(scheduler, false);
        }
        throw new NullPointerException("scheduler == null");
    }

    @Override // retrofit2.CallAdapter.Factory
    @Nullable
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Type parameterUpperBound;
        boolean z10;
        boolean z11;
        String str;
        Class<?> rawType = CallAdapter.Factory.getRawType(type);
        if (rawType == Completable.class) {
            return new f(Void.class, this.f96845a, this.f96846b, false, true, false, false, false, true);
        }
        boolean z12 = rawType == Flowable.class;
        boolean z13 = rawType == Single.class;
        boolean z14 = rawType == Maybe.class;
        if (rawType != Observable.class && !z12 && !z13 && !z14) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (z12) {
                str = "Flowable";
            } else if (z13) {
                str = "Single";
            } else {
                str = z14 ? "Maybe" : "Observable";
            }
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type parameterUpperBound2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) type);
        Class<?> rawType2 = CallAdapter.Factory.getRawType(parameterUpperBound2);
        if (rawType2 != Response.class) {
            if (rawType2 != d.class) {
                parameterUpperBound = parameterUpperBound2;
                z10 = false;
                z11 = true;
            } else {
                if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                    throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                }
                parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
                z10 = true;
            }
            return new f(parameterUpperBound, this.f96845a, this.f96846b, z10, z11, z12, z13, z14, false);
        }
        if (!(parameterUpperBound2 instanceof ParameterizedType)) {
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
        z10 = false;
        z11 = false;
        return new f(parameterUpperBound, this.f96845a, this.f96846b, z10, z11, z12, z13, z14, false);
    }
}
