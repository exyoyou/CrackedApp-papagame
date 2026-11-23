package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {163}, m = "lastOrNull", n = {"result"}, s = {"L$0"})
final class FlowKt__ReduceKt$lastOrNull$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    /* synthetic */ Object f93081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f93082d;

    FlowKt__ReduceKt$lastOrNull$1(Continuation<? super FlowKt__ReduceKt$lastOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f93081c = obj;
        this.f93082d |= Integer.MIN_VALUE;
        return g.T0(null, this);
    }
}
