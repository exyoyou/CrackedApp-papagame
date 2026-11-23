package com.byazt.nn;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.ar.AdDownloadModel;
import com.byazt.bv.BaseConstants;
import com.byazt.hu.u;
import com.byazt.nr.m;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1020, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f17510c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ConcurrentHashMap<Long, com.byazt.dd.tt> f17511n;
    public final ConcurrentHashMap<Long, DownloadModel> tt;
    public final ConcurrentHashMap<Long, DownloadController> uj;
    public final ConcurrentHashMap<Long, DownloadEventConfig> ve;

    @com.byazt.zqa.c(c = {0, 1, 1020, 464})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static a f17513c = new a();
    }

    public void a(long j10) {
        this.tt.remove(Long.valueOf(j10));
        this.ve.remove(Long.valueOf(j10));
        this.uj.remove(Long.valueOf(j10));
    }

    @NonNull
    public n n(long j10) {
        n nVar = new n();
        nVar.f17521c = j10;
        nVar.tt = c(j10);
        DownloadEventConfig downloadEventConfigTt = tt(j10);
        nVar.ve = downloadEventConfigTt;
        if (downloadEventConfigTt == null) {
            nVar.ve = new com.byazt.su.uj();
        }
        DownloadController downloadControllerVe = ve(j10);
        nVar.uj = downloadControllerVe;
        if (downloadControllerVe == null) {
            nVar.uj = new com.byazt.su.ve();
        }
        return nVar;
    }

    public com.byazt.dd.tt uj(long j10) {
        return this.f17511n.get(Long.valueOf(j10));
    }

    public DownloadController ve(long j10) {
        return this.uj.get(Long.valueOf(j10));
    }

    private a() {
        this.f17510c = false;
        this.tt = new ConcurrentHashMap<>();
        this.ve = new ConcurrentHashMap<>();
        this.uj = new ConcurrentHashMap<>();
        this.f17511n = new ConcurrentHashMap<>();
    }

    public void tt() {
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.nn.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f17510c) {
                    return;
                }
                synchronized (a.class) {
                    if (!a.this.f17510c) {
                        a.this.f17511n.putAll(i.c().tt());
                        a.this.f17510c = true;
                    }
                }
            }
        }, true);
    }

    public ConcurrentHashMap<Long, com.byazt.dd.tt> ve() {
        return this.f17511n;
    }

    public static a c() {
        return c.f17513c;
    }

    public DownloadEventConfig tt(long j10) {
        return this.ve.get(Long.valueOf(j10));
    }

    public void c(DownloadModel downloadModel) {
        if (downloadModel != null) {
            this.tt.put(Long.valueOf(downloadModel.getId()), downloadModel);
            if (downloadModel.getDeepLink() != null) {
                downloadModel.getDeepLink().setId(downloadModel.getId());
                downloadModel.getDeepLink().setPackageName(downloadModel.getPackageName());
            }
        }
    }

    public com.byazt.dd.tt tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.byazt.dd.tt ttVar : this.f17511n.values()) {
            if (ttVar != null && str.equals(ttVar.c())) {
                return ttVar;
            }
        }
        return null;
    }

    public void tt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        for (DownloadModel downloadModel : this.tt.values()) {
            if ((downloadModel instanceof AdDownloadModel) && TextUtils.equals(downloadModel.getDownloadUrl(), str)) {
                ((AdDownloadModel) downloadModel).setPackageName(str2);
            }
        }
    }

    public void c(long j10, DownloadEventConfig downloadEventConfig) {
        if (downloadEventConfig != null) {
            this.ve.put(Long.valueOf(j10), downloadEventConfig);
        }
    }

    public void c(long j10, DownloadController downloadController) {
        if (downloadController != null) {
            this.uj.put(Long.valueOf(j10), downloadController);
        }
    }

    public synchronized void c(com.byazt.dd.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        this.f17511n.put(Long.valueOf(ttVar.tt()), ttVar);
        i.c().c(ttVar);
    }

    public DownloadModel c(long j10) {
        return this.tt.get(Long.valueOf(j10));
    }

    public com.byazt.dd.tt c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.byazt.dd.tt ttVar : this.f17511n.values()) {
            if (ttVar != null && str.equals(ttVar.n())) {
                return ttVar;
            }
        }
        return null;
    }

    public com.byazt.dd.tt c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        for (com.byazt.dd.tt ttVar : this.f17511n.values()) {
            if (ttVar != null && ttVar.my() == downloadInfo.getId()) {
                return ttVar;
            }
        }
        if (!TextUtils.isEmpty(downloadInfo.getExtra())) {
            try {
                long jC = u.c(new JSONObject(downloadInfo.getExtra()), BaseConstants.EVENT_LABEL_EXTRA);
                if (jC != 0) {
                    for (com.byazt.dd.tt ttVar2 : this.f17511n.values()) {
                        if (ttVar2 != null && ttVar2.tt() == jC) {
                            return ttVar2;
                        }
                    }
                    com.byazt.dm.ve.c().c("getNativeModelByInfo");
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        for (com.byazt.dd.tt ttVar3 : this.f17511n.values()) {
            if (ttVar3 != null && TextUtils.equals(ttVar3.c(), downloadInfo.getUrl())) {
                return ttVar3;
            }
        }
        return null;
    }

    public com.byazt.dd.tt c(int i10) {
        for (com.byazt.dd.tt ttVar : this.f17511n.values()) {
            if (ttVar != null && ttVar.my() == i10) {
                return ttVar;
            }
        }
        return null;
    }

    @NonNull
    public Map<Long, com.byazt.dd.tt> c(String str, String str2) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (com.byazt.dd.tt ttVar : this.f17511n.values()) {
                if (ttVar != null && TextUtils.equals(ttVar.c(), str)) {
                    ttVar.tt(str2);
                    map.put(Long.valueOf(ttVar.tt()), ttVar);
                }
            }
        }
        return map;
    }

    public synchronized void c(List<Long> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Long> it2 = list.iterator();
        while (it2.hasNext()) {
            long jLongValue = it2.next().longValue();
            arrayList.add(String.valueOf(jLongValue));
            this.f17511n.remove(Long.valueOf(jLongValue));
        }
        i.c().c((List<String>) arrayList);
    }
}
