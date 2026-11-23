package com.byazt.by;

import android.text.TextUtils;
import com.byazt.bwm.sp;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f12155c;
    public volatile com.byazt.it.ve tt = com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_dynamic_tmpl_config");
    public volatile com.byazt.it.ve ve = com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_dynamic_tmpl_config_v3");

    public static tt c() {
        if (f12155c == null) {
            synchronized (tt.class) {
                if (f12155c == null) {
                    f12155c = new tt();
                }
            }
        }
        return f12155c;
    }

    public void delete(String str, String str2, boolean z10) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strTt = tt(str, null, z10);
            if (TextUtils.isEmpty(strTt)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(strTt);
            if (jSONArray.length() > 0) {
                int i10 = 0;
                while (true) {
                    if (i10 >= jSONArray.length()) {
                        i10 = -1;
                        break;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && str2.equals(jSONObjectOptJSONObject.getString("id"))) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 != -1) {
                    jSONArray.remove(i10);
                    c(str, jSONArray.toString(), z10);
                }
            }
        } catch (Exception unused) {
        }
    }

    public JSONArray tt(final String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!ve.c().c(i10)) {
            return c(str);
        }
        try {
            final String strTt = tt(str, null, true);
            com.byazt.bwm.n.tt(new sp("tmpl_updatetime") { // from class: com.byazt.by.tt.2
                @Override // java.lang.Runnable
                public void run() {
                    boolean z10;
                    try {
                        Set<com.byazt.nq.c> setC = com.byazt.nq.tt.c().c(str);
                        JSONArray jSONArray = new JSONArray();
                        if (setC == null || setC.size() <= 0) {
                            z10 = false;
                        } else {
                            for (com.byazt.nq.c cVar : setC) {
                                if (cVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    String[] strArrSplit = cVar.c().split("_");
                                    if (strArrSplit.length == 2) {
                                        jSONObject.put("id", strArrSplit[1]);
                                        jSONObject.put(TKDownloadReason.KSAD_TK_MD5, cVar.tt());
                                        jSONArray.put(jSONObject);
                                    }
                                }
                            }
                            z10 = true;
                        }
                        if (!(strTt == null && z10) && jSONArray.toString().equals(strTt)) {
                            return;
                        }
                        tt.this.c(str, jSONArray.toString(), true);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(strTt)) {
                return null;
            }
            return new JSONArray(strTt);
        } catch (Exception unused) {
            return null;
        }
    }

    public void update(String str, com.byazt.ku.ve veVar, boolean z10) {
        if (veVar == null || veVar.tt() == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String strTt = tt(str, null, z10);
            JSONArray jSONArray = strTt == null ? new JSONArray() : new JSONArray(strTt);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", veVar.tt());
            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, veVar.ve());
            jSONArray.put(jSONObject);
            c(str, jSONArray.toString(), z10);
        } catch (Exception unused) {
        }
    }

    public void c(String str, String str2) {
        delete(str, str2, false);
    }

    public void c(String str, com.byazt.ku.ve veVar) {
        update(str, veVar, false);
    }

    public String tt(String str, String str2, boolean z10) {
        com.byazt.it.ve veVar;
        try {
            if (z10) {
                veVar = this.ve;
            } else {
                veVar = this.tt;
            }
            return veVar.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public JSONArray c(final String str, int i10) {
        try {
            final String strTt = tt(str, null, false);
            com.byazt.bwm.n.tt(new sp("tmpl_updatetime") { // from class: com.byazt.by.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean z10;
                    try {
                        Set<com.byazt.ku.tt> setC = com.byazt.six.tt.c(str, false);
                        JSONArray jSONArray = new JSONArray();
                        if (setC == null || setC.size() <= 0) {
                            z10 = false;
                        } else {
                            for (com.byazt.ku.tt ttVar : setC) {
                                if (ttVar != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("id", ttVar.tt());
                                    jSONObject.put(TKDownloadReason.KSAD_TK_MD5, ttVar.ve());
                                    jSONArray.put(jSONObject);
                                }
                            }
                            z10 = true;
                        }
                        if (!(strTt == null && z10) && jSONArray.toString().equals(strTt)) {
                            return;
                        }
                        tt.this.c(str, jSONArray.toString(), false);
                    } catch (Exception unused) {
                    }
                }
            });
            if (TextUtils.isEmpty(strTt)) {
                return null;
            }
            return new JSONArray(strTt);
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONArray c(String str) {
        try {
            Set<com.byazt.nq.c> setC = com.byazt.nq.tt.c().c(str);
            if (setC != null && setC.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.byazt.nq.c cVar : setC) {
                    if (cVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        String[] strArrSplit = cVar.c().split("_");
                        if (strArrSplit.length == 2) {
                            jSONObject.put("id", strArrSplit[1]);
                            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, cVar.tt());
                            jSONArray.put(jSONObject);
                        } else {
                            continue;
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e10) {
            m.ve("BidOptTmplManager", "getUgenParentTplIds: ", e10);
            return null;
        }
    }

    public void c(String str, String str2, boolean z10) {
        com.byazt.it.ve veVar;
        try {
            if (z10) {
                veVar = this.ve;
            } else {
                veVar = this.tt;
            }
            veVar.put(str, str2);
        } catch (Throwable unused) {
        }
    }
}
