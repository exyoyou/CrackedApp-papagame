package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.c;
import kotlinx.coroutines.flow.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,128:1\n24#2,4:129\n24#2,4:134\n24#2,4:140\n16#3:133\n16#3:138\n16#3:144\n1#4:139\n13309#5,2:145\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n26#1:129,4\n41#1:134,4\n72#1:140,4\n26#1:133\n41#1:138\n72#1:144\n91#1:145,2\n*E\n"})
public abstract class a<S extends c<?>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private S[] f93386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f93387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f93388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private o f93389e;

    @NotNull
    public final u<Integer> e() {
        o oVar;
        synchronized (this) {
            oVar = this.f93389e;
            if (oVar == null) {
                oVar = new o(this.f93387c);
                this.f93389e = oVar;
            }
        }
        return oVar;
    }

    @NotNull
    protected final S i() {
        S s10;
        o oVar;
        synchronized (this) {
            S[] sArr = this.f93386b;
            if (sArr == null) {
                sArr = (S[]) k(2);
                this.f93386b = sArr;
            } else if (this.f93387c >= sArr.length) {
                Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
                this.f93386b = (S[]) ((c[]) objArrCopyOf);
                sArr = (S[]) ((c[]) objArrCopyOf);
            }
            int i10 = this.f93388d;
            do {
                s10 = sArr[i10];
                if (s10 == null) {
                    s10 = (S) j();
                    sArr[i10] = s10;
                }
                i10++;
                if (i10 >= sArr.length) {
                    i10 = 0;
                }
                Intrinsics.checkNotNull(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            } while (!s10.a(this));
            this.f93388d = i10;
            this.f93387c++;
            oVar = this.f93389e;
        }
        if (oVar != null) {
            oVar.e0(1);
        }
        return s10;
    }

    @NotNull
    protected abstract S j();

    @NotNull
    protected abstract S[] k(int i10);

    protected final void l(@NotNull Function1<? super S, Unit> function1) {
        c[] cVarArr;
        if (this.f93387c == 0 || (cVarArr = this.f93386b) == null) {
            return;
        }
        for (c cVar : cVarArr) {
            if (cVar != null) {
                function1.invoke(cVar);
            }
        }
    }

    protected final void m(@NotNull S s10) {
        o oVar;
        int i10;
        Continuation<Unit>[] continuationArrB;
        synchronized (this) {
            int i11 = this.f93387c - 1;
            this.f93387c = i11;
            oVar = this.f93389e;
            if (i11 == 0) {
                this.f93388d = 0;
            }
            Intrinsics.checkNotNull(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            continuationArrB = s10.b(this);
        }
        for (Continuation<Unit> continuation : continuationArrB) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m50constructorimpl(Unit.INSTANCE));
            }
        }
        if (oVar != null) {
            oVar.e0(-1);
        }
    }

    protected final int n() {
        return this.f93387c;
    }

    @Nullable
    protected final S[] o() {
        return this.f93386b;
    }
}
