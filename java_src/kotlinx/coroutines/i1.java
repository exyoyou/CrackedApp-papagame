package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class i1 extends g1 {
    @NotNull
    protected abstract Thread p0();

    protected void q0(long j10, @NotNull h1.c cVar) {
        p0.f93618h.G0(j10, cVar);
    }

    protected final void r0() {
        Unit unit;
        Thread threadP0 = p0();
        if (Thread.currentThread() != threadP0) {
            b bVar = c.f92358a;
            if (bVar != null) {
                bVar.g(threadP0);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                LockSupport.unpark(threadP0);
            }
        }
    }
}
