package kotlinx.coroutines;

import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
public final class v2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final v2 f93840a = new v2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final ThreadLocal<g1> f93841b = kotlinx.coroutines.internal.y0.b(new kotlinx.coroutines.internal.q0("ThreadLocalEventLoop"));

    private v2() {
    }

    @Nullable
    public final g1 a() {
        return f93841b.get();
    }

    @NotNull
    public final g1 b() {
        ThreadLocal<g1> threadLocal = f93841b;
        g1 g1Var = threadLocal.get();
        if (g1Var != null) {
            return g1Var;
        }
        g1 g1VarA = j1.a();
        threadLocal.set(g1VarA);
        return g1VarA;
    }

    public final void c() {
        f93841b.set(null);
    }

    public final void d(@NotNull g1 g1Var) {
        f93841b.set(g1Var);
    }
}
