package com.byazt.cv;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 15})
public class uj extends com.byazt.nc.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.yl.ve f12629c;

    public uj(com.byazt.yl.ve veVar) {
        this.f12629c = veVar;
    }

    @Override // com.byazt.nc.n
    public void cancelDownload() {
        com.byazt.yl.ve veVar = this.f12629c;
        if (veVar != null) {
            veVar.cancelDownload();
        }
    }

    @Override // com.byazt.nc.n
    public void changeDownloadStatus() {
        com.byazt.yl.ve veVar = this.f12629c;
        if (veVar != null) {
            if (veVar.getDownloadStatus() == 3) {
                this.f12629c.resumeAppDownload();
            } else if (this.f12629c.getDownloadStatus() == 2) {
                this.f12629c.pauseAppDownload();
            }
        }
    }
}
