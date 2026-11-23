package kotlinx.coroutines;

import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,675:1\n1313#2,2:676\n1313#2,2:678\n1313#2,2:680\n1313#2,2:682\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n511#1:676,2\n525#1:678,2\n619#1:680,2\n643#1:682,2\n*E\n"})
public final /* synthetic */ class JobKt__JobKt {
    @NotNull
    public static final c1 A(@NotNull v1 v1Var, boolean z10, boolean z11, @NotNull s1 s1Var) {
        return v1Var instanceof JobSupport ? ((JobSupport) v1Var).R0(z10, z11, s1Var) : v1Var.M(z10, z11, new JobKt__JobKt$invokeOnCompletion$1(s1Var));
    }

    public static /* synthetic */ c1 B(v1 v1Var, boolean z10, boolean z11, s1 s1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        return y1.C(v1Var, z10, z11, s1Var);
    }

    public static final boolean C(@NotNull CoroutineContext coroutineContext) {
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var != null) {
            return v1Var.isActive();
        }
        return true;
    }

    private static final Throwable D(Throwable th, v1 v1Var) {
        return th == null ? new JobCancellationException("Job was cancelled", null, v1Var) : th;
    }

    @NotNull
    public static final z a(@Nullable v1 v1Var) {
        return new x1(v1Var);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    @JvmName(name = "Job")
    public static final /* synthetic */ v1 b(v1 v1Var) {
        return y1.a(v1Var);
    }

    public static /* synthetic */ z c(v1 v1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            v1Var = null;
        }
        return y1.a(v1Var);
    }

    public static /* synthetic */ v1 d(v1 v1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            v1Var = null;
        }
        return b(v1Var);
    }

    public static final void f(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var != null) {
            v1Var.b(cancellationException);
        }
    }

    public static final void g(@NotNull v1 v1Var, @NotNull String str, @Nullable Throwable th) {
        v1Var.b(l1.a(str, th));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ boolean h(CoroutineContext coroutineContext, Throwable th) throws Throwable {
        CoroutineContext.Element element = coroutineContext.get(v1.F1);
        JobSupport jobSupport = element instanceof JobSupport ? (JobSupport) element : null;
        if (jobSupport == null) {
            return false;
        }
        jobSupport.l0(D(th, jobSupport));
        return true;
    }

    public static /* synthetic */ void i(CoroutineContext coroutineContext, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        y1.f(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void j(v1 v1Var, String str, Throwable th, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th = null;
        }
        y1.g(v1Var, str, th);
    }

    public static /* synthetic */ boolean k(CoroutineContext coroutineContext, Throwable th, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        return h(coroutineContext, th);
    }

    @Nullable
    public static final Object l(@NotNull v1 v1Var, @NotNull Continuation<? super Unit> continuation) {
        v1.a.b(v1Var, null, 1, null);
        Object objR = v1Var.R(continuation);
        return objR == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void n(CoroutineContext coroutineContext, Throwable th) throws Throwable {
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var == null) {
            return;
        }
        for (v1 v1Var2 : v1Var.K()) {
            JobSupport jobSupport = v1Var2 instanceof JobSupport ? (JobSupport) v1Var2 : null;
            if (jobSupport != null) {
                jobSupport.l0(D(th, v1Var));
            }
        }
    }

    public static final void o(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Sequence<v1> sequenceK;
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var == null || (sequenceK = v1Var.K()) == null) {
            return;
        }
        Iterator<v1> it2 = sequenceK.iterator();
        while (it2.hasNext()) {
            it2.next().b(cancellationException);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final /* synthetic */ void q(v1 v1Var, Throwable th) throws Throwable {
        for (v1 v1Var2 : v1Var.K()) {
            JobSupport jobSupport = v1Var2 instanceof JobSupport ? (JobSupport) v1Var2 : null;
            if (jobSupport != null) {
                jobSupport.l0(D(th, v1Var));
            }
        }
    }

    public static final void r(@NotNull v1 v1Var, @Nullable CancellationException cancellationException) {
        Iterator<v1> it2 = v1Var.K().iterator();
        while (it2.hasNext()) {
            it2.next().b(cancellationException);
        }
    }

    public static /* synthetic */ void s(CoroutineContext coroutineContext, Throwable th, int i10, Object obj) throws Throwable {
        if ((i10 & 1) != 0) {
            th = null;
        }
        n(coroutineContext, th);
    }

    public static /* synthetic */ void t(CoroutineContext coroutineContext, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        y1.o(coroutineContext, cancellationException);
    }

    public static /* synthetic */ void u(v1 v1Var, Throwable th, int i10, Object obj) throws Throwable {
        if ((i10 & 1) != 0) {
            th = null;
        }
        q(v1Var, th);
    }

    public static /* synthetic */ void v(v1 v1Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        y1.r(v1Var, cancellationException);
    }

    @NotNull
    public static final c1 w(@NotNull v1 v1Var, @NotNull c1 c1Var) {
        return B(v1Var, false, false, new e1(c1Var), 3, null);
    }

    public static final void x(@NotNull CoroutineContext coroutineContext) {
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var != null) {
            y1.A(v1Var);
        }
    }

    public static final void y(@NotNull v1 v1Var) {
        if (!v1Var.isActive()) {
            throw v1Var.O();
        }
    }

    @NotNull
    public static final v1 z(@NotNull CoroutineContext coroutineContext) {
        v1 v1Var = (v1) coroutineContext.get(v1.F1);
        if (v1Var != null) {
            return v1Var;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }
}
