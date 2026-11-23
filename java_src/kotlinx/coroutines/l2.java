package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class l2 extends a2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Continuation<Unit> f93590f;

    /* JADX WARN: Multi-variable type inference failed */
    public l2(@NotNull Continuation<? super Unit> continuation) {
        this.f93590f = continuation;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        Continuation<Unit> continuation = this.f93590f;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
    }
}
