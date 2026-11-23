package ec;

/* JADX INFO: loaded from: classes.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ kwai.a.e f90894b;

    public d(kwai.a.e eVar) {
        this.f90894b = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        kwai.a.e eVar = this.f90894b;
        if (eVar.c()) {
            eVar.f93878h.postDelayed(new e(eVar), 10000L);
        } else {
            eVar.f();
        }
    }
}
