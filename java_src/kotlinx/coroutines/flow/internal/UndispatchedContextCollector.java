package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class UndispatchedContextCollector<T> implements kotlinx.coroutines.flow.f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f93380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Object f93381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final Function2<T, Continuation<? super Unit>, Object> f93382d;

    public UndispatchedContextCollector(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull CoroutineContext coroutineContext) {
        this.f93380b = coroutineContext;
        this.f93381c = ThreadContextKt.b(coroutineContext);
        this.f93382d = new UndispatchedContextCollector$emitRef$1(fVar, null);
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        Object objC = d.c(this.f93380b, t10, this.f93381c, this.f93382d, continuation);
        return objC == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : Unit.INSTANCE;
    }
}
