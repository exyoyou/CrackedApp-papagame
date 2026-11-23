package kotlinx.coroutines;

import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final z0 f93853a = new z0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final CoroutineDispatcher f93854b = kotlinx.coroutines.scheduling.c.f93670h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final CoroutineDispatcher f93855c = c3.f92362b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final CoroutineDispatcher f93856d = kotlinx.coroutines.scheduling.b.f93668c;

    private z0() {
    }

    @NotNull
    public static final CoroutineDispatcher a() {
        return f93854b;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }

    @NotNull
    public static final CoroutineDispatcher c() {
        return f93856d;
    }

    @JvmStatic
    public static /* synthetic */ void d() {
    }

    @NotNull
    public static final e2 e() {
        return kotlinx.coroutines.internal.c0.f93483c;
    }

    @JvmStatic
    public static /* synthetic */ void f() {
    }

    @NotNull
    public static final CoroutineDispatcher g() {
        return f93855c;
    }

    @JvmStatic
    public static /* synthetic */ void h() {
    }

    @DelicateCoroutinesApi
    public final void i() {
        p0.f93618h.shutdown();
        kotlinx.coroutines.scheduling.c.f93670h.i0();
    }
}
