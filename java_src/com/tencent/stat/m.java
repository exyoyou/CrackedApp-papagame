package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
class m implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f83948a;

    m(k kVar) {
        this.f83948a = kVar;
    }

    @Override // com.tencent.stat.c
    public void a() {
        if (n.b().a() >= StatConfig.getMaxBatchReportCount()) {
            n.b().a(StatConfig.getMaxBatchReportCount());
        }
    }

    @Override // com.tencent.stat.c
    public void b() {
    }
}
