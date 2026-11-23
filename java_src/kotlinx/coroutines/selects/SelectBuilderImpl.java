package kotlinx.coroutines.selects;

import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class SelectBuilderImpl<R> extends SelectImplementation<R> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final o<R> f93720h;

    public SelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        super(continuation.get$context());
        this.f93720h = new o<>(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
    }

    @PublishedApi
    @Nullable
    public final Object Q() {
        if (this.f93720h.isCompleted()) {
            return this.f93720h.z();
        }
        kotlinx.coroutines.j.f(m0.a(getContext()), null, CoroutineStart.UNDISPATCHED, new SelectBuilderImpl$getResult$1(this, null), 1, null);
        return this.f93720h.z();
    }

    @PublishedApi
    public final void R(@NotNull Throwable th) {
        o<R> oVar = this.f93720h;
        Result.Companion companion = Result.INSTANCE;
        oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
    }
}
