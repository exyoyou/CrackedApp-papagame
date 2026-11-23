package kotlinx.coroutines.debug.internal;

import java.util.List;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f92779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final CoroutineStackFrame f92780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f92781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final List<StackTraceElement> f92782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final String f92783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final Thread f92784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final CoroutineStackFrame f92785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final List<StackTraceElement> f92786h;

    public c(@NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl, @NotNull CoroutineContext coroutineContext) {
        this.f92779a = coroutineContext;
        this.f92780b = debugCoroutineInfoImpl.c();
        this.f92781c = debugCoroutineInfoImpl.f92742b;
        this.f92782d = debugCoroutineInfoImpl.d();
        this.f92783e = debugCoroutineInfoImpl.f();
        this.f92784f = debugCoroutineInfoImpl.lastObservedThread;
        this.f92785g = debugCoroutineInfoImpl.e();
        this.f92786h = debugCoroutineInfoImpl.g();
    }

    @Nullable
    public final CoroutineStackFrame a() {
        return this.f92780b;
    }

    @NotNull
    public final List<StackTraceElement> b() {
        return this.f92782d;
    }

    @Nullable
    public final CoroutineStackFrame c() {
        return this.f92785g;
    }

    @Nullable
    public final Thread d() {
        return this.f92784f;
    }

    public final long e() {
        return this.f92781c;
    }

    @NotNull
    public final String f() {
        return this.f92783e;
    }

    @JvmName(name = "lastObservedStackTrace")
    @NotNull
    public final List<StackTraceElement> g() {
        return this.f92786h;
    }

    @NotNull
    public final CoroutineContext getContext() {
        return this.f92779a;
    }
}
