package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class b3<U, T extends U> extends kotlinx.coroutines.internal.m0<T> implements Runnable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    public final long f92357f;

    public b3(long j10, @NotNull Continuation<? super U> continuation) {
        super(continuation.get$context(), continuation);
        this.f92357f = j10;
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport
    @NotNull
    public String e1() {
        return super.e1() + "(timeMillis=" + this.f92357f + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        j0(TimeoutKt.a(this.f92357f, DelayKt.d(get$context()), this));
    }
}
