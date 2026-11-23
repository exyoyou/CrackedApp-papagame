package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.internal.n0;
import kotlinx.coroutines.n;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.q;
import kotlinx.coroutines.selects.g;
import kotlinx.coroutines.selects.h;
import kotlinx.coroutines.selects.j;
import kotlinx.coroutines.selects.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n336#2,12:306\n1#3:318\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n170#1:306,12\n*E\n"})
public class MutexImpl extends SemaphoreImpl implements kotlinx.coroutines.sync.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93783i = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final Function3<j<?>, Object, Object, Function1<Throwable, Unit>> f93784h;
    private volatile /* synthetic */ Object owner$volatile;

    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"})
    private final class CancellableContinuationWithOwner implements n<Unit>, f3 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final o<Unit> f93785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Object f93786c;

        /* JADX WARN: Multi-variable type inference failed */
        public CancellableContinuationWithOwner(@Nullable o<? super Unit> oVar, Object obj) {
            this.f93785b = oVar;
            this.f93786c = obj;
        }

        @Override // kotlinx.coroutines.n
        @InternalCoroutinesApi
        public void B(@NotNull Object obj) {
            this.f93785b.B(obj);
        }

        @Override // kotlinx.coroutines.n
        public void E(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f93785b.E(function1);
        }

        @Override // kotlinx.coroutines.n
        @InternalCoroutinesApi
        @Nullable
        public Object F(@NotNull Throwable th) {
            return this.f93785b.F(th);
        }

        @Override // kotlinx.coroutines.n
        @InternalCoroutinesApi
        public void S() {
            this.f93785b.S();
        }

        @Override // kotlinx.coroutines.n
        public boolean a(@Nullable Throwable th) {
            return this.f93785b.a(th);
        }

        @Override // kotlinx.coroutines.n
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void p(@NotNull Unit unit, @Nullable Function1<? super Throwable, Unit> function1) {
            MutexImpl.O().set(MutexImpl.this, this.f93786c);
            o<Unit> oVar = this.f93785b;
            final MutexImpl mutexImpl = MutexImpl.this;
            oVar.p(unit, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$resume$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th) {
                    mutexImpl.i(this.f93786c);
                }
            });
        }

        @Override // kotlinx.coroutines.f3
        public void c(@NotNull n0<?> n0Var, int i10) {
            this.f93785b.c(n0Var, i10);
        }

        @Override // kotlinx.coroutines.n
        @ExperimentalCoroutinesApi
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void N(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Unit unit) {
            this.f93785b.N(coroutineDispatcher, unit);
        }

        @Override // kotlinx.coroutines.n
        @InternalCoroutinesApi
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Object C(@NotNull Unit unit, @Nullable Object obj) {
            return this.f93785b.C(unit, obj);
        }

        @Override // kotlinx.coroutines.n
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Object H(@NotNull Unit unit, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Object objH = this.f93785b.H(unit, obj, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$tryResume$token$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th) {
                    MutexImpl.O().set(mutexImpl, this.f93786c);
                    mutexImpl.i(this.f93786c);
                }
            });
            if (objH != null) {
                MutexImpl.O().set(MutexImpl.this, this.f93786c);
            }
            return objH;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        /* JADX INFO: renamed from: getContext */
        public CoroutineContext get$context() {
            return this.f93785b.get$context();
        }

        @Override // kotlinx.coroutines.n
        @ExperimentalCoroutinesApi
        public void i(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
            this.f93785b.i(coroutineDispatcher, th);
        }

        @Override // kotlinx.coroutines.n
        public boolean isActive() {
            return this.f93785b.isActive();
        }

        @Override // kotlinx.coroutines.n
        public boolean isCancelled() {
            return this.f93785b.isCancelled();
        }

        @Override // kotlinx.coroutines.n
        public boolean isCompleted() {
            return this.f93785b.isCompleted();
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            this.f93785b.resumeWith(obj);
        }
    }

    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"})
    private final class a<Q> implements k<Q> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final k<Q> f93792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Object f93793c;

        public a(@Nullable k<Q> kVar, Object obj) {
            this.f93792b = kVar;
            this.f93793c = obj;
        }

        @Override // kotlinx.coroutines.f3
        public void c(@NotNull n0<?> n0Var, int i10) {
            this.f93792b.c(n0Var, i10);
        }

        @Override // kotlinx.coroutines.selects.j
        public void f(@Nullable Object obj) {
            MutexImpl.O().set(MutexImpl.this, this.f93793c);
            this.f93792b.f(obj);
        }

        @Override // kotlinx.coroutines.selects.j
        public void g(@NotNull c1 c1Var) {
            this.f93792b.g(c1Var);
        }

        @Override // kotlinx.coroutines.selects.j
        @NotNull
        public CoroutineContext getContext() {
            return this.f93792b.getContext();
        }

        @Override // kotlinx.coroutines.selects.j
        public boolean i(@NotNull Object obj, @Nullable Object obj2) {
            boolean zI = this.f93792b.i(obj, obj2);
            MutexImpl mutexImpl = MutexImpl.this;
            if (zI) {
                MutexImpl.O().set(mutexImpl, this.f93793c);
            }
            return zI;
        }
    }

    public MutexImpl(boolean z10) {
        super(1, z10 ? 1 : 0);
        this.owner$volatile = z10 ? null : MutexKt.f93800a;
        this.f93784h = new Function3<j<?>, Object, Object, Function1<? super Throwable, ? extends Unit>>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Function1<Throwable, Unit> invoke(@NotNull j<?> jVar, @Nullable final Object obj, @Nullable Object obj2) {
                final MutexImpl mutexImpl = this.f93797b;
                return new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Throwable th) {
                        mutexImpl.i(obj);
                    }
                };
            }
        };
    }

    public static /* synthetic */ void M() {
    }

    private final /* synthetic */ Object N() {
        return this.owner$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater O() {
        return f93783i;
    }

    private final int P(Object obj) {
        while (c()) {
            Object obj2 = f93783i.get(this);
            if (obj2 != MutexKt.f93800a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }

    static /* synthetic */ Object Q(MutexImpl mutexImpl, Object obj, Continuation<? super Unit> continuation) {
        if (mutexImpl.b(obj)) {
            return Unit.INSTANCE;
        }
        Object objR = mutexImpl.R(obj, continuation);
        return objR == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object R(Object obj, Continuation<? super Unit> continuation) {
        o oVarB = q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            m(new CancellableContinuationWithOwner(oVarB, obj));
            Object objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }

    private final /* synthetic */ void U(Object obj) {
        this.owner$volatile = obj;
    }

    private final int V(Object obj) {
        while (!a()) {
            if (obj == null) {
                return 1;
            }
            int iP = P(obj);
            if (iP == 1) {
                return 2;
            }
            if (iP == 2) {
                return 1;
            }
        }
        f93783i.set(this, obj);
        return 0;
    }

    @Nullable
    protected Object S(@Nullable Object obj, @Nullable Object obj2) {
        if (!Intrinsics.areEqual(obj2, MutexKt.f93801b)) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    protected void T(@NotNull j<?> jVar, @Nullable Object obj) {
        if (obj != null && d(obj)) {
            jVar.f(MutexKt.f93801b);
        } else {
            Intrinsics.checkNotNull(jVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            C(new a((k) jVar, obj), obj);
        }
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean b(@Nullable Object obj) {
        int iV = V(obj);
        if (iV == 0) {
            return true;
        }
        if (iV == 1) {
            return false;
        }
        if (iV != 2) {
            throw new IllegalStateException("unexpected".toString());
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean c() {
        return f() == 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean d(@NotNull Object obj) {
        return P(obj) == 1;
    }

    @Override // kotlinx.coroutines.sync.a
    @NotNull
    public g<Object, kotlinx.coroutines.sync.a> e() {
        MutexImpl$onLock$1 mutexImpl$onLock$1 = MutexImpl$onLock$1.f93795b;
        Intrinsics.checkNotNull(mutexImpl$onLock$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$1, 3);
        MutexImpl$onLock$2 mutexImpl$onLock$2 = MutexImpl$onLock$2.f93796b;
        Intrinsics.checkNotNull(mutexImpl$onLock$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new h(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(mutexImpl$onLock$2, 3), this.f93784h);
    }

    @Override // kotlinx.coroutines.sync.a
    @Nullable
    public Object h(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        return Q(this, obj, continuation);
    }

    @Override // kotlinx.coroutines.sync.a
    public void i(@Nullable Object obj) {
        while (c()) {
            Object obj2 = f93783i.get(this);
            if (obj2 != MutexKt.f93800a) {
                if (!(obj2 == obj || obj == null)) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.a.a(f93783i, this, obj2, MutexKt.f93800a)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked".toString());
    }

    @NotNull
    public String toString() {
        return "Mutex@" + o0.b(this) + "[isLocked=" + c() + ",owner=" + f93783i.get(this) + ']';
    }
}
