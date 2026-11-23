package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 10 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1461:1\n713#1,2:1468\n364#1,2:1477\n366#1,4:1482\n370#1,4:1487\n374#1,2:1494\n364#1,2:1496\n366#1,4:1501\n370#1,4:1506\n374#1,2:1513\n175#1,2:1521\n714#1:1523\n175#1,2:1524\n175#1,2:1540\n175#1,2:1553\n713#1,2:1555\n713#1,2:1557\n175#1,2:1559\n713#1,2:1561\n175#1,2:1563\n175#1,2:1570\n175#1,2:1572\n1#2:1462\n1#2:1486\n1#2:1505\n24#3,4:1463\n24#3,4:1526\n24#3,4:1565\n24#3,4:1574\n16#4:1467\n16#4:1530\n16#4:1569\n16#4:1578\n288#5,2:1470\n288#5,2:1472\n18#6:1474\n159#7:1475\n159#7:1476\n149#7,4:1579\n336#8,3:1479\n339#8,3:1491\n336#8,3:1498\n339#8,3:1510\n336#8,6:1515\n132#9:1531\n70#9,3:1532\n133#9,5:1535\n318#10,11:1542\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n247#1:1468,2\n329#1:1477,2\n329#1:1482,4\n329#1:1487,4\n329#1:1494,2\n361#1:1496,2\n361#1:1501,4\n361#1:1506,4\n361#1:1513,2\n378#1:1521,2\n423#1:1523\n468#1:1524,2\n560#1:1540,2\n601#1:1553,2\n628#1:1555,2\n637#1:1557,2\n701#1:1559,2\n730#1:1561,2\n743#1:1563,2\n816#1:1570,2\n838#1:1572,2\n329#1:1486\n361#1:1505\n210#1:1463,4\n485#1:1526,4\n746#1:1565,4\n891#1:1574,4\n210#1:1467\n485#1:1530\n746#1:1569\n891#1:1578\n258#1:1470,2\n262#1:1472,2\n270#1:1474\n276#1:1475\n278#1:1476\n1225#1:1579,4\n329#1:1479,3\n329#1:1491,3\n361#1:1498,3\n361#1:1510,3\n365#1:1515,6\n533#1:1531\n533#1:1532,3\n533#1:1535,5\n566#1:1542,11\n*E\n"})
public class JobSupport implements v1, v, j2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92288b = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92289c = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1461:1\n1#2:1462\n*E\n"})
    private static final class a<T> extends o<T> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @NotNull
        private final JobSupport f92290j;

        public a(@NotNull Continuation<? super T> continuation, @NotNull JobSupport jobSupport) {
            super(continuation, 1);
            this.f92290j = jobSupport;
        }

        @Override // kotlinx.coroutines.o
        @NotNull
        protected String W() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.o
        @NotNull
        public Throwable x(@NotNull v1 v1Var) {
            Throwable thE;
            Object objJ0 = this.f92290j.J0();
            if (!(objJ0 instanceof c) || (thE = ((c) objJ0).e()) == null) {
                return objJ0 instanceof b0 ? ((b0) objJ0).f92345a : v1Var.O();
            }
            return thE;
        }
    }

    private static final class b extends a2 {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NotNull
        private final JobSupport f92291f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @NotNull
        private final c f92292g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @NotNull
        private final u f92293h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        private final Object f92294i;

        public b(@NotNull JobSupport jobSupport, @NotNull c cVar, @NotNull u uVar, @Nullable Object obj) {
            this.f92291f = jobSupport;
            this.f92292g = cVar;
            this.f92293h = uVar;
            this.f92294i = obj;
        }

        @Override // kotlinx.coroutines.s1
        public void a(@Nullable Throwable th) {
            this.f92291f.r0(this.f92292g, this.f92293h, this.f92294i);
        }
    }

    @SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1461:1\n1#2:1462\n*E\n"})
    private static final class c implements q1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f92295c = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f92296d = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f92297e = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final f2 f92298b;

        public c(@NotNull f2 f2Var, boolean z10, @Nullable Throwable th) {
            this.f92298b = f2Var;
            this._isCompleting$volatile = z10 ? 1 : 0;
            this._rootCause$volatile = th;
        }

        private final ArrayList<Throwable> c() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return f92297e.get(this);
        }

        private final /* synthetic */ Object f() {
            return this._exceptionsHolder$volatile;
        }

        private final /* synthetic */ int h() {
            return this._isCompleting$volatile;
        }

        private final /* synthetic */ Object j() {
            return this._rootCause$volatile;
        }

        private final void q(Object obj) {
            f92297e.set(this, obj);
        }

        private final /* synthetic */ void s(Object obj) {
            this._exceptionsHolder$volatile = obj;
        }

        private final /* synthetic */ void t(int i10) {
            this._isCompleting$volatile = i10;
        }

        private final /* synthetic */ void u(Object obj) {
            this._rootCause$volatile = obj;
        }

        public final void a(@NotNull Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                r(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                q(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList<Throwable> arrayListC = c();
                arrayListC.add(objD);
                arrayListC.add(th);
                q(arrayListC);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override // kotlinx.coroutines.q1
        @NotNull
        public f2 b() {
            return this.f92298b;
        }

        @Nullable
        public final Throwable e() {
            return (Throwable) f92296d.get(this);
        }

        @Override // kotlinx.coroutines.q1
        public boolean isActive() {
            return e() == null;
        }

        public final boolean l() {
            return e() != null;
        }

        public final boolean m() {
            return f92295c.get(this) != 0;
        }

        public final boolean n() {
            return d() == b2.f92354h;
        }

        @NotNull
        public final List<Throwable> o(@Nullable Throwable th) {
            ArrayList<Throwable> arrayListC;
            Object objD = d();
            if (objD == null) {
                arrayListC = c();
            } else if (objD instanceof Throwable) {
                ArrayList<Throwable> arrayListC2 = c();
                arrayListC2.add(objD);
                arrayListC = arrayListC2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListC = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListC.add(0, thE);
            }
            if (th != null && !Intrinsics.areEqual(th, thE)) {
                arrayListC.add(th);
            }
            q(b2.f92354h);
            return arrayListC;
        }

        public final void p(boolean z10) {
            f92295c.set(this, z10 ? 1 : 0);
        }

        public final void r(@Nullable Throwable th) {
            f92296d.set(this, th);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + l() + ", completing=" + m() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + b() + ']';
        }
    }

    private final class d extends a2 {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NotNull
        private final kotlinx.coroutines.selects.j<?> f92304f;

        public d(kotlinx.coroutines.selects.j<?> jVar) {
            this.f92304f = jVar;
        }

        @Override // kotlinx.coroutines.s1
        public void a(@Nullable Throwable th) {
            Object objJ0 = JobSupport.this.J0();
            if (!(objJ0 instanceof b0)) {
                objJ0 = b2.h(objJ0);
            }
            this.f92304f.i(JobSupport.this, objJ0);
        }
    }

    private final class e extends a2 {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NotNull
        private final kotlinx.coroutines.selects.j<?> f92306f;

        public e(kotlinx.coroutines.selects.j<?> jVar) {
            this.f92306f = jVar;
        }

        @Override // kotlinx.coroutines.s1
        public void a(@Nullable Throwable th) {
            this.f92306f.i(JobSupport.this, Unit.INSTANCE);
        }
    }

    @SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,351:1\n533#2:352\n*E\n"})
    public static final class f extends LockFreeLinkedListNode.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ JobSupport f92308d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f92309e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(LockFreeLinkedListNode lockFreeLinkedListNode, JobSupport jobSupport, Object obj) {
            super(lockFreeLinkedListNode);
            this.f92308d = jobSupport;
            this.f92309e = obj;
        }

        @Override // kotlinx.coroutines.internal.b
        @Nullable
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Object g(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            if (this.f92308d.J0() == this.f92309e) {
                return null;
            }
            return kotlinx.coroutines.internal.x.a();
        }
    }

    public JobSupport(boolean z10) {
        this._state$volatile = z10 ? b2.f92356j : b2.f92355i;
    }

    private final Throwable A0(Object obj) {
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        if (b0Var != null) {
            return b0Var.f92345a;
        }
        return null;
    }

    private final boolean A1(q1 q1Var, Object obj) throws Throwable {
        if (!androidx.concurrent.futures.a.a(f92288b, this, q1Var, b2.g(obj))) {
            return false;
        }
        l1(null);
        m1(obj);
        q0(q1Var, obj);
        return true;
    }

    private final Throwable B0(c cVar, List<? extends Throwable> list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.l()) {
                return new JobCancellationException(o0(), null, this);
            }
            return null;
        }
        List<? extends Throwable> list2 = list;
        Iterator<T> it2 = list2.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!(!(((Throwable) next) instanceof CancellationException)));
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : list2) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final boolean B1(q1 q1Var, Throwable th) throws Throwable {
        f2 f2VarH0 = H0(q1Var);
        if (f2VarH0 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(f92288b, this, q1Var, new c(f2VarH0, false, th))) {
            return false;
        }
        g1(f2VarH0, th);
        return true;
    }

    private final Object C1(Object obj, Object obj2) throws Throwable {
        if (!(obj instanceof q1)) {
            return b2.f92347a;
        }
        if ((!(obj instanceof f1) && !(obj instanceof a2)) || (obj instanceof u) || (obj2 instanceof b0)) {
            return D1((q1) obj, obj2);
        }
        return A1((q1) obj, obj2) ? obj2 : b2.f92349c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    private final Object D1(q1 q1Var, Object obj) throws Throwable {
        f2 f2VarH0 = H0(q1Var);
        if (f2VarH0 == null) {
            return b2.f92349c;
        }
        c cVar = q1Var instanceof c ? (c) q1Var : null;
        if (cVar == null) {
            cVar = new c(f2VarH0, false, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (cVar) {
            if (cVar.m()) {
                return b2.f92347a;
            }
            cVar.p(true);
            if (cVar != q1Var && !androidx.concurrent.futures.a.a(f92288b, this, q1Var, cVar)) {
                return b2.f92349c;
            }
            boolean zL = cVar.l();
            b0 b0Var = obj instanceof b0 ? (b0) obj : null;
            if (b0Var != null) {
                cVar.a(b0Var.f92345a);
            }
            ?? E = Boolean.valueOf(zL ? false : true).booleanValue() ? cVar.e() : 0;
            objectRef.element = E;
            Unit unit = Unit.INSTANCE;
            if (E != 0) {
                g1(f2VarH0, E);
            }
            u uVarW0 = w0(q1Var);
            return (uVarW0 == null || !E1(cVar, uVarW0, obj)) ? v0(cVar, obj) : b2.f92348b;
        }
    }

    protected static /* synthetic */ void E0() {
    }

    private final boolean E1(c cVar, u uVar, Object obj) {
        while (JobKt__JobKt.B(uVar.f93836f, false, false, new b(this, cVar, uVar, obj), 1, null) == h2.f93449b) {
            uVar = f1(uVar);
            if (uVar == null) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ void G0() {
    }

    private final f2 H0(q1 q1Var) {
        f2 f2VarB = q1Var.b();
        if (f2VarB != null) {
            return f2VarB;
        }
        if (q1Var instanceof f1) {
            return new f2();
        }
        if (q1Var instanceof a2) {
            p1((a2) q1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + q1Var).toString());
    }

    private final /* synthetic */ Object K0() {
        return this._parentHandle$volatile;
    }

    private final /* synthetic */ Object M0() {
        return this._state$volatile;
    }

    private final boolean T0(q1 q1Var) {
        return (q1Var instanceof c) && ((c) q1Var).l();
    }

    private final boolean W0() {
        Object objJ0;
        do {
            objJ0 = J0();
            if (!(objJ0 instanceof q1)) {
                return false;
            }
        } while (v1(objJ0) < 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object X0(Continuation<? super Unit> continuation) {
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        q.a(oVar, JobKt__JobKt.B(this, false, false, new l2(oVar), 3, null));
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    private final /* synthetic */ void Y0(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final Void Z0(Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(J0());
        }
    }

    private final Object a1(Object obj) throws Throwable {
        Throwable thS0 = null;
        while (true) {
            Object objJ0 = J0();
            if (objJ0 instanceof c) {
                synchronized (objJ0) {
                    if (((c) objJ0).n()) {
                        return b2.f92350d;
                    }
                    boolean zL = ((c) objJ0).l();
                    if (obj != null || !zL) {
                        if (thS0 == null) {
                            thS0 = s0(obj);
                        }
                        ((c) objJ0).a(thS0);
                    }
                    Throwable thE = zL ^ true ? ((c) objJ0).e() : null;
                    if (thE != null) {
                        g1(((c) objJ0).b(), thE);
                    }
                    return b2.f92347a;
                }
            }
            if (!(objJ0 instanceof q1)) {
                return b2.f92350d;
            }
            if (thS0 == null) {
                thS0 = s0(obj);
            }
            q1 q1Var = (q1) objJ0;
            if (!q1Var.isActive()) {
                Object objC1 = C1(objJ0, new b0(thS0, false, 2, null));
                if (objC1 == b2.f92347a) {
                    throw new IllegalStateException(("Cannot happen in " + objJ0).toString());
                }
                if (objC1 != b2.f92349c) {
                    return objC1;
                }
            } else if (B1(q1Var, thS0)) {
                return b2.f92347a;
            }
        }
    }

    private final a2 d1(s1 s1Var, boolean z10) {
        a2 u1Var;
        if (z10) {
            u1Var = s1Var instanceof w1 ? (w1) s1Var : null;
            if (u1Var == null) {
                u1Var = new t1(s1Var);
            }
        } else {
            u1Var = s1Var instanceof a2 ? (a2) s1Var : null;
            if (u1Var == null) {
                u1Var = new u1(s1Var);
            }
        }
        u1Var.I(this);
        return u1Var;
    }

    private final boolean e0(Object obj, f2 f2Var, a2 a2Var) {
        int iF;
        f fVar = new f(a2Var, this, obj);
        do {
            iF = f2Var.o().F(a2Var, f2Var, fVar);
            if (iF == 1) {
                return true;
            }
        } while (iF != 2);
        return false;
    }

    private final void f0(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th2 : list) {
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }

    private final u f1(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.v()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.o();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.n();
            if (!lockFreeLinkedListNode.v()) {
                if (lockFreeLinkedListNode instanceof u) {
                    return (u) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof f2) {
                    return null;
                }
            }
        }
    }

    private final void g1(f2 f2Var, Throwable th) throws Throwable {
        l1(th);
        Object objM = f2Var.m();
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeN = (LockFreeLinkedListNode) objM; !Intrinsics.areEqual(lockFreeLinkedListNodeN, f2Var); lockFreeLinkedListNodeN = lockFreeLinkedListNodeN.n()) {
            if (lockFreeLinkedListNodeN instanceof w1) {
                a2 a2Var = (a2) lockFreeLinkedListNodeN;
                try {
                    a2Var.a(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + a2Var + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            P0(completionHandlerException);
        }
        n0(th);
    }

    private final void h1(f2 f2Var, Throwable th) throws Throwable {
        Object objM = f2Var.m();
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeN = (LockFreeLinkedListNode) objM; !Intrinsics.areEqual(lockFreeLinkedListNodeN, f2Var); lockFreeLinkedListNodeN = lockFreeLinkedListNodeN.n()) {
            if (lockFreeLinkedListNodeN instanceof a2) {
                a2 a2Var = (a2) lockFreeLinkedListNodeN;
                try {
                    a2Var.a(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + a2Var + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            P0(completionHandlerException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object i0(Continuation<Object> continuation) {
        a aVar = new a(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), this);
        aVar.S();
        q.a(aVar, JobKt__JobKt.B(this, false, false, new k2(aVar), 3, null));
        Object objZ = aVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }

    private final /* synthetic */ <T extends a2> void i1(f2 f2Var, Throwable th) throws Throwable {
        Object objM = f2Var.m();
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeN = (LockFreeLinkedListNode) objM; !Intrinsics.areEqual(lockFreeLinkedListNodeN, f2Var); lockFreeLinkedListNodeN = lockFreeLinkedListNodeN.n()) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (lockFreeLinkedListNodeN instanceof LockFreeLinkedListNode) {
                a2 a2Var = (a2) lockFreeLinkedListNodeN;
                try {
                    a2Var.a(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + a2Var + " for " + this, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            P0(completionHandlerException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object j1(Object obj, Object obj2) throws Throwable {
        if (obj2 instanceof b0) {
            throw ((b0) obj2).f92345a;
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(kotlinx.coroutines.selects.j<?> jVar, Object obj) {
        Object objJ0;
        do {
            objJ0 = J0();
            if (!(objJ0 instanceof q1)) {
                if (!(objJ0 instanceof b0)) {
                    objJ0 = b2.h(objJ0);
                }
                jVar.f(objJ0);
                return;
            }
        } while (v1(objJ0) < 0);
        jVar.g(JobKt__JobKt.B(this, false, false, new d(jVar), 3, null));
    }

    private final Object m0(Object obj) throws Throwable {
        Object objC1;
        do {
            Object objJ0 = J0();
            if (!(objJ0 instanceof q1) || ((objJ0 instanceof c) && ((c) objJ0).m())) {
                return b2.f92347a;
            }
            objC1 = C1(objJ0, new b0(s0(obj), false, 2, null));
        } while (objC1 == b2.f92349c);
        return objC1;
    }

    private final boolean n0(Throwable th) {
        if (V0()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        t tVarI0 = I0();
        if (tVarI0 == null || tVarI0 == h2.f93449b) {
            return z10;
        }
        return tVarI0.e(th) || z10;
    }

    private final void o1(f1 f1Var) {
        f2 f2Var = new f2();
        Object p1Var = f2Var;
        if (!f1Var.isActive()) {
            p1Var = new p1(f2Var);
        }
        androidx.concurrent.futures.a.a(f92288b, this, f1Var, p1Var);
    }

    private final void p1(a2 a2Var) {
        a2Var.i(new f2());
        androidx.concurrent.futures.a.a(f92288b, this, a2Var, a2Var.n());
    }

    private final void q0(q1 q1Var, Object obj) throws Throwable {
        t tVarI0 = I0();
        if (tVarI0 != null) {
            tVarI0.dispose();
            s1(h2.f93449b);
        }
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        Throwable th = b0Var != null ? b0Var.f92345a : null;
        if (!(q1Var instanceof a2)) {
            f2 f2VarB = q1Var.b();
            if (f2VarB != null) {
                h1(f2VarB, th);
                return;
            }
            return;
        }
        try {
            ((a2) q1Var).a(th);
        } catch (Throwable th2) {
            P0(new CompletionHandlerException("Exception in completion handler " + q1Var + " for " + this, th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1(kotlinx.coroutines.selects.j<?> jVar, Object obj) {
        if (W0()) {
            jVar.g(JobKt__JobKt.B(this, false, false, new e(jVar), 3, null));
        } else {
            jVar.f(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0(c cVar, u uVar, Object obj) {
        u uVarF1 = f1(uVar);
        if (uVarF1 == null || !E1(cVar, uVarF1, obj)) {
            g0(v0(cVar, obj));
        }
    }

    private final Throwable s0(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(o0(), null, this) : th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((j2) obj).P();
    }

    private final /* synthetic */ void t1(Object obj) {
        this._parentHandle$volatile = obj;
    }

    public static /* synthetic */ JobCancellationException u0(JobSupport jobSupport, String str, Throwable th, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.o0();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    private final /* synthetic */ void u1(Object obj) {
        this._state$volatile = obj;
    }

    private final Object v0(c cVar, Object obj) throws Throwable {
        boolean zL;
        Throwable thB0;
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        Throwable th = b0Var != null ? b0Var.f92345a : null;
        synchronized (cVar) {
            zL = cVar.l();
            List<Throwable> listO = cVar.o(th);
            thB0 = B0(cVar, listO);
            if (thB0 != null) {
                f0(thB0, listO);
            }
        }
        if (thB0 != null && thB0 != th) {
            obj = new b0(thB0, false, 2, null);
        }
        if (thB0 != null) {
            if (n0(thB0) || O0(thB0)) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((b0) obj).d();
            }
        }
        if (!zL) {
            l1(thB0);
        }
        m1(obj);
        androidx.concurrent.futures.a.a(f92288b, this, cVar, b2.g(obj));
        q0(cVar, obj);
        return obj;
    }

    private final int v1(Object obj) {
        if (obj instanceof f1) {
            if (((f1) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.a.a(f92288b, this, obj, b2.f92356j)) {
                return -1;
            }
            n1();
            return 1;
        }
        if (!(obj instanceof p1)) {
            return 0;
        }
        if (!androidx.concurrent.futures.a.a(f92288b, this, obj, ((p1) obj).b())) {
            return -1;
        }
        n1();
        return 1;
    }

    private final u w0(q1 q1Var) {
        u uVar = q1Var instanceof u ? (u) q1Var : null;
        if (uVar != null) {
            return uVar;
        }
        f2 f2VarB = q1Var.b();
        if (f2VarB != null) {
            return f1(f2VarB);
        }
        return null;
    }

    private final String w1(Object obj) {
        if (!(obj instanceof c)) {
            if (obj instanceof q1) {
                return ((q1) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof b0 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        if (cVar.l()) {
            return "Cancelling";
        }
        return cVar.m() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException y1(JobSupport jobSupport, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return jobSupport.x1(th, str);
    }

    public boolean C0() {
        return true;
    }

    @NotNull
    protected final kotlinx.coroutines.selects.e<?> D0() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.f92310b;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$1, 3);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.f92311b;
        Intrinsics.checkNotNull(jobSupport$onAwaitInternal$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new kotlinx.coroutines.selects.f(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onAwaitInternal$2, 3), null, 8, null);
    }

    public boolean F0() {
        return false;
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final kotlinx.coroutines.selects.c I() {
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.f92312b;
        Intrinsics.checkNotNull(jobSupport$onJoin$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new kotlinx.coroutines.selects.d(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(jobSupport$onJoin$1, 3), null, 4, null);
    }

    @Nullable
    public final t I0() {
        return (t) f92289c.get(this);
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final t J(@NotNull v vVar) {
        c1 c1VarB = JobKt__JobKt.B(this, true, false, new u(vVar), 2, null);
        Intrinsics.checkNotNull(c1VarB, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (t) c1VarB;
    }

    @Nullable
    public final Object J0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92288b;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof kotlinx.coroutines.internal.i0)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.i0) obj).b(this);
        }
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final Sequence<v1> K() {
        return SequencesKt__SequenceBuilderKt.sequence(new JobSupport$children$1(this, null));
    }

    @Nullable
    public final Throwable L() {
        Object objJ0 = J0();
        if (!(objJ0 instanceof q1)) {
            return A0(objJ0);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final c1 M(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1) {
        return R0(z10, z11, new s1.a(function1));
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final CancellationException O() {
        Object objJ0 = J0();
        if (!(objJ0 instanceof c)) {
            if (objJ0 instanceof q1) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objJ0 instanceof b0) {
                return y1(this, ((b0) objJ0).f92345a, null, 1, null);
            }
            return new JobCancellationException(o0.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((c) objJ0).e();
        if (thE != null) {
            CancellationException cancellationExceptionX1 = x1(thE, o0.a(this) + " is cancelling");
            if (cancellationExceptionX1 != null) {
                return cancellationExceptionX1;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    protected boolean O0(@NotNull Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.j2
    @NotNull
    public CancellationException P() {
        Throwable thE;
        Object objJ0 = J0();
        if (objJ0 instanceof c) {
            thE = ((c) objJ0).e();
        } else if (objJ0 instanceof b0) {
            thE = ((b0) objJ0).f92345a;
        } else {
            if (objJ0 instanceof q1) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objJ0).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + w1(objJ0), thE, this);
    }

    public void P0(@NotNull Throwable th) throws Throwable {
        throw th;
    }

    protected final void Q0(@Nullable v1 v1Var) {
        if (v1Var == null) {
            s1(h2.f93449b);
            return;
        }
        v1Var.start();
        t tVarJ = v1Var.J(this);
        s1(tVarJ);
        if (isCompleted()) {
            tVarJ.dispose();
            s1(h2.f93449b);
        }
    }

    @Override // kotlinx.coroutines.v1
    @Nullable
    public final Object R(@NotNull Continuation<? super Unit> continuation) {
        if (W0()) {
            Object objX0 = X0(continuation);
            return objX0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objX0 : Unit.INSTANCE;
        }
        y1.z(continuation.get$context());
        return Unit.INSTANCE;
    }

    @NotNull
    public final c1 R0(boolean z10, boolean z11, @NotNull s1 s1Var) {
        a2 a2VarD1 = d1(s1Var, z10);
        while (true) {
            Object objJ0 = J0();
            if (objJ0 instanceof f1) {
                f1 f1Var = (f1) objJ0;
                if (!f1Var.isActive()) {
                    o1(f1Var);
                } else if (androidx.concurrent.futures.a.a(f92288b, this, objJ0, a2VarD1)) {
                    return a2VarD1;
                }
            } else {
                Throwable thE = null;
                if (!(objJ0 instanceof q1)) {
                    if (z11) {
                        b0 b0Var = objJ0 instanceof b0 ? (b0) objJ0 : null;
                        s1Var.a(b0Var != null ? b0Var.f92345a : null);
                    }
                    return h2.f93449b;
                }
                f2 f2VarB = ((q1) objJ0).b();
                if (f2VarB == null) {
                    Intrinsics.checkNotNull(objJ0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    p1((a2) objJ0);
                } else {
                    c1 c1Var = h2.f93449b;
                    if (z10 && (objJ0 instanceof c)) {
                        synchronized (objJ0) {
                            thE = ((c) objJ0).e();
                            if (thE == null || ((s1Var instanceof u) && !((c) objJ0).m())) {
                                if (e0(objJ0, f2VarB, a2VarD1)) {
                                    if (thE == null) {
                                        return a2VarD1;
                                    }
                                    c1Var = a2VarD1;
                                }
                            }
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                    if (thE != null) {
                        if (z11) {
                            s1Var.a(thE);
                        }
                        return c1Var;
                    }
                    if (e0(objJ0, f2VarB, a2VarD1)) {
                        return a2VarD1;
                    }
                }
            }
        }
    }

    public final boolean U0() {
        return J0() instanceof b0;
    }

    protected boolean V0() {
        return false;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean a(Throwable th) throws Throwable {
        Throwable jobCancellationException;
        if (th == null || (jobCancellationException = y1(this, th, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(jobCancellationException);
        return true;
    }

    @Override // kotlinx.coroutines.v1
    public void b(@Nullable CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    public final boolean b1(@Nullable Object obj) throws Throwable {
        Object objC1;
        do {
            objC1 = C1(J0(), obj);
            if (objC1 == b2.f92347a) {
                return false;
            }
            if (objC1 == b2.f92348b) {
                return true;
            }
        } while (objC1 == b2.f92349c);
        g0(objC1);
        return true;
    }

    @Nullable
    public final Object c1(@Nullable Object obj) throws Throwable {
        Object objC1;
        do {
            objC1 = C1(J0(), obj);
            if (objC1 == b2.f92347a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, A0(obj));
            }
        } while (objC1 == b2.f92349c);
        return objC1;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        b(null);
    }

    @NotNull
    public String e1() {
        return o0.a(this);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) v1.a.d(this, r10, function2);
    }

    protected void g0(@Nullable Object obj) {
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) v1.a.e(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public final CoroutineContext.Key<?> getKey() {
        return v1.F1;
    }

    @Override // kotlinx.coroutines.v1
    @Nullable
    public v1 getParent() {
        t tVarI0 = I0();
        if (tVarI0 != null) {
            return tVarI0.getParent();
        }
        return null;
    }

    @Override // kotlinx.coroutines.v
    public final void h(@NotNull j2 j2Var) throws Throwable {
        k0(j2Var);
    }

    @Nullable
    protected final Object h0(@NotNull Continuation<Object> continuation) throws Throwable {
        Object objJ0;
        do {
            objJ0 = J0();
            if (!(objJ0 instanceof q1)) {
                if (objJ0 instanceof b0) {
                    throw ((b0) objJ0).f92345a;
                }
                return b2.h(objJ0);
            }
        } while (v1(objJ0) < 0);
        return i0(continuation);
    }

    @Override // kotlinx.coroutines.v1
    public boolean isActive() {
        Object objJ0 = J0();
        return (objJ0 instanceof q1) && ((q1) objJ0).isActive();
    }

    @Override // kotlinx.coroutines.v1
    public final boolean isCancelled() {
        Object objJ0 = J0();
        return (objJ0 instanceof b0) || ((objJ0 instanceof c) && ((c) objJ0).l());
    }

    @Override // kotlinx.coroutines.v1
    public final boolean isCompleted() {
        return !(J0() instanceof q1);
    }

    public final boolean j0(@Nullable Throwable th) {
        return k0(th);
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public v1 k(@NotNull v1 v1Var) {
        return v1.a.j(this, v1Var);
    }

    public final boolean k0(@Nullable Object obj) throws Throwable {
        Object objA1 = b2.f92347a;
        if (F0() && (objA1 = m0(obj)) == b2.f92348b) {
            return true;
        }
        if (objA1 == b2.f92347a) {
            objA1 = a1(obj);
        }
        if (objA1 == b2.f92347a || objA1 == b2.f92348b) {
            return true;
        }
        if (objA1 == b2.f92350d) {
            return false;
        }
        g0(objA1);
        return true;
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public final c1 l(@NotNull Function1<? super Throwable, Unit> function1) {
        return R0(false, true, new s1.a(function1));
    }

    public void l0(@NotNull Throwable th) throws Throwable {
        k0(th);
    }

    protected void l1(@Nullable Throwable th) {
    }

    protected void m1(@Nullable Object obj) {
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return v1.a.h(this, key);
    }

    protected void n1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String o0() {
        return "Job was cancelled";
    }

    public boolean p0(@NotNull Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return k0(th) && C0();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return v1.a.i(this, coroutineContext);
    }

    public final void r1(@NotNull a2 a2Var) {
        Object objJ0;
        do {
            objJ0 = J0();
            if (!(objJ0 instanceof a2)) {
                if (!(objJ0 instanceof q1) || ((q1) objJ0).b() == null) {
                    return;
                }
                a2Var.z();
                return;
            }
            if (objJ0 != a2Var) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f92288b, this, objJ0, b2.f92356j));
    }

    public final void s1(@Nullable t tVar) {
        f92289c.set(this, tVar);
    }

    @Override // kotlinx.coroutines.v1
    public final boolean start() {
        int iV1;
        do {
            iV1 = v1(J0());
            if (iV1 == 0) {
                return false;
            }
        } while (iV1 != 1);
        return true;
    }

    @NotNull
    public final JobCancellationException t0(@Nullable String str, @Nullable Throwable th) {
        if (str == null) {
            str = o0();
        }
        return new JobCancellationException(str, th, this);
    }

    @NotNull
    public String toString() {
        return z1() + '@' + o0.b(this);
    }

    @Nullable
    public final Object x0() throws Throwable {
        Object objJ0 = J0();
        if (!(!(objJ0 instanceof q1))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (objJ0 instanceof b0) {
            throw ((b0) objJ0).f92345a;
        }
        return b2.h(objJ0);
    }

    @NotNull
    protected final CancellationException x1(@NotNull Throwable th, @Nullable String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = o0();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    @Nullable
    protected final Throwable y0() {
        Object objJ0 = J0();
        if (objJ0 instanceof c) {
            Throwable thE = ((c) objJ0).e();
            if (thE != null) {
                return thE;
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(objJ0 instanceof q1)) {
            if (objJ0 instanceof b0) {
                return ((b0) objJ0).f92345a;
            }
            return null;
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    protected final boolean z0() {
        Object objJ0 = J0();
        return (objJ0 instanceof b0) && ((b0) objJ0).a();
    }

    @InternalCoroutinesApi
    @NotNull
    public final String z1() {
        return e1() + '{' + w1(J0()) + '}';
    }
}
