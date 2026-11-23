package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n*E\n"})
public abstract class g<N extends g<N>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93497b = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93498c = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public g(@Nullable N n10) {
        this._prev$volatile = n10;
    }

    private final N d() {
        N n10 = (N) h();
        while (n10 != null && n10.m()) {
            n10 = (N) f93498c.get(n10);
        }
        return n10;
    }

    private final N e() {
        g gVarF;
        N n10 = (N) f();
        Intrinsics.checkNotNull(n10);
        while (n10.m() && (gVarF = n10.f()) != null) {
            n10 = (N) gVarF;
        }
        return n10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g() {
        return f93497b.get(this);
    }

    private final /* synthetic */ Object i() {
        return this._next$volatile;
    }

    private final /* synthetic */ Object k() {
        return this._prev$volatile;
    }

    private final /* synthetic */ void r(Object obj) {
        this._next$volatile = obj;
    }

    private final /* synthetic */ void s(Object obj) {
        this._prev$volatile = obj;
    }

    private final /* synthetic */ void u(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
    }

    public final void c() {
        f93498c.set(this, null);
    }

    @Nullable
    public final N f() {
        Object objG = g();
        if (objG == f.f93495b) {
            return null;
        }
        return (N) objG;
    }

    @Nullable
    public final N h() {
        return (N) f93498c.get(this);
    }

    public abstract boolean m();

    public final boolean n() {
        return f() == null;
    }

    public final boolean o() {
        return androidx.concurrent.futures.a.a(f93497b, this, null, f.f93495b);
    }

    @Nullable
    public final N p(@NotNull Function0 function0) {
        Object objG = g();
        if (objG != f.f93495b) {
            return (N) objG;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    public final void q() {
        Object obj;
        if (n()) {
            return;
        }
        while (true) {
            g gVarD = d();
            g gVarE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93498c;
            do {
                obj = atomicReferenceFieldUpdater.get(gVarE);
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, gVarE, obj, ((g) obj) == null ? null : gVarD));
            if (gVarD != null) {
                f93497b.set(gVarD, gVarE);
            }
            if (!gVarE.m() || gVarE.n()) {
                if (gVarD == null || !gVarD.m()) {
                    return;
                }
            }
        }
    }

    public final boolean t(@NotNull N n10) {
        return androidx.concurrent.futures.a.a(f93497b, this, null, n10);
    }
}
