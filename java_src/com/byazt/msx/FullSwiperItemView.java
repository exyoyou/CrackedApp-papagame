package com.byazt.msx;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.md;
import com.byazt.aas.nb;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.ete.lt;
import com.byazt.ff.TTProgressBar;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.d;
import com.byazt.nr.m;
import com.byazt.ouz.sl;
import com.byazt.rpt.FullRewardExpressView;
import com.byazt.ukr.yp;
import com.byazt.vfu.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_POS, 2234})
public class FullSwiperItemView extends FrameLayout implements qp.c, sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f16966a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewGroup f16967c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.msx.c f16968da;
    public int gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f16969i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f16970m;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f16971n;
    public final d nu;
    public c rh;
    public tt rl;
    public FullRewardExpressView sl;
    public TTProgressBar sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Context f16972t;
    public FrameLayout tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.xh.c f16973u;
    public FrameLayout uj;
    public FrameLayout ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f16974x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f16975z;

    public interface c {
        void c();
    }

    public interface tt {
        void c(View view, float f10, float f11);
    }

    public FullSwiperItemView(Context context, com.byazt.msx.c cVar, float f10, float f11) {
        super(context);
        this.nu = new d(Looper.getMainLooper(), this);
        this.f16968da = cVar;
        this.f16974x = f10;
        this.f16969i = f11;
        this.f16972t = context;
        setBackgroundColor(0);
        sl();
        this.gt = nb.t(cVar.c());
        this.my = cVar.c().ab() == 1;
        t();
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this.f16967c.getContext(), this.f16968da.c(), md.c(8, String.valueOf(this.gt), this.f16974x, this.f16969i, this.f16968da.c()), this.f16968da.tt(), this.my, null);
        this.sl = fullRewardExpressView;
        fullRewardExpressView.getAdShowTime().c(true);
    }

    @Override // com.byazt.ouz.sl
    public void a() {
        yp.c().uj(this.f16968da.c(), "stats_reward_full_click_express_close");
        Context context = this.f16972t;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).to().c().c();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            ic icVarC = this.f16968da.c();
            if (icVarC != null && icVarC.zo() != null) {
                jSONObject.put("refresh_num", this.f16968da.c().zo().ve());
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        yp.c().c(this.f16968da.c(), "stats_reward_full_click_native_close", jSONObject);
        c cVar = this.rh;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(float f10) {
    }

    @Override // com.byazt.ouz.sl
    public void da() {
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what != 102) {
            return;
        }
        com.byazt.msx.c cVar = this.f16968da;
        if (cVar != null) {
            cVar.sp();
        }
        Context context = this.f16972t;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).sl();
        }
        c cVar2 = this.rh;
        if (cVar2 != null) {
            cVar2.c();
        }
    }

    @Override // com.byazt.ouz.sl
    public void i() {
        com.byazt.fcd.c cVar;
        c cVar2 = this.rh;
        if (cVar2 != null) {
            cVar2.c();
        }
        Context context = this.f16972t;
        if (!(context instanceof TTBaseVideoActivity) || (cVar = ((TTBaseVideoActivity) context).to()) == null || cVar.c() == null) {
            return;
        }
        cVar.c().ve();
    }

    public void m() {
        com.byazt.xh.c cVar = this.f16973u;
        if (cVar != null) {
            cVar.x();
        }
    }

    @Override // com.byazt.ouz.sl
    public void n() {
    }

    public void nu() {
        d dVar = this.nu;
        if (dVar != null) {
            dVar.removeMessages(102);
        }
    }

    public void rh() {
        FullRewardExpressView fullRewardExpressView = this.sl;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.t();
        }
        com.byazt.xh.c cVar = this.f16973u;
        if (cVar != null) {
            cVar.i();
        }
    }

    public void setOnSwiperItemInteractListener(c cVar) {
        this.rh = cVar;
    }

    public void setOnSwiperItemRenderResultListener(tt ttVar) {
        this.rl = ttVar;
    }

    @Override // com.byazt.ouz.sl
    public void setPauseFromExpressView(boolean z10) {
    }

    public void sl() {
        View viewT = a.t(this.f16972t);
        addView(viewT);
        this.f16967c = (ViewGroup) viewT.findViewById(2114387892);
        this.tt = (FrameLayout) viewT.findViewById(2114387778);
        this.ve = (FrameLayout) viewT.findViewById(2114387812);
        this.uj = (FrameLayout) viewT.findViewById(2114387670);
        this.f16971n = (FrameLayout) viewT.findViewById(2114387821);
        this.f16966a = (FrameLayout) viewT.findViewById(2114387679);
        this.sp = (TTProgressBar) viewT.findViewById(2114387767);
    }

    @Override // com.byazt.ouz.sl
    public void sp() {
        c cVar = this.rh;
        if (cVar != null) {
            cVar.c();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            ic icVarC = this.f16968da.c();
            if (icVarC != null && icVarC.zo() != null) {
                jSONObject.put("refresh_num", this.f16968da.c().zo().ve());
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        yp.c().c(this.f16968da.c(), "stats_reward_full_click_express_close", jSONObject);
        Context context = this.f16972t;
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    public void t() {
        ic icVarC = this.f16968da.c();
        if (icVarC == null) {
            return;
        }
        float fFr = icVarC.fr();
        int iBy = icVarC.by();
        float fQe = icVarC.qe();
        float[] fArrC = com.byazt.biq.tt.c(this.f16972t.getApplicationContext(), icVarC.fr(), icVarC.by());
        float f10 = fArrC[0];
        float f11 = fArrC[1];
        if (fFr == 100.0f) {
            this.f16974x = f10;
            this.f16969i = f11;
            return;
        }
        int[] iArrC = com.byazt.biq.tt.c(this.f16972t.getApplicationContext(), fFr, fQe, iBy);
        int i10 = iArrC[0];
        int i11 = iArrC[1];
        int i12 = iArrC[2];
        int i13 = iArrC[3];
        this.f16974x = (int) ((f10 - i10) - i12);
        this.f16969i = (int) ((f11 - i11) - i13);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
    }

    @Override // com.byazt.ouz.sl
    public void tt(int i10) {
    }

    public void u() {
        if (this.f16968da == null) {
            return;
        }
        this.sp.setVisibility(0);
        this.sl.setExpressInteractionListener(new com.byazt.ouz.c() { // from class: com.byazt.msx.FullSwiperItemView.1
            @Override // com.byazt.ouz.c
            public void c(View view, float f10, float f11) {
                if (FullSwiperItemView.this.rl != null) {
                    FullSwiperItemView.this.rl.c(view, f10, f11);
                }
            }

            @Override // com.byazt.ouz.c
            public void c(View view, int i10) {
                super.c(view, i10);
            }
        });
        this.sl.setExpressVideoListenerProxy(this);
        this.sl.setInteractListener(this.rh);
        this.sl.setOnVideoSizeChangeListener(new FullRewardExpressView.c() { // from class: com.byazt.msx.FullSwiperItemView.2
            @Override // com.byazt.rpt.FullRewardExpressView.c
            public void c(int i10) {
                FullSwiperItemView.this.yp = i10;
            }
        });
        if (this.sl.getParent() != null) {
            ((ViewGroup) this.sl.getParent()).removeView(this.sl);
        }
        this.f16971n.addView(this.sl);
        this.f16973u = new com.byazt.xh.c(this.f16967c.getContext(), this.ve, this.f16968da.c(), null);
        this.f16973u.c(new ve(this.f16968da.n(), lt.ve(this.f16968da.c()), new ve.c() { // from class: com.byazt.msx.FullSwiperItemView.3
            @Override // com.byazt.msx.FullSwiperItemView.ve.c
            public void c() {
                if (FullSwiperItemView.this.f16972t instanceof TTBaseVideoActivity) {
                    ((TTBaseVideoActivity) FullSwiperItemView.this.f16972t).kk();
                }
            }

            @Override // com.byazt.msx.FullSwiperItemView.ve.c
            public void c(long j10, long j11) {
                com.byazt.kcl.a aVarPu;
                if (FullSwiperItemView.this.sl == null || !(FullSwiperItemView.this.f16972t instanceof TTBaseVideoActivity) || (aVarPu = ((TTBaseVideoActivity) FullSwiperItemView.this.f16972t).pu()) == null) {
                    return;
                }
                aVarPu.tt(j10);
                FullSwiperItemView.this.sl.c(String.valueOf(aVarPu.md()), (int) (aVarPu.h() / 1000), 0, j10 == j11 || aVarPu.eo());
            }
        }, this.nu));
        this.f16973u.tt(this.my);
        this.sl.setVideoController(this.f16973u);
        this.f16968da.c(this.ve, this.uj, this.sl);
        this.sl.m();
        this.sl.nu();
    }

    @Override // com.byazt.ouz.sl
    public void uj() {
    }

    @Override // com.byazt.ouz.sl
    public void ve(int i10) {
    }

    @Override // com.byazt.ouz.sl
    public void x() {
    }

    public void yp() {
        if (this.f16973u != null && this.f16975z) {
            this.f16968da.i();
            this.sl.z();
            this.f16970m = true;
            if (ic.ve(this.f16968da.c())) {
                this.nu.sendEmptyMessageDelayed(102, 5000L);
            }
            this.f16968da.c(this.sl);
            if (this.sl.rl()) {
                return;
            }
            this.f16973u.c(this.f16968da.da());
        }
    }

    public void z() {
        com.byazt.xh.c cVar = this.f16973u;
        if (cVar == null) {
            return;
        }
        cVar.a();
    }

    @Override // com.byazt.ouz.sl
    public void c(float f10, float f11, float f12, float f13, int i10) {
    }

    @Override // com.byazt.ouz.sl
    public void n(int i10) {
    }

    @Override // com.byazt.ouz.sl
    public void uj(int i10) {
    }

    @Override // com.byazt.ouz.sl
    public void c(int i10) {
    }

    public void tt(boolean z10) {
        FullRewardExpressView fullRewardExpressView = this.sl;
        if (fullRewardExpressView == null) {
            return;
        }
        if (fullRewardExpressView.rl()) {
            Context context = this.f16972t;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).rh();
            }
        } else {
            this.sl.c((ViewGroup) this.tt, false);
        }
        this.f16975z = true;
        this.f16968da.ve(z10);
        yp();
        this.sp.setVisibility(8);
    }

    @Override // com.byazt.ouz.sl
    public int ve() {
        com.byazt.xh.c cVar = this.f16973u;
        if (cVar == null) {
            return 0;
        }
        return (int) (cVar.sl() / 1000);
    }

    @Override // com.byazt.ouz.sl
    public void c(int i10, String str) {
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_POS, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_READ_BLOCK_TIMEOUT})
    private static class ve implements com.byazt.zd.c.InterfaceC0501c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.zd.c.InterfaceC0501c f16979c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final d f16980n;
        public final c tt;
        public final int uj;
        public boolean ve = false;

        interface c {
            void c();

            void c(long j10, long j11);
        }

        public ve(com.byazt.zd.c.InterfaceC0501c interfaceC0501c, int i10, c cVar, d dVar) {
            this.f16979c = interfaceC0501c;
            this.tt = cVar;
            this.uj = i10;
            this.f16980n = dVar;
        }

        @Override // com.byazt.zd.c.InterfaceC0501c
        public void c() {
            this.ve = false;
            com.byazt.zd.c.InterfaceC0501c interfaceC0501c = this.f16979c;
            if (interfaceC0501c != null) {
                interfaceC0501c.c();
            }
            c cVar = this.tt;
            if (cVar != null) {
                cVar.c();
            }
        }

        @Override // com.byazt.zd.c.InterfaceC0501c
        public void tt() {
            com.byazt.zd.c.InterfaceC0501c interfaceC0501c = this.f16979c;
            if (interfaceC0501c != null) {
                interfaceC0501c.tt();
            }
        }

        @Override // com.byazt.zd.c.InterfaceC0501c
        public void ve() {
            com.byazt.zd.c.InterfaceC0501c interfaceC0501c = this.f16979c;
            if (interfaceC0501c != null) {
                interfaceC0501c.ve();
            }
        }

        @Override // com.byazt.zd.c.InterfaceC0501c
        public void c(int i10, String str) {
            this.ve = false;
            com.byazt.zd.c.InterfaceC0501c interfaceC0501c = this.f16979c;
            if (interfaceC0501c != null) {
                interfaceC0501c.c(i10, str);
            }
        }

        @Override // com.byazt.zd.c.InterfaceC0501c
        public void c(long j10, long j11) {
            this.f16980n.removeMessages(102);
            com.byazt.zd.c.InterfaceC0501c interfaceC0501c = this.f16979c;
            if (interfaceC0501c != null) {
                interfaceC0501c.c(j10, j11);
            }
            c cVar = this.tt;
            if (cVar != null) {
                cVar.c(j10, j11);
            }
        }
    }

    @Override // com.byazt.ouz.sl
    public void c(ic icVar) {
    }

    @Override // com.byazt.ouz.sl
    public void c(boolean z10) {
        if (this.my != z10) {
            this.my = z10;
            com.byazt.xh.c cVar = this.f16973u;
            if (cVar != null) {
                cVar.tt(z10);
            }
            Context context = this.f16972t;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).to().c().tt();
            }
            c cVar2 = this.rh;
            if (cVar2 != null) {
                cVar2.c();
            }
        }
    }

    @Override // com.byazt.ouz.sl
    public int tt() {
        com.byazt.xh.c cVar = this.f16973u;
        if (cVar == null || !this.f16970m) {
            return 2;
        }
        if (cVar.bm()) {
            return 5;
        }
        if (this.f16973u.qy()) {
            return 1;
        }
        if (this.f16973u.lr()) {
            return 2;
        }
        this.f16973u.gr();
        return 3;
    }

    @Override // com.byazt.ouz.sl
    public long c() {
        return this.f16973u.sl();
    }
}
