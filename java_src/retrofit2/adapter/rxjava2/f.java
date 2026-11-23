package retrofit2.adapter.rxjava2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.plugins.RxJavaPlugins;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.CallAdapter;

/* JADX INFO: loaded from: classes10.dex */
final class f<R> implements CallAdapter<R, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f96836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Scheduler f96837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f96838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f96839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f96840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f96841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f96842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f96843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f96844i;

    f(Type type, @Nullable Scheduler scheduler, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f96836a = type;
        this.f96837b = scheduler;
        this.f96838c = z10;
        this.f96839d = z11;
        this.f96840e = z12;
        this.f96841f = z13;
        this.f96842g = z14;
        this.f96843h = z15;
        this.f96844i = z16;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x003b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0040  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x004d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0052  */
    @Override // retrofit2.CallAdapter
    public Object adapt(Call<R> call) {
        Observable aVar;
        Scheduler scheduler;
        Observable bVar = this.f96838c ? new b(call) : new c(call);
        if (!this.f96839d) {
            if (this.f96840e) {
                aVar = new a(bVar);
            }
            scheduler = this.f96837b;
            if (scheduler != null) {
                bVar = bVar.subscribeOn(scheduler);
            }
            if (this.f96841f) {
                return bVar.toFlowable(BackpressureStrategy.LATEST);
            }
            if (this.f96842g) {
                return bVar.singleOrError();
            }
            if (this.f96843h) {
                return bVar.singleElement();
            }
            return this.f96844i ? bVar.ignoreElements() : RxJavaPlugins.onAssembly(bVar);
        }
        aVar = new e(bVar);
        bVar = aVar;
        scheduler = this.f96837b;
        if (scheduler != null) {
            bVar = bVar.subscribeOn(scheduler);
        }
        if (this.f96841f) {
            return bVar.toFlowable(BackpressureStrategy.LATEST);
        }
        if (this.f96842g) {
            return bVar.singleOrError();
        }
        if (this.f96843h) {
            return bVar.singleElement();
        }
        if (this.f96844i) {
        }
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.f96836a;
    }
}
