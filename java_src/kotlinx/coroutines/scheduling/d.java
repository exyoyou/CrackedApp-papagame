package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
public class d extends ExecutorCoroutineDispatcher {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f93671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f93672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f93673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final String f93674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private CoroutineScheduler f93675g;

    public /* synthetic */ d(int i10, int i11, long j10, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, j10, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public static /* synthetic */ CoroutineDispatcher d0(d dVar, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: blocking");
        }
        if ((i11 & 1) != 0) {
            i10 = 16;
        }
        return dVar.c0(i10);
    }

    private final CoroutineScheduler e0() {
        return new CoroutineScheduler(this.f93671c, this.f93672d, this.f93673e, this.f93674f);
    }

    @NotNull
    public final CoroutineDispatcher c0(int i10) {
        if (i10 > 0) {
            return new f(this, i10, null, 1);
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i10).toString());
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        this.f93675g.close();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.n(this.f93675g, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            p0.f93618h.dispatch(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.n(this.f93675g, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            p0.f93618h.dispatchYield(coroutineContext, runnable);
        }
    }

    public final void f0(@NotNull Runnable runnable, @NotNull k kVar, boolean z10) {
        try {
            this.f93675g.m(runnable, kVar, z10);
        } catch (RejectedExecutionException unused) {
            p0.f93618h.v0(this.f93675g.g(runnable, kVar));
        }
    }

    @NotNull
    public final CoroutineDispatcher g0(int i10) {
        if (!(i10 > 0)) {
            throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i10).toString());
        }
        if (i10 <= this.f93671c) {
            return new f(this, i10, null, 0);
        }
        throw new IllegalArgumentException(("Expected parallelism level lesser than core pool size (" + this.f93671c + "), but have " + i10).toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return super.toString() + "[scheduler = " + this.f93675g + ']';
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor z() {
        return this.f93675g;
    }

    public d(int i10, int i11, long j10, @NotNull String str) {
        this.f93671c = i10;
        this.f93672d = i11;
        this.f93673e = j10;
        this.f93674f = str;
        this.f93675g = e0();
    }

    public /* synthetic */ d(int i10, int i11, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? n.f93694c : i10, (i12 & 2) != 0 ? n.f93695d : i11, (i12 & 4) != 0 ? n.f93692a : str);
    }

    public d(int i10, int i11, @NotNull String str) {
        this(i10, i11, n.f93696e, str);
    }

    public /* synthetic */ d(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? n.f93694c : i10, (i12 & 2) != 0 ? n.f93695d : i11);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility for Ktor 1.0-beta")
    public /* synthetic */ d(int i10, int i11) {
        this(i10, i11, n.f93696e, null, 8, null);
    }
}
