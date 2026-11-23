package bolts;

import java.util.Locale;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f427a;

    c(e eVar) {
        this.f427a = eVar;
    }

    public boolean a() {
        return this.f427a.h();
    }

    public d b(Runnable runnable) {
        return this.f427a.j(runnable);
    }

    public void c() throws CancellationException {
        this.f427a.k();
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.f427a.h()));
    }
}
