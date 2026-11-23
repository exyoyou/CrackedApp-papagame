package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BuildersKt__BuildersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
public final /* synthetic */ class i {
    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public static final <T> T a(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        g1 g1VarA;
        CoroutineContext coroutineContextE;
        Thread threadCurrentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE);
        if (continuationInterceptor == null) {
            g1VarA = v2.f93840a.b();
            coroutineContextE = CoroutineContextKt.e(o1.f93610b, coroutineContext.plus(g1VarA));
        } else {
            g1 g1Var = continuationInterceptor instanceof g1 ? (g1) continuationInterceptor : null;
            if (g1Var == null) {
                g1VarA = v2.f93840a.a();
            } else {
                g1 g1Var2 = g1Var.o0() ? g1Var : null;
                if (g1Var2 == null) {
                    g1VarA = v2.f93840a.a();
                } else {
                    g1VarA = g1Var2;
                }
            }
            coroutineContextE = CoroutineContextKt.e(o1.f93610b, coroutineContext);
        }
        f fVar = new f(coroutineContextE, threadCurrentThread, g1VarA);
        fVar.J1(CoroutineStart.DEFAULT, fVar, function2);
        return (T) fVar.K1();
    }

    public static /* synthetic */ Object b(CoroutineContext coroutineContext, Function2 function2, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return h.f(coroutineContext, function2);
    }
}
