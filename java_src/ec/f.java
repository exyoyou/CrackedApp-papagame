package ec;

/* JADX INFO: loaded from: classes.dex */
public class f implements gc.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kwai.a.e f90896a;

    public f(kwai.a.e eVar) {
        this.f90896a = eVar;
    }

    @Override // gc.d
    public void a(int i10, String str) {
    }

    @Override // gc.d
    public void a(fc.c cVar) {
        fc.c.b bVar;
        kc.a.c("TurboSDK", "request global success");
        if (cVar == null || (bVar = cVar.f91189c) == null) {
            return;
        }
        String str = bVar.f91191a;
        kwai.a.e.f93866k = str;
        c.d(this.f90896a.f93873c, "ks_global_id", str);
    }
}
