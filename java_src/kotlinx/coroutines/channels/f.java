package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,200:1\n713#2,2:201\n713#2,2:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n149#1:201,2\n155#1:203,2\n*E\n"})
class f<E> extends kotlinx.coroutines.a<Unit> implements q<E>, d<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final d<E> f92693e;

    public f(@NotNull CoroutineContext coroutineContext, @NotNull d<E> dVar, boolean z10) {
        super(coroutineContext, false, z10);
        this.f92693e = dVar;
        Q0((v1) coroutineContext.get(v1.F1));
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean A() {
        return this.f92693e.A();
    }

    @Override // kotlinx.coroutines.a
    protected void H1(@NotNull Throwable th, boolean z10) {
        if (this.f92693e.U(th) || z10) {
            return;
        }
        i0.b(get$context(), th);
    }

    @NotNull
    protected final d<E> K1() {
        return this.f92693e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* JADX INFO: renamed from: L1, reason: merged with bridge method [inline-methods] */
    public void I1(@NotNull Unit unit) {
        s.a.a(this.f92693e, null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean U(@Nullable Throwable th) {
        boolean zU = this.f92693e.U(th);
        start();
        return zU;
    }

    @Override // kotlinx.coroutines.channels.s
    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        return this.f92693e.V(e10, continuation);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean a(Throwable th) {
        if (th == null) {
            th = new JobCancellationException(o0(), null, this);
        }
        l0(th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    public final void b(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.q
    @NotNull
    public s<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.v1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public kotlinx.coroutines.selects.g<E, s<E>> j() {
        return this.f92693e.j();
    }

    @Override // kotlinx.coroutines.JobSupport
    public void l0(@NotNull Throwable th) {
        CancellationException cancellationExceptionY1 = JobSupport.y1(this, th, null, 1, null);
        this.f92693e.b(cancellationExceptionY1);
        j0(cancellationExceptionY1);
    }

    @Override // kotlinx.coroutines.channels.d
    @NotNull
    public ReceiveChannel<E> m() {
        return this.f92693e.m();
    }

    @Override // kotlinx.coroutines.channels.s
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f92693e.offer(e10);
    }

    @Override // kotlinx.coroutines.channels.s
    public void r(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f92693e.r(function1);
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        return this.f92693e.s(e10);
    }
}
