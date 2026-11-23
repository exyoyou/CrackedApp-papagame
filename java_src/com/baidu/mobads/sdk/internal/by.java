package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class by implements ck.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ bx f7666a;

    by(bx bxVar) {
        this.f7666a = bxVar;
    }

    @Override // com.baidu.mobads.sdk.internal.ck.a
    public void a(bz bzVar) {
        this.f7666a.a(cb.f7689k, bzVar, "download apk successfully, downloader exit");
        bx unused = bx.f7656h = null;
    }

    @Override // com.baidu.mobads.sdk.internal.ck.a
    public void b(bz bzVar) {
        this.f7666a.a(cb.f7690l, bzVar, "downloadApk failed");
    }
}
