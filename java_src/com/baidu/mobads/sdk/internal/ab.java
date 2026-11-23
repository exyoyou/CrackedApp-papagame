package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class ab implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f7390a;

    ab(aa aaVar) {
        this.f7390a = aaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7390a.a("加载dex超过5秒");
    }
}
