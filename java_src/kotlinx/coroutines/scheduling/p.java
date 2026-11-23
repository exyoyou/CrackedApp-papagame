package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,251:1\n89#2:252\n89#2:253\n89#2:254\n89#2:257\n89#2:258\n1#3:255\n21#4:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n91#1:252\n158#1:253\n181#1:254\n201#1:257\n245#1:258\n201#1:256\n*E\n"})
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93703b = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "lastScheduledTask$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93704c = AtomicIntegerFieldUpdater.newUpdater(p.class, "producerIndex$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93705d = AtomicIntegerFieldUpdater.newUpdater(p.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93706e = AtomicIntegerFieldUpdater.newUpdater(p.class, "blockingTasksInBuffer$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final AtomicReferenceArray<j> f93707a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    private final j A(int i10, boolean z10) {
        int i11 = i10 & 127;
        j jVar = this.f93707a.get(i11);
        if (jVar != null) {
            if ((jVar.f93689c.s() == 1) == z10 && io.netty.util.a.a(this.f93707a, i11, jVar, null)) {
                if (z10) {
                    f93706e.decrementAndGet(this);
                }
                return jVar;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.j] */
    private final long C(int i10, Ref.ObjectRef<j> objectRef) {
        ?? r10;
        do {
            r10 = (j) f93703b.get(this);
            if (r10 == 0) {
                return -2L;
            }
            if (((r10.f93689c.s() == 1 ? 1 : 2) & i10) == 0) {
                return -2L;
            }
            long jA = n.f93697f.a() - r10.f93688b;
            long j10 = n.f93693b;
            if (jA < j10) {
                return j10 - jA;
            }
        } while (!androidx.concurrent.futures.a.a(f93703b, this, r10, null));
        objectRef.element = r10;
        return -1L;
    }

    public static /* synthetic */ j b(p pVar, j jVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return pVar.a(jVar, z10);
    }

    private final j c(j jVar) {
        if (g() == 127) {
            return jVar;
        }
        if (jVar.f93689c.s() == 1) {
            f93706e.incrementAndGet(this);
        }
        int i10 = f93704c.get(this) & 127;
        while (this.f93707a.get(i10) != null) {
            Thread.yield();
        }
        this.f93707a.lazySet(i10, jVar);
        f93704c.incrementAndGet(this);
        return null;
    }

    private final void d(j jVar) {
        if (jVar != null) {
            if (jVar.f93689c.s() == 1) {
                f93706e.decrementAndGet(this);
            }
        }
    }

    private final /* synthetic */ int e() {
        return this.blockingTasksInBuffer$volatile;
    }

    private final int g() {
        return f93704c.get(this) - f93705d.get(this);
    }

    private final /* synthetic */ int h() {
        return this.consumerIndex$volatile;
    }

    private final /* synthetic */ Object j() {
        return this.lastScheduledTask$volatile;
    }

    private final /* synthetic */ int l() {
        return this.producerIndex$volatile;
    }

    private final j r() {
        j andSet;
        while (true) {
            int i10 = f93705d.get(this);
            if (i10 - f93704c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f93705d.compareAndSet(this, i10, i10 + 1) && (andSet = this.f93707a.getAndSet(i11, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    private final boolean t(e eVar) {
        j jVarR = r();
        if (jVarR == null) {
            return false;
        }
        eVar.a(jVarR);
        return true;
    }

    private final j u(boolean z10) {
        j jVar;
        do {
            jVar = (j) f93703b.get(this);
            if (jVar != null) {
                if ((jVar.f93689c.s() == 1) == z10) {
                }
            }
            int i10 = f93705d.get(this);
            int i11 = f93704c.get(this);
            while (i10 != i11) {
                if (z10 && f93706e.get(this) == 0) {
                    return null;
                }
                i11--;
                j jVarA = A(i11, z10);
                if (jVarA != null) {
                    return jVarA;
                }
            }
            return null;
        } while (!androidx.concurrent.futures.a.a(f93703b, this, jVar, null));
        return jVar;
    }

    private final /* synthetic */ void v(int i10) {
        this.blockingTasksInBuffer$volatile = i10;
    }

    private final /* synthetic */ void w(int i10) {
        this.consumerIndex$volatile = i10;
    }

    private final /* synthetic */ void x(Object obj) {
        this.lastScheduledTask$volatile = obj;
    }

    private final /* synthetic */ void y(int i10) {
        this.producerIndex$volatile = i10;
    }

    private final j z(int i10) {
        int i11 = f93705d.get(this);
        int i12 = f93704c.get(this);
        boolean z10 = i10 == 1;
        while (i11 != i12) {
            if (z10 && f93706e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            j jVarA = A(i11, z10);
            if (jVarA != null) {
                return jVarA;
            }
            i11 = i13;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long B(int i10, @NotNull Ref.ObjectRef<j> objectRef) {
        j jVarZ;
        T t10;
        j jVarR;
        if (i10 == 3) {
            jVarR = r();
        } else {
            jVarZ = z(i10);
        }
        if (t10 == 0) {
            t10 = jVarZ;
            t10 = jVarR;
            return C(i10, objectRef);
        }
        t10 = jVarZ;
        t10 = jVarR;
        objectRef.element = t10;
        return -1L;
    }

    @Nullable
    public final j a(@NotNull j jVar, boolean z10) {
        if (z10) {
            return c(jVar);
        }
        j jVar2 = (j) f93703b.getAndSet(this, jVar);
        if (jVar2 == null) {
            return null;
        }
        return c(jVar2);
    }

    public final int n() {
        return f93703b.get(this) != null ? g() + 1 : g();
    }

    public final void o(@NotNull e eVar) {
        j jVar = (j) f93703b.getAndSet(this, null);
        if (jVar != null) {
            eVar.a(jVar);
        }
        while (t(eVar)) {
        }
    }

    @Nullable
    public final j p() {
        j jVar = (j) f93703b.getAndSet(this, null);
        return jVar == null ? r() : jVar;
    }

    @Nullable
    public final j q() {
        return u(true);
    }

    @Nullable
    public final j s() {
        return u(false);
    }
}
