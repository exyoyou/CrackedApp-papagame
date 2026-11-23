package com.byazt.qp;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import com.byazt.aas.gr;
import com.byazt.aas.n;
import com.byazt.ete.da;
import com.byazt.ete.ic;
import com.byazt.hkv.tt;
import com.byazt.kf.PageWebView;
import com.byazt.pm.a;
import com.byazt.sz.gt;
import com.byazt.sz.m;
import com.byazt.sz.rh;
import com.byazt.sz.yp;
import com.byazt.sz.z;
import com.byazt.xj.ve;
import com.byazt.xs.sp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_THREAD_PRIORITY, 20})
public class c implements gt, rh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.qj.c f19202a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19203c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Map<String, Object> f19204da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public JSONObject f19205i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve f19206n;
    public tt sp;
    public ViewGroup tt;
    public ic uj;
    public com.byazt.seg.c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public da f19207x;

    public c(Context context, ViewGroup viewGroup, com.byazt.seg.c cVar, ic icVar) {
        this.f19203c = context;
        this.tt = viewGroup;
        this.ve = cVar;
        this.uj = icVar;
    }

    @Override // com.byazt.sz.rh
    public void c(ve veVar, String str, a.c cVar) {
    }

    public void tt() {
        PageWebView.c(this.f19205i);
    }

    public void c(com.byazt.qj.c cVar) {
        this.f19202a = cVar;
    }

    public void c(DownloadListener downloadListener) {
        PageWebView.c(this.f19205i, downloadListener);
    }

    public void c() {
        com.byazt.seg.c cVar = this.ve;
        if (cVar == null) {
            com.byazt.qj.c cVar2 = this.f19202a;
            if (cVar2 != null) {
                cVar2.c(-1);
                return;
            }
            return;
        }
        JSONObject jSONObjectC = sp.c().c(cVar.c(), this.ve.tt());
        if (jSONObjectC == null) {
            com.byazt.hy.tt.c(this.ve, new com.byazt.hy.tt.InterfaceC0338tt() { // from class: com.byazt.qp.c.1
                @Override // com.byazt.hy.tt.InterfaceC0338tt
                public void c(JSONObject jSONObject) {
                    c.this.c(jSONObject);
                }

                @Override // com.byazt.hy.tt.InterfaceC0338tt
                public void c() {
                    if (c.this.f19202a != null) {
                        c.this.f19202a.c(-1);
                    }
                }
            });
        } else {
            c(jSONObjectC);
        }
    }

    public void c(final JSONObject jSONObject) {
        final z zVar = new z(this.f19203c);
        final JSONObject jSONObjectYg = this.uj.yg();
        this.f19205i = jSONObjectYg;
        yp ypVar = new yp();
        ypVar.c(this.f19203c);
        HashMap map = new HashMap();
        map.put("key_reward_page", this.f19204da);
        ypVar.c(map);
        zVar.c("reward_page", ypVar);
        zVar.c((rh) this);
        com.byazt.omf.rh.a().post(new Runnable() { // from class: com.byazt.qp.c.2
            @Override // java.lang.Runnable
            public void run() {
                c.this.f19206n = zVar.c(jSONObject);
                if (c.this.f19206n == null) {
                    if (c.this.f19202a != null) {
                        c.this.f19202a.c(-1);
                    }
                } else {
                    zVar.tt(jSONObjectYg);
                    c.this.tt.addView(c.this.f19206n.i(), new FrameLayout.LayoutParams(c.this.f19206n.or(), c.this.f19206n.cu()));
                    if (c.this.f19202a != null) {
                        c.this.f19202a.c(c.this.f19206n.i());
                    }
                }
            }
        });
    }

    @Override // com.byazt.sz.rh
    public void c(m mVar, rh.tt ttVar, rh.c cVar) {
        if (mVar != null && mVar.tt() == 1) {
            c(mVar, mVar.ve());
        }
    }

    private void c(m mVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("type");
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        strOptString.hashCode();
        if (!strOptString.equals("clickEvent")) {
            if (strOptString.equals("openPolicy")) {
                n.c(this.f19203c, this.uj);
            }
        } else {
            tt ttVar = this.sp;
            if (ttVar != null) {
                ttVar.c(mVar.c().i(), this.f19207x);
            }
        }
    }

    public void c(tt ttVar) {
        this.sp = ttVar;
    }

    @Override // com.byazt.sz.gt
    public void c(ve veVar, MotionEvent motionEvent) {
        this.f19207x.ve(motionEvent.getDeviceId());
        this.f19207x.tt(motionEvent.getToolType(0));
        this.f19207x.uj(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.f19207x.ve(motionEvent.getRawX());
                this.f19207x.uj(motionEvent.getRawY());
                this.f19207x.tt(System.currentTimeMillis());
                return;
            } else {
                if (actionMasked != 2) {
                    return;
                }
                this.f19207x.ve(motionEvent.getRawX());
                this.f19207x.uj(motionEvent.getRawY());
                return;
            }
        }
        this.f19207x.n((int) motionEvent.getRawX());
        this.f19207x.a((int) motionEvent.getRawY());
        this.f19207x.c(motionEvent.getRawX());
        this.f19207x.tt(motionEvent.getRawY());
        this.f19207x.c(System.currentTimeMillis());
        this.f19207x.tt(motionEvent.getToolType(0));
        this.f19207x.ve(motionEvent.getDeviceId());
        this.f19207x.uj(motionEvent.getSource());
        this.f19207x.tt(true);
        gr.c(motionEvent);
    }

    public void c(Map<String, Object> map) {
        this.f19204da = map;
    }
}
