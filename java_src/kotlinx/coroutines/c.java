package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static b f92358a;

    @InlineOnly
    private static final long c() {
        b bVar = f92358a;
        return bVar != null ? bVar.a() : System.currentTimeMillis();
    }

    public static final void d(@Nullable b bVar) {
        f92358a = bVar;
    }

    @InlineOnly
    private static final long e() {
        b bVar = f92358a;
        return bVar != null ? bVar.b() : System.nanoTime();
    }

    @InlineOnly
    private static final void f(Object obj, long j10) {
        Unit unit;
        b bVar = f92358a;
        if (bVar != null) {
            bVar.c(obj, j10);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LockSupport.parkNanos(obj, j10);
        }
    }

    @InlineOnly
    private static final void g() {
        b bVar = f92358a;
        if (bVar != null) {
            bVar.d();
        }
    }

    @InlineOnly
    private static final void h() {
        b bVar = f92358a;
        if (bVar != null) {
            bVar.e();
        }
    }

    @InlineOnly
    private static final void i() {
        b bVar = f92358a;
        if (bVar != null) {
            bVar.f();
        }
    }

    @InlineOnly
    private static final void j(Thread thread) {
        Unit unit;
        b bVar = f92358a;
        if (bVar != null) {
            bVar.g(thread);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LockSupport.unpark(thread);
        }
    }

    @InlineOnly
    private static final void k() {
        b bVar = f92358a;
        if (bVar != null) {
            bVar.h();
        }
    }

    @InlineOnly
    private static final Runnable l(Runnable runnable) {
        Runnable runnableI;
        b bVar = f92358a;
        return (bVar == null || (runnableI = bVar.i(runnable)) == null) ? runnable : runnableI;
    }
}
