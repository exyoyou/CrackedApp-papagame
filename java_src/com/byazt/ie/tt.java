package com.byazt.ie;

import com.byazt.gq.t;
import com.byazt.hu.u;
import com.byazt.nn.a;
import com.byazt.nn.i;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.Downloader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1041, 13})
public class tt implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DownloadInfo f15305c;

    public tt(DownloadInfo downloadInfo) {
        this.f15305c = downloadInfo;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        final com.byazt.dd.tt ttVarC;
        if (this.f15305c == null || (ttVarC = a.c().c(this.f15305c)) == null) {
            return;
        }
        com.byazt.zn.c.c().c("cleanspace_task", ttVarC);
        long jLongValue = Double.valueOf((com.byazt.hu.n.c(this.f15305c.getId()) + 1.0d) * this.f15305c.getTotalBytes()).longValue() - this.f15305c.getCurBytes();
        long jTt = u.tt(0L);
        if (t.u() != null) {
            t.u();
        }
        ve.c();
        ve.tt();
        if (com.byazt.hu.n.sp(ttVarC.my())) {
            ve.c(t.getContext());
        }
        long jTt2 = u.tt(0L);
        if (jTt2 >= jLongValue) {
            ttVarC.t("1");
            i.c().c(ttVarC);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("quite_clean_size", Long.valueOf(jTt2 - jTt));
            } catch (JSONException e10) {
                m.c(e10);
            }
            com.byazt.zn.c.c().c("cleanspace_download_after_quite_clean", jSONObject, ttVarC);
            Downloader.getInstance(t.getContext()).restart(this.f15305c.getId());
            return;
        }
        if (t.u() != null) {
            ttVarC.uj(false);
            uj.c().c(ttVarC.c(), new n() { // from class: com.byazt.ie.tt.1
            });
            if (t.u().c(this.f15305c.getId(), this.f15305c.getUrl(), true, jLongValue)) {
                ttVarC.n(true);
                return;
            }
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("show_dialog_result", 3);
        } catch (JSONException e11) {
            m.c(e11);
        }
        com.byazt.zn.c.c().c("cleanspace_window_show", jSONObject2, ttVarC);
    }
}
