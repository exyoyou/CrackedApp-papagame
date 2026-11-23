package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    @NotNull
    protected final kotlinx.coroutines.flow.e<S> f93281e;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(@NotNull kotlinx.coroutines.flow.e<? extends S> eVar, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f93281e = eVar;
    }

    static /* synthetic */ <S, T> Object p(ChannelFlowOperator<S, T> channelFlowOperator, kotlinx.coroutines.flow.f<? super T> fVar, Continuation<? super Unit> continuation) {
        if (channelFlowOperator.f93257c == -3) {
            CoroutineContext context = continuation.get$context();
            CoroutineContext coroutineContextD = CoroutineContextKt.d(context, channelFlowOperator.f93256b);
            if (Intrinsics.areEqual(coroutineContextD, context)) {
                Object objS = channelFlowOperator.s(fVar, continuation);
                return objS == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : Unit.INSTANCE;
            }
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(coroutineContextD.get(companion), context.get(companion))) {
                Object objR = channelFlowOperator.r(fVar, coroutineContextD, continuation);
                return objR == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : Unit.INSTANCE;
            }
        }
        Object objA = super.a(fVar, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    static /* synthetic */ <S, T> Object q(ChannelFlowOperator<S, T> channelFlowOperator, q<? super T> qVar, Continuation<? super Unit> continuation) {
        Object objS = channelFlowOperator.s(new m(qVar), continuation);
        return objS == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object r(kotlinx.coroutines.flow.f<? super T> fVar, CoroutineContext coroutineContext, Continuation<? super Unit> continuation) {
        return d.d(coroutineContext, d.e(fVar, continuation.get$context()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation, 4, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        return p(this, fVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    protected Object i(@NotNull q<? super T> qVar, @NotNull Continuation<? super Unit> continuation) {
        return q(this, qVar, continuation);
    }

    @Nullable
    protected abstract Object s(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull Continuation<? super Unit> continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return this.f93281e + " -> " + super.toString();
    }
}
