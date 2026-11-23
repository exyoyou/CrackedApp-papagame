package retrofit2.adapter.rxjava2;

import javax.annotation.Nullable;
import retrofit2.Response;

/* JADX INFO: loaded from: classes10.dex */
public final class d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Response<T> f96832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Throwable f96833b;

    private d(@Nullable Response<T> response, @Nullable Throwable th) {
        this.f96832a = response;
        this.f96833b = th;
    }

    public static <T> d<T> b(Throwable th) {
        if (th != null) {
            return new d<>(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> d<T> e(Response<T> response) {
        if (response != null) {
            return new d<>(response, null);
        }
        throw new NullPointerException("response == null");
    }

    @Nullable
    public Throwable a() {
        return this.f96833b;
    }

    public boolean c() {
        return this.f96833b != null;
    }

    @Nullable
    public Response<T> d() {
        return this.f96832a;
    }
}
