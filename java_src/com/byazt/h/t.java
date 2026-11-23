package com.byazt.h;

import androidx.annotation.NonNull;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 66})
public class t implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f14843c;
    public final com.byazt.t.n tt;
    public final n ve;

    public t(DownloadInfo downloadInfo, tt ttVar, i iVar) throws BaseException {
        this.f14843c = iVar;
        this.tt = c(downloadInfo, iVar);
        this.ve = new x(ttVar, this);
    }

    public n c() {
        return this.ve;
    }

    public i n() {
        return this.f14843c;
    }

    @Override // com.byazt.h.n
    public void tt(@NonNull c cVar) throws IOException {
        this.tt.c(cVar.f14806c, 0, cVar.ve);
        this.f14843c.tt(cVar.ve);
    }

    public void uj() {
        com.byazt.w.a.c(this.tt);
    }

    public void ve() throws IOException {
        this.tt.ve();
    }

    private com.byazt.t.n c(DownloadInfo downloadInfo, i iVar) throws BaseException {
        com.byazt.t.n nVarC = com.byazt.w.a.c(downloadInfo, downloadInfo.getTempPath(), downloadInfo.getTempName(), com.byazt.k.c.c(downloadInfo.getId()).c("flush_buffer_size_byte", -1));
        try {
            nVarC.c(iVar.n());
            return nVarC;
        } catch (IOException e10) {
            throw new BaseException(1054, e10);
        }
    }

    public void tt() throws IOException {
        this.tt.tt();
    }
}
