package kotlinx.coroutines.selects;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.internal.n0;
import kotlinx.coroutines.o;
import kotlinx.coroutines.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,879:1\n1#2:880\n2624#3,3:881\n1855#3,2:893\n1855#3,2:901\n1855#3,2:903\n318#4,9:884\n327#4,2:895\n149#5,4:897\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n512#1:881,3\n576#1:893,2\n732#1:901,2\n757#1:903,2\n552#1:884,9\n552#1:895,2\n717#1:897,4\n*E\n"})
public class SelectImplementation<R> implements kotlinx.coroutines.m, b<R>, k<R> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93723g = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f93724b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Object f93726d;
    private volatile /* synthetic */ Object state$volatile = SelectKt.f93750f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private List<SelectImplementation<R>.a> f93725c = new ArrayList(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f93727e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Object f93728f = SelectKt.f93753i;

    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,879:1\n1#2:880\n*E\n"})
    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @JvmField
        @NotNull
        public final Object f93729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final Function3<Object, j<?>, Object, Unit> f93730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NotNull
        private final Function3<Object, Object, Object, Object> f93731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private final Object f93732d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NotNull
        private final Object f93733e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Function3<j<?>, Object, Object, Function1<Throwable, Unit>> f93734f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @JvmField
        @Nullable
        public Object f93735g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @JvmField
        public int f93736h = -1;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Object obj, @NotNull Function3<Object, ? super j<?>, Object, Unit> function3, @Nullable Function3<Object, Object, Object, ? extends Object> function4, @NotNull Object obj2, @Nullable Object obj3, Function3<? super j<?>, Object, Object, ? extends Function1<? super Throwable, Unit>> function5) {
            this.f93729a = obj;
            this.f93730b = function3;
            this.f93731c = function4;
            this.f93732d = obj2;
            this.f93733e = obj3;
            this.f93734f = function5;
        }

        @Nullable
        public final Function1<Throwable, Unit> a(@NotNull j<?> jVar, @Nullable Object obj) {
            Function3<j<?>, Object, Object, Function1<Throwable, Unit>> function3 = this.f93734f;
            if (function3 != null) {
                return function3.invoke(jVar, this.f93732d, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.f93735g;
            SelectImplementation<R> selectImplementation = SelectImplementation.this;
            if (obj instanceof n0) {
                ((n0) obj).z(this.f93736h, null, selectImplementation.getContext());
                return;
            }
            c1 c1Var = obj instanceof c1 ? (c1) obj : null;
            if (c1Var != null) {
                c1Var.dispose();
            }
        }

        @Nullable
        public final Object c(@Nullable Object obj, @NotNull Continuation<? super R> continuation) {
            Object obj2 = this.f93733e;
            if (this.f93732d == SelectKt.l()) {
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj2).invoke(continuation);
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj2).invoke(obj, continuation);
        }

        @Nullable
        public final Object d(@Nullable Object obj) {
            return this.f93731c.invoke(this.f93729a, this.f93732d, obj);
        }

        public final boolean e(@NotNull SelectImplementation<R> selectImplementation) {
            this.f93730b.invoke(this.f93729a, selectImplementation, this.f93732d);
            return ((SelectImplementation) selectImplementation).f93728f == SelectKt.f93753i;
        }
    }

    public SelectImplementation(@NotNull CoroutineContext coroutineContext) {
        this.f93724b = coroutineContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A() {
        Object obj = f93723g.get(this);
        return obj == SelectKt.f93750f || (obj instanceof List);
    }

    private final /* synthetic */ Object B() {
        return this.state$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater C() {
        return f93723g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean D() {
        return f93723g.get(this) == SelectKt.f93752h;
    }

    private final boolean E() {
        return f93723g.get(this) instanceof a;
    }

    private final /* synthetic */ void F(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object G(SelectImplementation<R>.a aVar, Object obj, Continuation<? super R> continuation) {
        SelectImplementation$processResultAndInvokeBlockRecoveringException$1 selectImplementation$processResultAndInvokeBlockRecoveringException$1;
        if (continuation instanceof SelectImplementation$processResultAndInvokeBlockRecoveringException$1) {
            selectImplementation$processResultAndInvokeBlockRecoveringException$1 = (SelectImplementation$processResultAndInvokeBlockRecoveringException$1) continuation;
            int i10 = selectImplementation$processResultAndInvokeBlockRecoveringException$1.f93744d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                selectImplementation$processResultAndInvokeBlockRecoveringException$1.f93744d = i10 - Integer.MIN_VALUE;
            } else {
                selectImplementation$processResultAndInvokeBlockRecoveringException$1 = new SelectImplementation$processResultAndInvokeBlockRecoveringException$1(this, continuation);
            }
        } else {
            selectImplementation$processResultAndInvokeBlockRecoveringException$1 = new SelectImplementation$processResultAndInvokeBlockRecoveringException$1(this, continuation);
        }
        Object objC = selectImplementation$processResultAndInvokeBlockRecoveringException$1.f93742b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = selectImplementation$processResultAndInvokeBlockRecoveringException$1.f93744d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(objC);
            Object objD = aVar.d(obj);
            selectImplementation$processResultAndInvokeBlockRecoveringException$1.f93744d = 1;
            objC = aVar.c(objD, selectImplementation$processResultAndInvokeBlockRecoveringException$1);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objC);
        }
        return objC;
    }

    public static /* synthetic */ void I(SelectImplementation selectImplementation, a aVar, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        selectImplementation.H(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(Object obj) {
        SelectImplementation<R>.a aVarZ = z(obj);
        Intrinsics.checkNotNull(aVarZ);
        aVarZ.f93735g = null;
        aVarZ.f93736h = -1;
        H(aVarZ, true);
    }

    private final /* synthetic */ void K(Object obj) {
        this.state$volatile = obj;
    }

    private final int M(Object obj, Object obj2) {
        while (true) {
            Object obj3 = f93723g.get(this);
            if (obj3 instanceof kotlinx.coroutines.n) {
                SelectImplementation<R>.a aVarZ = z(obj);
                if (aVarZ == null) {
                    continue;
                } else {
                    Function1<Throwable, Unit> function1A = aVarZ.a(this, obj2);
                    if (androidx.concurrent.futures.a.a(f93723g, this, obj3, aVarZ)) {
                        this.f93728f = obj2;
                        if (SelectKt.o((kotlinx.coroutines.n) obj3, function1A)) {
                            return 0;
                        }
                        this.f93728f = SelectKt.f93753i;
                        return 2;
                    }
                }
            } else {
                if (Intrinsics.areEqual(obj3, SelectKt.f93751g) ? true : obj3 instanceof a) {
                    return 3;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.f93752h)) {
                    return 2;
                }
                if (Intrinsics.areEqual(obj3, SelectKt.f93750f)) {
                    if (androidx.concurrent.futures.a.a(f93723g, this, obj3, CollectionsKt__CollectionsJVMKt.listOf(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (androidx.concurrent.futures.a.a(f93723g, this, obj3, CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    private final /* synthetic */ void N(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object O(Continuation<? super Unit> continuation) {
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdaterC = C();
        while (true) {
            Object obj = atomicReferenceFieldUpdaterC.get(this);
            if (obj == SelectKt.f93750f) {
                if (androidx.concurrent.futures.a.a(C(), this, obj, oVar)) {
                    q.c(oVar, this);
                    break;
                }
            } else {
                if (!(obj instanceof List)) {
                    if (obj instanceof a) {
                        oVar.p(Unit.INSTANCE, ((a) obj).a(this, this.f93728f));
                        break;
                    }
                    throw new IllegalStateException(("unexpected state: " + obj).toString());
                }
                if (androidx.concurrent.futures.a.a(C(), this, obj, SelectKt.f93750f)) {
                    Iterator it2 = ((Iterable) obj).iterator();
                    while (it2.hasNext()) {
                        J(it2.next());
                    }
                }
            }
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    private final void t(Object obj) {
        List<SelectImplementation<R>.a> list = this.f93725c;
        Intrinsics.checkNotNull(list);
        List<SelectImplementation<R>.a> list2 = list;
        boolean z10 = true;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((a) it2.next()).f93729a == obj) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            return;
        }
        throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
    }

    private final void u(SelectImplementation<R>.a aVar) {
        List<SelectImplementation<R>.a> list = this.f93725c;
        if (list == null) {
            return;
        }
        for (SelectImplementation<R>.a aVar2 : list) {
            if (aVar2 != aVar) {
                aVar2.b();
            }
        }
        f93723g.set(this, SelectKt.f93751g);
        this.f93728f = SelectKt.f93753i;
        this.f93725c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object v(Continuation<? super R> continuation) {
        Object obj = f93723g.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        SelectImplementation<R>.a aVar = (a) obj;
        Object obj2 = this.f93728f;
        u(aVar);
        return aVar.c(aVar.d(obj2), continuation);
    }

    @PublishedApi
    static /* synthetic */ <R> Object x(SelectImplementation<R> selectImplementation, Continuation<? super R> continuation) {
        return selectImplementation.E() ? selectImplementation.v(continuation) : selectImplementation.y(continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object y(Continuation<? super R> continuation) {
        SelectImplementation$doSelectSuspend$1 selectImplementation$doSelectSuspend$1;
        SelectImplementation selectImplementation;
        if (continuation instanceof SelectImplementation$doSelectSuspend$1) {
            selectImplementation$doSelectSuspend$1 = (SelectImplementation$doSelectSuspend$1) continuation;
            int i10 = selectImplementation$doSelectSuspend$1.f93741e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                selectImplementation$doSelectSuspend$1.f93741e = i10 - Integer.MIN_VALUE;
            } else {
                selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, continuation);
            }
        } else {
            selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, continuation);
        }
        Object objV = selectImplementation$doSelectSuspend$1.f93739c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = selectImplementation$doSelectSuspend$1.f93741e;
        if (i11 != 0) {
            if (i11 == 1) {
                SelectImplementation selectImplementation2 = (SelectImplementation) selectImplementation$doSelectSuspend$1.f93738b;
                ResultKt.throwOnFailure(objV);
                selectImplementation = selectImplementation2;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objV);
            }
        }
        ResultKt.throwOnFailure(objV);
        selectImplementation$doSelectSuspend$1.f93738b = this;
        selectImplementation$doSelectSuspend$1.f93741e = 1;
        if (O(selectImplementation$doSelectSuspend$1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        selectImplementation = this;
        selectImplementation$doSelectSuspend$1.f93738b = null;
        selectImplementation$doSelectSuspend$1.f93741e = 2;
        objV = selectImplementation.v(selectImplementation$doSelectSuspend$1);
        return objV == coroutine_suspended ? coroutine_suspended : objV;
    }

    private final SelectImplementation<R>.a z(Object obj) {
        List<SelectImplementation<R>.a> list = this.f93725c;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        for (Object obj3 : list) {
            if (((a) obj3).f93729a == obj) {
                obj2 = obj3;
                break;
            }
        }
        SelectImplementation<R>.a aVar = (a) obj2;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    @JvmName(name = "register")
    public final void H(@NotNull SelectImplementation<R>.a aVar, boolean z10) {
        if (f93723g.get(this) instanceof a) {
            return;
        }
        if (!z10) {
            t(aVar.f93729a);
        }
        if (!aVar.e(this)) {
            f93723g.set(this, aVar);
            return;
        }
        if (!z10) {
            List<SelectImplementation<R>.a> list = this.f93725c;
            Intrinsics.checkNotNull(list);
            list.add(aVar);
        }
        aVar.f93735g = this.f93726d;
        aVar.f93736h = this.f93727e;
        this.f93726d = null;
        this.f93727e = -1;
    }

    @NotNull
    public final TrySelectDetailedResult L(@NotNull Object obj, @Nullable Object obj2) {
        return SelectKt.d(M(obj, obj2));
    }

    @Override // kotlinx.coroutines.m
    public void a(@Nullable Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93723g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.f93751g) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, SelectKt.f93752h));
        List<SelectImplementation<R>.a> list = this.f93725c;
        if (list == null) {
            return;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((a) it2.next()).b();
        }
        this.f93728f = SelectKt.f93753i;
        this.f93725c = null;
    }

    @Override // kotlinx.coroutines.selects.b
    public void b(@NotNull c cVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        I(this, new a(cVar.d(), cVar.c(), cVar.b(), SelectKt.l(), function1, cVar.a()), false, 1, null);
    }

    @Override // kotlinx.coroutines.f3
    public void c(@NotNull n0<?> n0Var, int i10) {
        this.f93726d = n0Var;
        this.f93727e = i10;
    }

    @Override // kotlinx.coroutines.selects.b
    public <P, Q> void d(@NotNull g<? super P, ? extends Q> gVar, P p10, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        I(this, new a(gVar.d(), gVar.c(), gVar.b(), p10, function2, gVar.a()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.b
    @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @LowPriorityInOverloadResolution
    @ExperimentalCoroutinesApi
    public void e(long j10, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        b.a.b(this, j10, function1);
    }

    @Override // kotlinx.coroutines.selects.j
    public void f(@Nullable Object obj) {
        this.f93728f = obj;
    }

    @Override // kotlinx.coroutines.selects.j
    public void g(@NotNull c1 c1Var) {
        this.f93726d = c1Var;
    }

    @Override // kotlinx.coroutines.selects.j
    @NotNull
    public CoroutineContext getContext() {
        return this.f93724b;
    }

    @Override // kotlinx.coroutines.selects.b
    public <P, Q> void h(@NotNull g<? super P, ? extends Q> gVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        b.a.a(this, gVar, function2);
    }

    @Override // kotlinx.coroutines.selects.j
    public boolean i(@NotNull Object obj, @Nullable Object obj2) {
        return M(obj, obj2) == 0;
    }

    @Override // kotlinx.coroutines.selects.b
    public <Q> void j(@NotNull e<? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        I(this, new a(eVar.d(), eVar.c(), eVar.b(), null, function2, eVar.a()), false, 1, null);
    }

    @PublishedApi
    @Nullable
    public Object w(@NotNull Continuation<? super R> continuation) {
        return x(this, continuation);
    }
}
