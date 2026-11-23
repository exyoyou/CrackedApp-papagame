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
public final class UnbiasedSelectBuilderImpl<R> extends n<R> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private final o<R> f93756i;

    public UnbiasedSelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        super(continuation.get$context());
        this.f93756i = new o<>(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
    }

    @PublishedApi
    public final void S(@NotNull Throwable th) {
        o<R> oVar = this.f93756i;
        Result.Companion companion = Result.INSTANCE;
        oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
    }

    @PublishedApi
    @Nullable
    public final Object T() {
        if (this.f93756i.isCompleted()) {
            return this.f93756i.z();
        }
        kotlinx.coroutines.j.f(m0.a(getContext()), null, CoroutineStart.UNDISPATCHED, new UnbiasedSelectBuilderImpl$initSelectResult$1(this, null), 1, null);
        return this.f93756i.z();
    }
}
