package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,39:1\n713#2,2:40\n713#2,2:42\n713#2,2:44\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n17#1:40,2\n23#1:42,2\n30#1:44,2\n*E\n"})
public class h<E> extends kotlinx.coroutines.a<Unit> implements g<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final g<E> f92702e;

    public h(@NotNull CoroutineContext coroutineContext, @NotNull g<E> gVar, boolean z10, boolean z11) {
        super(coroutineContext, z10, z11);
        this.f92702e = gVar;
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean A() {
        return this.f92702e.A();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean D() {
        return this.f92702e.D();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<E> G() {
        return this.f92702e.G();
    }

    @NotNull
    protected final g<E> K1() {
        return this.f92702e;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object T(@NotNull Continuation<? super E> continuation) {
        return this.f92702e.T(continuation);
    }

    public boolean U(@Nullable Throwable th) {
        return this.f92702e.U(th);
    }

    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        return this.f92702e.V(e10, continuation);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean a(Throwable th) {
        l0(new JobCancellationException(o0(), null, this));
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    public final void b(@Nullable CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        l0(new JobCancellationException(o0(), null, this));
    }

    @NotNull
    public final g<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        return this.f92702e.isEmpty();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return this.f92702e.iterator();
    }

    @NotNull
    public kotlinx.coroutines.selects.g<E, s<E>> j() {
        return this.f92702e.j();
    }

    @Override // kotlinx.coroutines.JobSupport
    public void l0(@NotNull Throwable th) {
        CancellationException cancellationExceptionY1 = JobSupport.y1(this, th, null, 1, null);
        this.f92702e.b(cancellationExceptionY1);
        j0(cancellationExceptionY1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f92702e.offer(e10);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return this.f92702e.poll();
    }

    @Override // kotlinx.coroutines.channels.s
    public void r(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f92702e.r(function1);
    }

    @NotNull
    public Object s(E e10) {
        return this.f92702e.s(e10);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<j<E>> v() {
        return this.f92702e.v();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<E> w() {
        return this.f92702e.w();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public Object x() {
        return this.f92702e.x();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object y(@NotNull Continuation<? super E> continuation) {
        return this.f92702e.y(continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object z(@NotNull Continuation<? super j<? extends E>> continuation) {
        Object objZ = this.f92702e.z(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return objZ;
    }
}
