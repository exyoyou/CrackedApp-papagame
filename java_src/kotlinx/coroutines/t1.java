package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class t1 extends w1 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93834g = AtomicIntegerFieldUpdater.newUpdater(t1.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final s1 f93835f;

    public t1(@NotNull s1 s1Var) {
        this.f93835f = s1Var;
    }

    private final /* synthetic */ int J() {
        return this._invoked$volatile;
    }

    private final /* synthetic */ void L(int i10) {
        this._invoked$volatile = i10;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        if (f93834g.compareAndSet(this, 0, 1)) {
            this.f93835f.a(th);
        }
    }
}
