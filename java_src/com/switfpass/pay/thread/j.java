package com.switfpass.pay.thread;

/* JADX INFO: loaded from: classes2.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ b f82703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ e f82704c;

    j(b bVar, e eVar) {
        this.f82703b = bVar;
        this.f82704c = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objA;
        this.f82703b.b(new k(this.f82704c));
        e eVar = this.f82704c;
        if (eVar != null) {
            eVar.onPreExecute();
        }
        try {
            objA = this.f82703b.a();
        } catch (Exception e10) {
            e10.printStackTrace();
            objA = null;
        }
        e eVar2 = this.f82704c;
        if (eVar2 != null) {
            if (objA == null || !(objA instanceof Exception)) {
                eVar2.onSucceed(objA);
                return;
            }
            eVar2.onError("发送错误啦" + ((Exception) objA).getMessage());
        }
    }
}
