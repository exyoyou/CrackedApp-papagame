package com.byazt.tg;

import android.text.TextUtils;
import com.byazt.t.DownloadInfo;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.Downloader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1956, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static uj f20174c;
    public List<sp> tt;

    private uj() {
        ArrayList arrayList = new ArrayList();
        this.tt = arrayList;
        arrayList.add(new n());
        this.tt.add(new tt());
        this.tt.add(new ve());
    }

    public static uj c() {
        if (f20174c == null) {
            synchronized (sl.class) {
                if (f20174c == null) {
                    f20174c = new uj();
                }
            }
        }
        return f20174c;
    }

    public void c(com.byazt.dd.tt ttVar, int i10, x xVar, com.byazt.de.ve veVar) {
        DownloadInfo downloadInfoTt;
        List<sp> list = this.tt;
        if (list == null || list.size() == 0 || ttVar == null) {
            xVar.c(ttVar);
        }
        if (!TextUtils.isEmpty(ttVar.oz())) {
            downloadInfoTt = com.byazt.di.da.c(com.byazt.gq.t.getContext()).c(ttVar.oz(), null, true);
        } else {
            downloadInfoTt = com.byazt.di.da.c(com.byazt.gq.t.getContext()).tt(ttVar.c());
        }
        if (downloadInfoTt == null) {
            downloadInfoTt = Downloader.getInstance(com.byazt.gq.t.getContext()).getDownloadInfo(ttVar.my());
        }
        if (downloadInfoTt != null && AdBaseConstants.MIME_APK.equals(downloadInfoTt.getMimeType())) {
            if (new da().c(ttVar, i10, xVar)) {
                return;
            }
            Iterator<sp> it2 = this.tt.iterator();
            while (it2.hasNext()) {
                if (it2.next().c(ttVar, i10, xVar, veVar)) {
                    return;
                }
            }
            xVar.c(ttVar);
            return;
        }
        xVar.c(ttVar);
    }
}
