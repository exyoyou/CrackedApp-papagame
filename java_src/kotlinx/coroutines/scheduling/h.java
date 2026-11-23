package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class h extends ExecutorCoroutineDispatcher {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f93683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f93684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f93685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final String f93686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private CoroutineScheduler f93687g;

    public h() {
        this(0, 0, 0L, null, 15, null);
    }

    private final CoroutineScheduler c0() {
        return new CoroutineScheduler(this.f93683c, this.f93684d, this.f93685e, this.f93686f);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        this.f93687g.close();
    }

    public final void d0(@NotNull Runnable runnable, @NotNull k kVar, boolean z10) {
        this.f93687g.m(runnable, kVar, z10);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        CoroutineScheduler.n(this.f93687g, runnable, null, false, 6, null);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        CoroutineScheduler.n(this.f93687g, runnable, null, true, 2, null);
    }

    public final void e0() {
        g0();
    }

    public final synchronized void f0(long j10) {
        this.f93687g.i0(j10);
    }

    public final synchronized void g0() {
        this.f93687g.i0(1000L);
        this.f93687g = c0();
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor z() {
        return this.f93687g;
    }

    public /* synthetic */ h(int i10, int i11, long j10, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? n.f93694c : i10, (i12 & 2) != 0 ? n.f93695d : i11, (i12 & 4) != 0 ? n.f93696e : j10, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public h(int i10, int i11, long j10, @NotNull String str) {
        this.f93683c = i10;
        this.f93684d = i11;
        this.f93685e = j10;
        this.f93686f = str;
        this.f93687g = c0();
    }
}
