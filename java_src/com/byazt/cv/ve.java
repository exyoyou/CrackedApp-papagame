package com.byazt.cv;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 54})
public class ve extends com.byazt.yh.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.yl.ve f12630c;

    public ve(com.byazt.yl.ve veVar) {
        this.f12630c = veVar;
    }

    @Override // com.byazt.yh.c
    public String getVideoUrl() {
        com.byazt.yl.ve veVar = this.f12630c;
        return veVar != null ? veVar.getVideoUrl() : "";
    }

    @Override // com.byazt.yh.c
    public void reportVideoAutoStart() {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().tt();
    }

    @Override // com.byazt.yh.c
    public void reportVideoBreak(long j10) {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().ve(j10);
    }

    @Override // com.byazt.yh.c
    public void reportVideoContinue(long j10) {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().tt(j10);
    }

    @Override // com.byazt.yh.c
    public void reportVideoError(long j10, int i10, int i11) {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().c(j10, i10, i11);
    }

    @Override // com.byazt.yh.c
    public void reportVideoFinish() {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().c();
    }

    @Override // com.byazt.yh.c
    public void reportVideoPause(long j10) {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().c(j10);
    }

    @Override // com.byazt.yh.c
    public void reportVideoStart() {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().tt();
    }

    @Override // com.byazt.yh.c
    public void reportVideoStartError(int i10, int i11) {
        com.byazt.yl.ve veVar = this.f12630c;
        if (veVar == null || veVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.f12630c.getGMNativeCustomVideoReporter().c(i10, i11);
    }
}
