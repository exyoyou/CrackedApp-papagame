package kotlinx.coroutines.flow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,741:1\n24#2,4:742\n24#2,4:748\n24#2,4:770\n24#2,4:777\n24#2,4:789\n24#2,4:803\n24#2,4:817\n16#3:746\n16#3:752\n16#3:774\n16#3:781\n16#3:793\n16#3:807\n16#3:821\n326#4:747\n1#5:753\n90#6,2:754\n92#6,2:757\n94#6:760\n90#6,2:782\n92#6,2:785\n94#6:788\n90#6,2:810\n92#6,2:813\n94#6:816\n13309#7:756\n13310#7:759\n13309#7:784\n13310#7:787\n13309#7:812\n13310#7:815\n318#8,9:761\n327#8,2:775\n318#8,9:794\n327#8,2:808\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n361#1:742,4\n401#1:748,4\n495#1:770,4\n516#1:777,4\n636#1:789,4\n671#1:803,4\n699#1:817,4\n361#1:746\n401#1:752\n495#1:774\n516#1:781\n636#1:793\n671#1:807\n699#1:821\n383#1:747\n463#1:754,2\n463#1:757,2\n463#1:760\n539#1:782,2\n539#1:785,2\n539#1:788\n686#1:810,2\n686#1:813,2\n686#1:816\n463#1:756\n463#1:759\n539#1:784\n539#1:787\n686#1:812\n686#1:815\n493#1:761,9\n493#1:775,2\n670#1:794,9\n670#1:808,2\n*E\n"})
public class SharedFlowImpl<T> extends kotlinx.coroutines.flow.internal.a<p> implements i<T>, kotlinx.coroutines.flow.a<T>, kotlinx.coroutines.flow.internal.i<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f93193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f93194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final BufferOverflow f93195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private Object[] f93196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f93197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f93198k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f93199l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f93200m;

    private static final class a implements c1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final SharedFlowImpl<?> f93201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        public long f93202c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Object f93203d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @JvmField
        @NotNull
        public final Continuation<Unit> f93204e;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull SharedFlowImpl<?> sharedFlowImpl, long j10, @Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
            this.f93201b = sharedFlowImpl;
            this.f93202c = j10;
            this.f93203d = obj;
            this.f93204e = continuation;
        }

        @Override // kotlinx.coroutines.c1
        public void dispose() {
            this.f93201b.C(this);
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedFlowImpl(int i10, int i11, @NotNull BufferOverflow bufferOverflow) {
        this.f93193f = i10;
        this.f93194g = i11;
        this.f93195h = bufferOverflow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object B(p pVar, Continuation<? super Unit> continuation) {
        Unit unit;
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        synchronized (this) {
            if (Y(pVar) < 0) {
                pVar.f93409b = oVar;
            } else {
                Result.Companion companion = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
            }
            unit = Unit.INSTANCE;
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(a aVar) {
        synchronized (this) {
            if (aVar.f93202c < O()) {
                return;
            }
            Object[] objArr = this.f93196i;
            Intrinsics.checkNotNull(objArr);
            if (o.f(objArr, aVar.f93202c) != aVar) {
                return;
            }
            o.g(objArr, aVar.f93202c, o.f93407a);
            D();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void D() {
        if (this.f93194g != 0 || this.f93200m > 1) {
            Object[] objArr = this.f93196i;
            Intrinsics.checkNotNull(objArr);
            while (this.f93200m > 0 && o.f(objArr, (O() + ((long) U())) - 1) == o.f93407a) {
                this.f93200m--;
                o.g(objArr, O() + ((long) U()), null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ <T> Object E(SharedFlowImpl<T> sharedFlowImpl, f<? super T> fVar, Continuation<?> continuation) throws Throwable {
        SharedFlowImpl$collect$1 sharedFlowImpl$collect$1;
        SharedFlowImpl<T> sharedFlowImpl2;
        Throwable th;
        p pVar;
        f<? super T> fVar2;
        v1 v1Var;
        f fVar3;
        if (continuation instanceof SharedFlowImpl$collect$1) {
            sharedFlowImpl$collect$1 = (SharedFlowImpl$collect$1) continuation;
            int i10 = sharedFlowImpl$collect$1.f93211h;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sharedFlowImpl$collect$1.f93211h = i10 - Integer.MIN_VALUE;
            } else {
                sharedFlowImpl$collect$1 = new SharedFlowImpl$collect$1(sharedFlowImpl, continuation);
            }
        } else {
            sharedFlowImpl$collect$1 = new SharedFlowImpl$collect$1(sharedFlowImpl, continuation);
        }
        Object obj = sharedFlowImpl$collect$1.f93209f;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = sharedFlowImpl$collect$1.f93211h;
        if (i11 != 0) {
            if (i11 == 1) {
                pVar = (p) sharedFlowImpl$collect$1.f93207d;
                f<? super T> fVar4 = (f) sharedFlowImpl$collect$1.f93206c;
                SharedFlowImpl<T> sharedFlowImpl3 = (SharedFlowImpl) sharedFlowImpl$collect$1.f93205b;
                try {
                    ResultKt.throwOnFailure(obj);
                    fVar2 = fVar4;
                    sharedFlowImpl = sharedFlowImpl3;
                    try {
                        v1Var = (v1) sharedFlowImpl$collect$1.get$context().get(v1.F1);
                        fVar3 = fVar2;
                    } catch (Throwable th2) {
                        sharedFlowImpl2 = sharedFlowImpl;
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    sharedFlowImpl2 = sharedFlowImpl3;
                }
            } else {
                if (i11 != 2 && i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                v1 v1Var2 = (v1) sharedFlowImpl$collect$1.f93208e;
                pVar = (p) sharedFlowImpl$collect$1.f93207d;
                f fVar5 = (f) sharedFlowImpl$collect$1.f93206c;
                sharedFlowImpl2 = (SharedFlowImpl) sharedFlowImpl$collect$1.f93205b;
                try {
                    ResultKt.throwOnFailure(obj);
                    fVar3 = fVar5;
                    v1Var = v1Var2;
                    sharedFlowImpl = sharedFlowImpl2;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            sharedFlowImpl2.m(pVar);
            throw th;
        }
        ResultKt.throwOnFailure(obj);
        p pVarI = sharedFlowImpl.i();
        try {
            if (fVar instanceof SubscribedFlowCollector) {
                sharedFlowImpl$collect$1.f93205b = sharedFlowImpl;
                sharedFlowImpl$collect$1.f93206c = fVar;
                sharedFlowImpl$collect$1.f93207d = pVarI;
                sharedFlowImpl$collect$1.f93211h = 1;
                if (((SubscribedFlowCollector) fVar).a(sharedFlowImpl$collect$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            fVar2 = fVar;
            pVar = pVarI;
            v1Var = (v1) sharedFlowImpl$collect$1.get$context().get(v1.F1);
            fVar3 = fVar2;
        } catch (Throwable th5) {
            sharedFlowImpl2 = sharedFlowImpl;
            th = th5;
            pVar = pVarI;
        }
        while (true) {
            Object objZ = sharedFlowImpl.Z(pVar);
            if (objZ == o.f93407a) {
                sharedFlowImpl$collect$1.f93205b = sharedFlowImpl;
                sharedFlowImpl$collect$1.f93206c = fVar3;
                sharedFlowImpl$collect$1.f93207d = pVar;
                sharedFlowImpl$collect$1.f93208e = v1Var;
                sharedFlowImpl$collect$1.f93211h = 2;
                if (sharedFlowImpl.B(pVar, sharedFlowImpl$collect$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (v1Var != null) {
                    y1.A(v1Var);
                }
                sharedFlowImpl$collect$1.f93205b = sharedFlowImpl;
                sharedFlowImpl$collect$1.f93206c = fVar3;
                sharedFlowImpl$collect$1.f93207d = pVar;
                sharedFlowImpl$collect$1.f93208e = v1Var;
                sharedFlowImpl$collect$1.f93211h = 3;
                if (fVar3.emit(objZ, sharedFlowImpl$collect$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
    }

    private final void F(long j10) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (((kotlinx.coroutines.flow.internal.a) this).f93387c != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f93386b) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    p pVar = (p) cVar;
                    long j11 = pVar.f93408a;
                    if (j11 >= 0 && j11 < j10) {
                        pVar.f93408a = j10;
                    }
                }
            }
        }
        this.f93198k = j10;
    }

    private final void I() {
        Object[] objArr = this.f93196i;
        Intrinsics.checkNotNull(objArr);
        o.g(objArr, O(), null);
        this.f93199l--;
        long jO = O() + 1;
        if (this.f93197j < jO) {
            this.f93197j = jO;
        }
        if (this.f93198k < jO) {
            F(jO);
        }
    }

    static /* synthetic */ <T> Object J(SharedFlowImpl<T> sharedFlowImpl, T t10, Continuation<? super Unit> continuation) {
        if (sharedFlowImpl.d(t10)) {
            return Unit.INSTANCE;
        }
        Object objK = sharedFlowImpl.K(t10, continuation);
        return objK == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objK : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object K(T t10, Continuation<? super Unit> continuation) {
        Continuation<Unit>[] continuationArrM;
        a aVar;
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        Continuation<Unit>[] continuationArrM2 = kotlinx.coroutines.flow.internal.b.f93390a;
        synchronized (this) {
            if (W(t10)) {
                Result.Companion companion = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
                continuationArrM = M(continuationArrM2);
                aVar = null;
            } else {
                a aVar2 = new a(this, ((long) U()) + O(), t10, oVar);
                L(aVar2);
                this.f93200m++;
                if (this.f93194g == 0) {
                    continuationArrM2 = M(continuationArrM2);
                }
                continuationArrM = continuationArrM2;
                aVar = aVar2;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.q.a(oVar, aVar);
        }
        for (Continuation<Unit> continuation2 : continuationArrM) {
            if (continuation2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
            }
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(Object obj) {
        int iU = U();
        Object[] objArrV = this.f93196i;
        if (objArrV == null) {
            objArrV = V(null, 0, 2);
        } else if (iU >= objArrV.length) {
            objArrV = V(objArrV, iU, objArrV.length * 2);
        }
        o.g(objArrV, O() + ((long) iU), obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.coroutines.Continuation<kotlin.Unit>[]] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r6v2 */
    public final Continuation<Unit>[] M(Continuation<Unit>[] continuationArr) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        p pVar;
        Continuation<? super Unit> continuation;
        int length = continuationArr.length;
        if (((kotlinx.coroutines.flow.internal.a) this).f93387c != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f93386b) != null) {
            int length2 = cVarArr.length;
            int i10 = 0;
            while (i10 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = cVarArr[i10];
                if (cVar == null || (continuation = (pVar = (p) cVar).f93409b) == null || Y(pVar) < 0) {
                    continuationArr = continuationArr;
                } else {
                    if (length >= continuationArr.length) {
                        continuationArr = continuationArr;
                        continuationArr = continuationArr;
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
                        continuationArr = objArrCopyOf;
                    }
                    continuationArr = continuationArr;
                    continuationArr = continuationArr;
                    ((Continuation[]) continuationArr)[length] = continuation;
                    pVar.f93409b = null;
                    length++;
                }
                i10++;
                continuationArr = continuationArr;
            }
            continuationArr = continuationArr;
        }
        return (Continuation[]) continuationArr;
    }

    private final long N() {
        return O() + ((long) this.f93199l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long O() {
        return Math.min(this.f93198k, this.f93197j);
    }

    protected static /* synthetic */ void Q() {
    }

    private final Object R(long j10) {
        Object[] objArr = this.f93196i;
        Intrinsics.checkNotNull(objArr);
        Object objF = o.f(objArr, j10);
        return objF instanceof a ? ((a) objF).f93203d : objF;
    }

    private final long S() {
        return O() + ((long) this.f93199l) + ((long) this.f93200m);
    }

    private final int T() {
        return (int) ((O() + ((long) this.f93199l)) - this.f93197j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int U() {
        return this.f93199l + this.f93200m;
    }

    private final Object[] V(Object[] objArr, int i10, int i11) {
        if (!(i11 > 0)) {
            throw new IllegalStateException("Buffer size overflow".toString());
        }
        Object[] objArr2 = new Object[i11];
        this.f93196i = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jO = O();
        for (int i12 = 0; i12 < i10; i12++) {
            long j10 = ((long) i12) + jO;
            o.g(objArr2, j10, o.f(objArr, j10));
        }
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean W(T t10) {
        if (n() == 0) {
            return X(t10);
        }
        if (this.f93199l >= this.f93194g && this.f93198k <= this.f93197j) {
            int i10 = b.$EnumSwitchMapping$0[this.f93195h.ordinal()];
            if (i10 == 1) {
                return false;
            }
            if (i10 == 2) {
                return true;
            }
        }
        L(t10);
        int i11 = this.f93199l + 1;
        this.f93199l = i11;
        if (i11 > this.f93194g) {
            I();
        }
        if (T() > this.f93193f) {
            a0(this.f93197j + 1, this.f93198k, N(), S());
        }
        return true;
    }

    private final boolean X(T t10) {
        if (this.f93193f == 0) {
            return true;
        }
        L(t10);
        int i10 = this.f93199l + 1;
        this.f93199l = i10;
        if (i10 > this.f93193f) {
            I();
        }
        this.f93198k = O() + ((long) this.f93199l);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long Y(p pVar) {
        long j10 = pVar.f93408a;
        if (j10 < N()) {
            return j10;
        }
        if (this.f93194g <= 0 && j10 <= O() && this.f93200m != 0) {
            return j10;
        }
        return -1L;
    }

    private final Object Z(p pVar) {
        Object obj;
        Continuation<Unit>[] continuationArrB0 = kotlinx.coroutines.flow.internal.b.f93390a;
        synchronized (this) {
            long jY = Y(pVar);
            if (jY < 0) {
                obj = o.f93407a;
            } else {
                long j10 = pVar.f93408a;
                Object objR = R(jY);
                pVar.f93408a = jY + 1;
                continuationArrB0 = b0(j10);
                obj = objR;
            }
        }
        for (Continuation<Unit> continuation : continuationArrB0) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    private final void a0(long j10, long j11, long j12, long j13) {
        long jMin = Math.min(j11, j10);
        for (long jO = O(); jO < jMin; jO++) {
            Object[] objArr = this.f93196i;
            Intrinsics.checkNotNull(objArr);
            o.g(objArr, jO, null);
        }
        this.f93197j = j10;
        this.f93198k = j11;
        this.f93199l = (int) (j12 - jMin);
        this.f93200m = (int) (j13 - j12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public p j() {
        return new p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public p[] k(int i10) {
        return new p[i10];
    }

    protected final T P() {
        Object[] objArr = this.f93196i;
        Intrinsics.checkNotNull(objArr);
        return (T) o.f(objArr, (this.f93197j + ((long) T())) - 1);
    }

    @Override // kotlinx.coroutines.flow.n, kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<?> continuation) {
        return E(this, fVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.n
    @NotNull
    public List<T> b() {
        synchronized (this) {
            int iT = T();
            if (iT == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(iT);
            Object[] objArr = this.f93196i;
            Intrinsics.checkNotNull(objArr);
            for (int i10 = 0; i10 < iT; i10++) {
                arrayList.add(o.f(objArr, this.f93197j + ((long) i10)));
            }
            return arrayList;
        }
    }

    @NotNull
    public final Continuation<Unit>[] b0(long j10) {
        long j11;
        long j12;
        long j13;
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (j10 > this.f93198k) {
            return kotlinx.coroutines.flow.internal.b.f93390a;
        }
        long jO = O();
        long j14 = ((long) this.f93199l) + jO;
        if (this.f93194g == 0 && this.f93200m > 0) {
            j14++;
        }
        if (((kotlinx.coroutines.flow.internal.a) this).f93387c != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f93386b) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    long j15 = ((p) cVar).f93408a;
                    if (j15 >= 0 && j15 < j14) {
                        j14 = j15;
                    }
                }
            }
        }
        if (j14 <= this.f93198k) {
            return kotlinx.coroutines.flow.internal.b.f93390a;
        }
        long jN = N();
        int iMin = n() > 0 ? Math.min(this.f93200m, this.f93194g - ((int) (jN - j14))) : this.f93200m;
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f93390a;
        long j16 = ((long) this.f93200m) + jN;
        if (iMin > 0) {
            continuationArr = new Continuation[iMin];
            Object[] objArr = this.f93196i;
            Intrinsics.checkNotNull(objArr);
            long j17 = jN;
            int i10 = 0;
            while (true) {
                if (jN >= j16) {
                    j11 = j14;
                    j12 = j16;
                    break;
                }
                Object objF = o.f(objArr, jN);
                j11 = j14;
                q0 q0Var = o.f93407a;
                if (objF != q0Var) {
                    Intrinsics.checkNotNull(objF, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objF;
                    int i11 = i10 + 1;
                    j12 = j16;
                    continuationArr[i10] = aVar.f93204e;
                    o.g(objArr, jN, q0Var);
                    o.g(objArr, j17, aVar.f93203d);
                    j13 = 1;
                    j17++;
                    if (i11 >= iMin) {
                        break;
                    }
                    i10 = i11;
                } else {
                    j12 = j16;
                    j13 = 1;
                }
                jN += j13;
                j14 = j11;
                j16 = j12;
            }
            jN = j17;
        } else {
            j11 = j14;
            j12 = j16;
        }
        int i12 = (int) (jN - jO);
        long j18 = n() == 0 ? jN : j11;
        long jMax = Math.max(this.f93197j, jN - ((long) Math.min(this.f93193f, i12)));
        if (this.f93194g == 0 && jMax < j12) {
            Object[] objArr2 = this.f93196i;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(o.f(objArr2, jMax), o.f93407a)) {
                jN++;
                jMax++;
            }
        }
        a0(jMax, j18, jN, j12);
        D();
        return (continuationArr.length == 0) ^ true ? M(continuationArr) : continuationArr;
    }

    @Override // kotlinx.coroutines.flow.i
    public void c() {
        synchronized (this) {
            a0(N(), this.f93198k, N(), S());
            Unit unit = Unit.INSTANCE;
        }
    }

    public final long c0() {
        long j10 = this.f93197j;
        if (j10 < this.f93198k) {
            this.f93198k = j10;
        }
        return j10;
    }

    @Override // kotlinx.coroutines.flow.i
    public boolean d(T t10) {
        int i10;
        boolean z10;
        Continuation<Unit>[] continuationArrM = kotlinx.coroutines.flow.internal.b.f93390a;
        synchronized (this) {
            if (W(t10)) {
                continuationArrM = M(continuationArrM);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        for (Continuation<Unit> continuation : continuationArrM) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
            }
        }
        return z10;
    }

    @Override // kotlinx.coroutines.flow.i, kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
        return J(this, t10, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.i
    @NotNull
    public e<T> f(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return o.e(this, coroutineContext, i10, bufferOverflow);
    }
}
