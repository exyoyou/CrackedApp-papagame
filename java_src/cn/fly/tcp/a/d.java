package cn.fly.tcp.a;

/* JADX INFO: loaded from: classes7.dex */
public class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tcp.e.a f1532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cn.fly.tcp.e.b f1533b;

    public d(cn.fly.tcp.e.a aVar, cn.fly.tcp.e.b bVar) {
        this.f1532a = aVar;
        this.f1533b = bVar;
    }

    @Override // cn.fly.tcp.a.b
    public void a(a aVar, cn.fly.tcp.b.a aVar2) {
        this.f1533b.a(aVar, aVar2);
    }

    @Override // cn.fly.tcp.a.b
    public void a(a aVar, Throwable th) {
        cn.fly.tcp.f.c cVarA = cn.fly.tcp.f.c.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TP exceptionCaught : ");
        sb2.append(th != null ? th.getMessage() : "");
        cVarA.b(sb2.toString());
    }

    @Override // cn.fly.tcp.a.b
    public void a(a aVar) {
        cn.fly.tcp.f.c.a().b("TP sessionOpened");
    }

    @Override // cn.fly.tcp.a.b
    public void a(a aVar, boolean z10) {
        cn.fly.tcp.f.c.a().b("TP sessionClosed, recon: " + z10);
        this.f1532a.l();
        cn.fly.tcp.b.a().a(z10);
    }
}
