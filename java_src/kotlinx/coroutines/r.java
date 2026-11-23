package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class r extends b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93630c = AtomicIntegerFieldUpdater.newUpdater(r.class, "_resumed$volatile");
    private volatile /* synthetic */ int _resumed$volatile;

    public r(@NotNull Continuation<?> continuation, @Nullable Throwable th, boolean z10) {
        if (th == null) {
            th = new CancellationException("Continuation " + continuation + " was cancelled normally");
        }
        super(th, z10);
        this._resumed$volatile = 0;
    }

    private final /* synthetic */ int f() {
        return this._resumed$volatile;
    }

    private final /* synthetic */ void i(int i10) {
        this._resumed$volatile = i10;
    }

    public final boolean h() {
        return f93630c.compareAndSet(this, 0, 1);
    }
}
