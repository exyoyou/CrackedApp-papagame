package com.byazt.xyr;

import android.text.TextUtils;
import android.view.View;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_DURATION, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONArray f22117a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONArray f22118c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONArray f22119n;
    public final com.byazt.xj.ve sp;
    public JSONArray tt;
    public JSONArray uj;
    public JSONArray ve;

    public c(com.byazt.xj.ve veVar) {
        this.sp = veVar;
    }

    private void tt(com.byazt.xj.ve veVar) {
        Map<String, List<com.byazt.ji.tt>> mapX;
        if (veVar == null || veVar.kp() == null || (mapX = veVar.kp().x()) == null) {
            return;
        }
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        for (List<com.byazt.ji.tt> list : mapX.values()) {
            if (list != null && !list.isEmpty()) {
                Iterator<com.byazt.ji.tt> it2 = list.iterator();
                while (it2.hasNext()) {
                    List<com.byazt.pm.a.c> listTt = it2.next().da().tt();
                    if (listTt != null && !listTt.isEmpty()) {
                        for (com.byazt.pm.a.c cVar : listTt) {
                            if (cVar != null && !TextUtils.isEmpty(cVar.tt())) {
                                String strTt = cVar.tt();
                                strTt.hashCode();
                                switch (strTt) {
                                    case "openPrivacy":
                                        if (!z14) {
                                            c(this.f22119n, veVar);
                                        }
                                        z14 = true;
                                        break;
                                    case "skip":
                                        if (!z15) {
                                            c(this.f22117a, veVar);
                                        }
                                        z15 = true;
                                        break;
                                    case "close":
                                        if (!z10) {
                                            c(this.f22118c, veVar);
                                        }
                                        z10 = true;
                                        break;
                                    case "convert":
                                        if (!z11) {
                                            c(this.tt, veVar);
                                        }
                                        z11 = true;
                                        break;
                                    case "muteVideo":
                                        if (!z13) {
                                            c(this.uj, veVar);
                                        }
                                        z13 = true;
                                        break;
                                    case "dislike":
                                        if (!z12) {
                                            c(this.ve, veVar);
                                        }
                                        z12 = true;
                                        break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public JSONObject c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        this.f22118c = new JSONArray();
        this.tt = new JSONArray();
        this.ve = new JSONArray();
        this.uj = new JSONArray();
        this.f22119n = new JSONArray();
        this.f22117a = new JSONArray();
        c(this.sp);
        if (this.f22118c.length() > 0) {
            jSONObject.putOpt("close", this.f22118c);
        }
        if (this.tt.length() > 0) {
            jSONObject.putOpt("convert", this.tt);
        }
        if (this.ve.length() > 0) {
            jSONObject.putOpt("dislike", this.ve);
        }
        if (this.uj.length() > 0) {
            jSONObject.putOpt("muteVideo", this.uj);
        }
        if (this.f22119n.length() > 0) {
            jSONObject.putOpt("openPrivacy", this.f22119n);
        }
        if (this.f22117a.length() > 0) {
            jSONObject.putOpt("skip", this.f22117a);
        }
        return jSONObject;
    }

    private void c(com.byazt.xj.ve veVar) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.xj.c) {
            c((com.byazt.xj.c<?>) veVar);
        } else {
            tt(veVar);
        }
    }

    private void c(com.byazt.xj.c<?> cVar) {
        tt(cVar);
        List<com.byazt.xj.ve<View>> listSp = cVar.sp();
        if (listSp == null || listSp.isEmpty()) {
            return;
        }
        Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            c(it2.next());
        }
    }

    private void c(JSONArray jSONArray, com.byazt.xj.ve veVar) {
        View viewI;
        View viewI2;
        if (jSONArray == null || veVar == null || (viewI = veVar.i()) == null || (viewI2 = this.sp.i()) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewI.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        viewI2.getLocationInWindow(iArr2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("id", veVar.eo());
            jSONObject.putOpt("width", Integer.valueOf(viewI.getWidth()));
            jSONObject.putOpt("height", Integer.valueOf(viewI.getHeight()));
            jSONObject.putOpt("x", Integer.valueOf(iArr[0] - iArr2[0]));
            jSONObject.putOpt("y", Integer.valueOf(iArr[1] - iArr2[1]));
        } catch (Throwable th) {
            m.c(th);
        }
        jSONArray.put(jSONObject);
    }
}
