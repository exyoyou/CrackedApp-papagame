package bolts;

/* JADX INFO: loaded from: classes7.dex */
public class i<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<TResult> f505a = new h<>();

    public h<TResult> a() {
        return this.f505a;
    }

    public void b() {
        if (!d()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void c(Exception exc) {
        if (!e(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }

    public boolean d() {
        return this.f505a.R();
    }

    public boolean e(Exception exc) {
        return this.f505a.S(exc);
    }

    public boolean f(TResult tresult) {
        return this.f505a.T(tresult);
    }

    public void setResult(TResult tresult) {
        if (!f(tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }
}
