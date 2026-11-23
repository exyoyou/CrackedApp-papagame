package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/ChannelAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1#2:173\n*E\n"})
final class b<T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93250g = AtomicIntegerFieldUpdater.newUpdater(b.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final ReceiveChannel<T> f93251e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f93252f;

    public /* synthetic */ b(ReceiveChannel receiveChannel, boolean z10, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(receiveChannel, z10, (i11 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i11 & 8) != 0 ? -3 : i10, (i11 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    private final /* synthetic */ int o() {
        return this.consumed$volatile;
    }

    private final void q() {
        if (this.f93252f) {
            if (!(f93250g.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    private final /* synthetic */ void r(int i10) {
        this.consumed$volatile = i10;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        if (this.f93257c != -3) {
            Object objA = super.a(fVar, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        q();
        Object objE = FlowKt__ChannelsKt.e(fVar, this.f93251e, this.f93252f, continuation);
        return objE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objE : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String g() {
        return "channel=" + this.f93251e;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    protected Object i(@NotNull kotlinx.coroutines.channels.q<? super T> qVar, @NotNull Continuation<? super Unit> continuation) {
        Object objE = FlowKt__ChannelsKt.e(new kotlinx.coroutines.flow.internal.m(qVar), this.f93251e, this.f93252f, continuation);
        return objE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objE : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return new b(this.f93251e, this.f93252f, coroutineContext, i10, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public e<T> k() {
        return new b(this.f93251e, this.f93252f, null, 0, null, 28, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> n(@NotNull l0 l0Var) {
        q();
        return this.f93257c == -3 ? this.f93251e : super.n(l0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull ReceiveChannel<? extends T> receiveChannel, boolean z10, @NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f93251e = receiveChannel;
        this.f93252f = z10;
        this.consumed$volatile = 0;
    }
}
