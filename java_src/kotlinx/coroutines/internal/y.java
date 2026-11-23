package kotlinx.coroutines.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class y<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93545a = AtomicReferenceFieldUpdater.newUpdater(y.class, Object.class, "_cur$volatile");
    private volatile /* synthetic */ Object _cur$volatile;

    public y(boolean z10) {
        this._cur$volatile = new z(8, z10);
    }

    private final /* synthetic */ Object d() {
        return this._cur$volatile;
    }

    private final /* synthetic */ void h(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final /* synthetic */ void k(Object obj) {
        this._cur$volatile = obj;
    }

    public final boolean a(@NotNull E e10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93545a;
        while (true) {
            z zVar = (z) atomicReferenceFieldUpdater.get(this);
            int iA = zVar.a(e10);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.a.a(f93545a, this, zVar, zVar.r());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93545a;
        while (true) {
            z zVar = (z) atomicReferenceFieldUpdater.get(this);
            if (zVar.d()) {
                return;
            } else {
                androidx.concurrent.futures.a.a(f93545a, this, zVar, zVar.r());
            }
        }
    }

    public final int c() {
        return ((z) f93545a.get(this)).g();
    }

    public final boolean f() {
        return ((z) f93545a.get(this)).l();
    }

    public final boolean g() {
        return ((z) f93545a.get(this)).m();
    }

    @NotNull
    public final <R> List<R> i(@NotNull Function1<? super E, ? extends R> function1) {
        return ((z) f93545a.get(this)).p(function1);
    }

    @Nullable
    public final E j() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93545a;
        while (true) {
            z zVar = (z) atomicReferenceFieldUpdater.get(this);
            E e10 = (E) zVar.s();
            if (e10 != z.f93561t) {
                return e10;
            }
            androidx.concurrent.futures.a.a(f93545a, this, zVar, zVar.r());
        }
    }
}
