package kotlinx.coroutines;

import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f93628a = kotlinx.coroutines.internal.t0.f("kotlinx.coroutines.main.delay", false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final t0 f93629b = c();

    @NotNull
    public static final t0 a() {
        return f93629b;
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final t0 c() {
        if (!f93628a) {
            return p0.f93618h;
        }
        e2 e2VarE = z0.e();
        return (kotlinx.coroutines.internal.d0.d(e2VarE) || !(e2VarE instanceof t0)) ? p0.f93618h : (t0) e2VarE;
    }
}
