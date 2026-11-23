package kotlinx.coroutines.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class m0<T> extends kotlinx.coroutines.a<T> implements CoroutineStackFrame {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Continuation<T> f93512e;

    /* JADX WARN: Multi-variable type inference failed */
    public m0(@NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super T> continuation) {
        super(coroutineContext, true, true);
        this.f93512e = continuation;
    }

    @Override // kotlinx.coroutines.a
    protected void F1(@Nullable Object obj) {
        Continuation<T> continuation = this.f93512e;
        continuation.resumeWith(kotlinx.coroutines.e0.a(obj, continuation));
    }

    @Override // kotlinx.coroutines.JobSupport
    protected final boolean V0() {
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void g0(@Nullable Object obj) {
        n.e(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f93512e), kotlinx.coroutines.e0.a(obj, this.f93512e), null, 2, null);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public final CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f93512e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public final StackTraceElement getStackTraceElement() {
        return null;
    }
}
