package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class g2 extends AbstractCoroutineContextElement implements v1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final g2 f93435b = new g2();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final String f93436c = "NonCancellable can be used only as an argument for 'withContext', direct usages of its API are prohibited";

    private g2() {
        super(v1.F1);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void c0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void d0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void e0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void f0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void g0() {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public static /* synthetic */ void z() {
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public kotlinx.coroutines.selects.c I() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    @NotNull
    public t J(@NotNull v vVar) {
        return h2.f93449b;
    }

    @Override // kotlinx.coroutines.v1
    @NotNull
    public Sequence<v1> K() {
        return SequencesKt__SequencesKt.emptySequence();
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    @NotNull
    public c1 M(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1) {
        return h2.f93449b;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    @NotNull
    public CancellationException O() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    @Nullable
    public Object R(@NotNull Continuation<? super Unit> continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean a(Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public void b(@Nullable CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        b(null);
    }

    @Override // kotlinx.coroutines.v1
    @Nullable
    public v1 getParent() {
        return null;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isCompleted() {
        return false;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public v1 k(@NotNull v1 v1Var) {
        return v1.a.j(this, v1Var);
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    @NotNull
    public c1 l(@NotNull Function1<? super Throwable, Unit> function1) {
        return h2.f93449b;
    }

    @Override // kotlinx.coroutines.v1
    @Deprecated(level = DeprecationLevel.WARNING, message = f93436c)
    public boolean start() {
        return false;
    }

    @NotNull
    public String toString() {
        return "NonCancellable";
    }
}
