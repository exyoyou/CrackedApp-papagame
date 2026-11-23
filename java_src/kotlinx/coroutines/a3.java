package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class a3 implements s1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f92326e = AtomicIntegerFieldUpdater.newUpdater(a3.class, "_state$volatile");
    private volatile /* synthetic */ int _state$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final v1 f92327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Thread f92328c = Thread.currentThread();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private c1 f92329d;

    public a3(@NotNull v1 v1Var) {
        this.f92327b = v1Var;
    }

    private final /* synthetic */ int c() {
        return this._state$volatile;
    }

    private final Void e(int i10) {
        throw new IllegalStateException(("Illegal state " + i10).toString());
    }

    private final /* synthetic */ void f(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void g(int i10) {
        this._state$volatile = i10;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f92326e;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    return;
                }
                e(i10);
                throw new KotlinNothingValueException();
            }
        } while (!f92326e.compareAndSet(this, i10, 2));
        this.f92328c.interrupt();
        f92326e.set(this, 3);
    }

    public final void b() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f92326e;
        while (true) {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        e(i10);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f92326e.compareAndSet(this, i10, 1)) {
                c1 c1Var = this.f92329d;
                if (c1Var != null) {
                    c1Var.dispose();
                    return;
                }
                return;
            }
        }
    }

    public final void h() {
        int i10;
        this.f92329d = y1.C(this.f92327b, true, true, this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f92326e;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2 || i10 == 3) {
                    return;
                }
                e(i10);
                throw new KotlinNothingValueException();
            }
        } while (!f92326e.compareAndSet(this, i10, 0));
    }
}
