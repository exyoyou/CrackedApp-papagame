package com.byazt.ng;

import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 248, 42})
public class i implements com.byazt.vb.sl {
    public static final Handler tt = new Handler(com.byazt.eu.n.tt());
    public static final Runnable ve = new Runnable() { // from class: com.byazt.ng.i.2
        @Override // java.lang.Runnable
        public void run() {
            com.byazt.eu.tt.c("TMe", "--==--- upload event routine");
            com.byazt.epi.c.ve("csj_mediation");
            i.tt();
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.le.c<c> f17325c;

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt() {
        Handler handler = tt;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(ve, com.byazt.bp.tt.tt().nb());
    }

    private void tt(JSONObject jSONObject, int i10, long j10, int i11, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
                if (jSONObjectOptJSONObject != null) {
                    c(jSONObjectOptJSONObject, i10, j10, i11, jSONObject2 != null ? jSONObject2.optJSONObject("params") : null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.vb.sl
    public void c(final List<com.byazt.vb.tt> list, @Nullable final com.byazt.vb.da daVar) {
        if (list != null && list.size() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            final ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = null;
            int i10 = 0;
            for (com.byazt.vb.tt ttVar : list) {
                JSONObject jSONObjectSp = ttVar.sp();
                byte bN = ttVar.n();
                byte bUj = ttVar.uj();
                if (bN == 2 && bUj == 3) {
                    tt(jSONObjectSp, list.size(), jCurrentTimeMillis, i10, jSONObject);
                    arrayList.add(new sp(ttVar.ve(), jSONObjectSp));
                } else {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("not_v3", jSONObjectSp);
                        jSONObject2.putOpt("batchId", Long.valueOf(jCurrentTimeMillis));
                        jSONObject2.putOpt("batchIndex", Integer.valueOf(i10));
                    } catch (Throwable unused) {
                    }
                }
                i10++;
                jSONObject = jSONObjectSp;
            }
            if (arrayList.size() > 0) {
                com.byazt.eu.n.sp().execute(new Runnable() { // from class: com.byazt.ng.i.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n nVarC = i.this.c(arrayList);
                        if (daVar == null || nVarC == null) {
                            return;
                        }
                        com.byazt.lph.tt ttVar2 = new com.byazt.lph.tt(nVarC.f17327c, nVarC.tt, nVarC.ve, nVarC.uj, "");
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(new com.byazt.lph.c(ttVar2, list));
                        daVar.c(arrayList2);
                        if (nVarC.f17327c) {
                            i.tt();
                        }
                    }
                });
            }
        }
    }

    private void c(JSONObject jSONObject, int i10, long j10, int i11, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                String strOptString = jSONObject.optString("event_extra");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                JSONObject jSONObject3 = new JSONObject(strOptString);
                jSONObject3.putOpt("size", Integer.valueOf(i10));
                jSONObject3.putOpt("batchId", Long.valueOf(j10));
                jSONObject3.putOpt("batchIndex", Integer.valueOf(i11));
                jSONObject3.putOpt("preEventId", jSONObject2 != null ? jSONObject2.optString("event_id") : WMConstants.TIMER_STAGE_NONE);
                jSONObject.put("event_extra", jSONObject3.toString());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n c(List<c> list) {
        try {
            if (this.f17325c == null) {
                this.f17325c = com.byazt.bp.tt.c();
            }
        } catch (Exception unused) {
        }
        com.byazt.le.c<c> cVar = this.f17325c;
        if (cVar == null) {
            return null;
        }
        return cVar.c(list);
    }
}
