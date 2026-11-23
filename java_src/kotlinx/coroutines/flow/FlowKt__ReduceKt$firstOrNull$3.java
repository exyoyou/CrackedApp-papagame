package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
final class FlowKt__ReduceKt$firstOrNull$3<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f93069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ Object f93070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f93071e;

    FlowKt__ReduceKt$firstOrNull$3(Continuation<? super FlowKt__ReduceKt$firstOrNull$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f93070d = obj;
        this.f93071e |= Integer.MIN_VALUE;
        return g.x0(null, null, this);
    }
}
