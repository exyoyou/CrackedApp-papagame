package kotlinx.coroutines.android;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends e2 implements t0 {
    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract d d0();

    @NotNull
    public c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return t0.a.b(this, j10, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.t0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object x(long j10, @NotNull Continuation<? super Unit> continuation) {
        return t0.a.a(this, j10, continuation);
    }

    private d() {
    }
}
