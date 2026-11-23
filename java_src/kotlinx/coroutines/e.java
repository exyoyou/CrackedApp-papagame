package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,119:1\n318#2,9:120\n327#2,2:131\n13309#3,2:129\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n63#1:120,9\n63#1:131,2\n75#1:129,2\n*E\n"})
final class e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f92794b = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final r0<T>[] f92795a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,119:1\n11065#2:120\n11400#2,3:121\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n113#1:120\n113#1:121,3\n*E\n"})
    private final class a extends a2 {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f92796i = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile /* synthetic */ Object _disposer$volatile;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NotNull
        private final n<List<? extends T>> f92797f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c1 f92798g;

        /* JADX WARN: Multi-variable type inference failed */
        public a(n<? super List<? extends T>> nVar) {
            this.f92797f = nVar;
        }

        private final /* synthetic */ Object L() {
            return this._disposer$volatile;
        }

        private final /* synthetic */ void P(Object obj) {
            this._disposer$volatile = obj;
        }

        @Nullable
        public final e<T>.b J() {
            return (b) f92796i.get(this);
        }

        @NotNull
        public final c1 K() {
            c1 c1Var = this.f92798g;
            if (c1Var != null) {
                return c1Var;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            return null;
        }

        public final void N(@Nullable e<T>.b bVar) {
            f92796i.set(this, bVar);
        }

        public final void O(@NotNull c1 c1Var) {
            this.f92798g = c1Var;
        }

        @Override // kotlinx.coroutines.s1
        public void a(@Nullable Throwable th) {
            if (th != null) {
                Object objF = this.f92797f.F(th);
                if (objF != null) {
                    this.f92797f.B(objF);
                    e<T>.b bVarJ = J();
                    if (bVarJ != null) {
                        bVarJ.b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (e.e().decrementAndGet(e.this) == 0) {
                n<List<? extends T>> nVar = this.f92797f;
                r0[] r0VarArr = ((e) e.this).f92795a;
                ArrayList arrayList = new ArrayList(r0VarArr.length);
                for (r0 r0Var : r0VarArr) {
                    arrayList.add(r0Var.d());
                }
                Result.Companion companion = Result.INSTANCE;
                nVar.resumeWith(Result.m50constructorimpl(arrayList));
            }
        }
    }

    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,119:1\n13309#2,2:120\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n88#1:120,2\n*E\n"})
    private final class b implements m {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final e<T>.a[] f92800b;

        public b(e<T>.a[] aVarArr) {
            this.f92800b = aVarArr;
        }

        @Override // kotlinx.coroutines.m
        public void a(@Nullable Throwable th) {
            b();
        }

        public final void b() {
            for (e<T>.a aVar : this.f92800b) {
                aVar.K().dispose();
            }
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f92800b + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull r0<? extends T>[] r0VarArr) {
        this.f92795a = r0VarArr;
        this.notCompletedCount$volatile = r0VarArr.length;
    }

    private final /* synthetic */ int d() {
        return this.notCompletedCount$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicIntegerFieldUpdater e() {
        return f92794b;
    }

    private final /* synthetic */ void f(int i10) {
        this.notCompletedCount$volatile = i10;
    }

    @Nullable
    public final Object c(@NotNull Continuation<? super List<? extends T>> continuation) {
        o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        int length = this.f92795a.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            r0 r0Var = this.f92795a[i10];
            r0Var.start();
            a aVar = new a(oVar);
            aVar.O(JobKt__JobKt.B(r0Var, false, false, aVar, 3, null));
            Unit unit = Unit.INSTANCE;
            aVarArr[i10] = aVar;
        }
        e<T>.b bVar = new b(aVarArr);
        for (int i11 = 0; i11 < length; i11++) {
            aVarArr[i11].N(bVar);
        }
        if (oVar.isCompleted()) {
            bVar.b();
        } else {
            q.c(oVar, bVar);
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }
}
