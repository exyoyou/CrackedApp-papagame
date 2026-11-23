package com.byazt.gq;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f14658c;
    public com.byazt.nn.n tt;
    public AtomicBoolean ve = new AtomicBoolean(false);
    public AtomicBoolean uj = new AtomicBoolean(false);

    public uj(Handler handler) {
        this.f14658c = handler;
    }

    public static long tt() {
        if (t.u() != null) {
            return t.u().c();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long uj() {
        return com.byazt.hu.u.tt(0L);
    }

    private void tt(com.byazt.dd.tt ttVar, JSONObject jSONObject, long j10, long j11) {
        ttVar.t("1");
        com.byazt.nn.i.c().c(ttVar);
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(j11 - j10));
        } catch (JSONException e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().c("cleanspace_download_after_quite_clean", jSONObject, ttVar);
    }

    public void c(com.byazt.nn.n nVar) {
        this.tt = nVar;
    }

    public boolean c() {
        return this.uj.get();
    }

    public void c(boolean z10) {
        this.uj.set(z10);
    }

    public void c(final int i10, final long j10, long j11, final n.c cVar) {
        this.uj.set(false);
        if (cVar == null) {
            return;
        }
        if (com.byazt.hu.n.a(i10) && com.byazt.hu.n.n(i10)) {
            long jVe = com.byazt.hu.n.ve(i10);
            this.ve.set(false);
            final String downloadUrl = this.tt.tt.getDownloadUrl();
            com.byazt.dd.tt ttVarTt = com.byazt.nn.a.c().tt(downloadUrl);
            if (ttVarTt == null) {
                com.byazt.nn.n nVar = this.tt;
                ttVarTt = new com.byazt.dd.tt(nVar.tt, nVar.ve, nVar.uj, 0);
                com.byazt.nn.a.c().c(ttVarTt);
            }
            final com.byazt.dd.tt ttVar = ttVarTt;
            ttVar.n(false);
            if (t.u() != null) {
                t.u();
                ttVar.tt();
            }
            com.byazt.ie.uj.c().c(ttVar.c());
            boolean zUj = com.byazt.hu.n.uj(i10);
            if (j11 > 0) {
                c(i10, downloadUrl, j11, ttVar, j10, cVar);
            } else if (zUj) {
                c(downloadUrl, ttVar, new n.tt() { // from class: com.byazt.gq.uj.1
                    @Override // com.byazt.gq.n.tt
                    public void c(long j12) throws Throwable {
                        uj.this.c(i10, downloadUrl, j12, ttVar, j10, cVar);
                    }
                });
            } else {
                jVe = 0;
            }
            this.f14658c.postDelayed(new Runnable() { // from class: com.byazt.gq.uj.2
                @Override // java.lang.Runnable
                public void run() {
                    if (uj.this.ve.get()) {
                        return;
                    }
                    uj.this.ve.set(true);
                    cVar.c();
                }
            }, jVe);
            return;
        }
        cVar.c();
    }

    private void c(String str, com.byazt.dd.tt ttVar, final n.tt ttVar2) {
        if (ttVar2 == null) {
            return;
        }
        com.byazt.no.tt.c(str, new com.byazt.hs.da() { // from class: com.byazt.gq.uj.3
            @Override // com.byazt.hs.da
            public void c(Map<String, String> map) {
                if (uj.this.ve.get()) {
                    return;
                }
                uj.this.ve.set(true);
                long jC = uj.this.c(map);
                if (jC > 0) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("apk_size", Long.valueOf(jC));
                        jSONObject.putOpt("available_space", Long.valueOf(uj.uj()));
                    } catch (JSONException e10) {
                        m.c(e10);
                    }
                }
                ttVar2.c(jC);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long c(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if ("content-length".equalsIgnoreCase(key)) {
                        return Long.parseLong(value);
                    }
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str, long j10, final com.byazt.dd.tt ttVar, long j11, final n.c cVar) throws Throwable {
        this.ve.set(true);
        boolean zC = false;
        if (j10 > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("apk_size", Long.valueOf(j10));
            } catch (JSONException e10) {
                m.c(e10);
            }
            long jLongValue = (Double.valueOf((com.byazt.hu.n.c(i10) + 1.0d) * j10).longValue() + com.byazt.hu.n.tt(i10)) - j11;
            long jUj = uj();
            if (jUj < jLongValue) {
                c(ttVar, jSONObject, jLongValue, jUj);
                c(ttVar);
                long jUj2 = uj();
                if (jUj2 < jLongValue) {
                    ttVar.uj(true);
                    final String strC = ttVar.c();
                    com.byazt.ie.uj.c().c(strC, new com.byazt.ie.n() { // from class: com.byazt.gq.uj.4
                    });
                    zC = c(i10, ttVar, str, jLongValue);
                    if (zC) {
                        ttVar.n(true);
                    }
                } else {
                    tt(ttVar, jSONObject, jUj, jUj2);
                }
            }
        }
        if (zC) {
            return;
        }
        this.f14658c.post(new Runnable() { // from class: com.byazt.gq.uj.5
            @Override // java.lang.Runnable
            public void run() {
                cVar.c();
            }
        });
    }

    private boolean c(int i10, @NonNull com.byazt.dd.tt ttVar, String str, long j10) {
        if (!com.byazt.hu.n.a(i10)) {
            return false;
        }
        if (t.u() != null) {
            return t.u().c(i10, str, true, j10);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_dialog_result", 3);
        } catch (JSONException e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().c("cleanspace_window_show", jSONObject, ttVar);
        return false;
    }

    public static boolean c(final DownloadInfo downloadInfo, long j10) {
        int id2 = downloadInfo.getId();
        boolean zC = false;
        if (!com.byazt.hu.n.a(id2)) {
            return false;
        }
        if (t.u() != null && (zC = t.u().c(id2, downloadInfo.getUrl(), false, j10))) {
            com.byazt.ie.uj.c().c(downloadInfo.getUrl(), new com.byazt.ie.n() { // from class: com.byazt.gq.uj.6
            });
        }
        return zC;
    }

    public static JSONObject c(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("clean_space_install_params", str);
        } catch (JSONException e10) {
            m.c(e10);
        }
        return jSONObject;
    }

    public static void c(int i10) {
        if (com.byazt.hu.n.a(i10) && t.u() != null && t.u().tt()) {
            t.u();
        }
    }

    private static void c(com.byazt.dd.tt ttVar) throws Throwable {
        long jUj = uj();
        if (t.u() != null) {
            t.u();
        }
        com.byazt.ie.ve.c();
        com.byazt.ie.ve.tt();
        if (com.byazt.hu.n.sp(ttVar.my())) {
            com.byazt.ie.ve.c(t.getContext());
        }
        long jUj2 = uj();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(jUj2 - jUj));
        } catch (JSONException e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().c("clean_quite_finish", jSONObject, ttVar);
    }

    private void c(com.byazt.dd.tt ttVar, JSONObject jSONObject, long j10, long j11) {
        try {
            jSONObject.putOpt("available_space", Long.valueOf(j11));
            jSONObject.putOpt("apk_download_need_size", Long.valueOf(j10));
        } catch (JSONException e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().c("clean_space_no_enough_for_download", jSONObject, ttVar);
    }
}
