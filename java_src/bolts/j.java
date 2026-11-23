package bolts;

/* JADX INFO: loaded from: classes7.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h<?> f506a;

    public j(h<?> hVar) {
        this.f506a = hVar;
    }

    public void a() {
        this.f506a = null;
    }

    protected void finalize() throws Throwable {
        h.q qVarC;
        try {
            h<?> hVar = this.f506a;
            if (hVar != null && (qVarC = h.C()) != null) {
                qVarC.a(hVar, new UnobservedTaskException(hVar.A()));
            }
        } finally {
            super.finalize();
        }
    }
}
