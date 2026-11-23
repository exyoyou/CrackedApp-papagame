package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.sync.SemaphoreKt;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ChannelFlowMerge<T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final kotlinx.coroutines.flow.e<kotlinx.coroutines.flow.e<T>> f93266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f93267f;

    public /* synthetic */ ChannelFlowMerge(kotlinx.coroutines.flow.e eVar, int i10, CoroutineContext coroutineContext, int i11, BufferOverflow bufferOverflow, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, i10, (i12 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i12 & 8) != 0 ? -2 : i11, (i12 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String g() {
        return "concurrency=" + this.f93267f;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    protected Object i(@NotNull q<? super T> qVar, @NotNull Continuation<? super Unit> continuation) {
        Object objA = this.f93266e.a(new ChannelFlowMerge$collectTo$2((v1) continuation.get$context().get(v1.F1), SemaphoreKt.b(this.f93267f, 0, 2, null), qVar, new m(qVar)), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelFlowMerge(this.f93266e, this.f93267f, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> n(@NotNull l0 l0Var) {
        return ProduceKt.c(l0Var, this.f93256b, this.f93257c, l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge(@NotNull kotlinx.coroutines.flow.e<? extends kotlinx.coroutines.flow.e<? extends T>> eVar, int i10, @NotNull CoroutineContext coroutineContext, int i11, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i11, bufferOverflow);
        this.f93266e = eVar;
        this.f93267f = i10;
    }
}
