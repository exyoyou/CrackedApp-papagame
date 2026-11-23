package com.byazt.cjm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import com.byazt.ddx.uj;
import com.byazt.ete.l;
import com.byazt.ff.TTProgressBar;
import com.byazt.nc.z;
import com.byazt.nr.h;
import com.byazt.omf.gt;
import com.byazt.omf.yp;
import com.byazt.qq.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1243, 13})
public class tt implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12511a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c.InterfaceC0283c f12512c;
    public com.byazt.hc.c tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f12518x;
    public final AtomicBoolean ve = new AtomicBoolean(false);
    public final AtomicBoolean uj = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f12515n = new AtomicBoolean(false);
    public int sp = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12514i = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f12513da = "";
    public String sl = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f12516t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12517u = "";
    public String yp = "";

    public tt(c.InterfaceC0283c interfaceC0283c) {
        this.f12512c = interfaceC0283c;
    }

    private void sl() {
        n.tt(new sp("executeMultiProcessCallback") { // from class: com.byazt.cjm.tt.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    yp.c.c(com.byazt.wzi.c.c(gt.getContext()).c(5)).ve(l.tt(tt.this.f12512c.tt()), "recycleRes", null);
                } catch (Throwable unused) {
                }
            }
        }, 5);
    }

    private boolean da() {
        if (!l.tt(this.f12512c.c())) {
            return false;
        }
        if (this.ve.get()) {
            return true;
        }
        da daVar = new da() { // from class: com.byazt.cjm.tt.4
            @Override // com.byazt.qq.da
            public void c() {
                if (tt.this.ve.get()) {
                    return;
                }
                if (tt.this.tt != null) {
                    tt.this.tt.uj();
                }
                tt.this.i();
                uj.c(tt.this.f12512c.c(), "reward_endcard", "reward_again", "popup");
            }

            @Override // com.byazt.qq.da
            public void tt() {
                if (tt.this.ve.get()) {
                    return;
                }
                uj.c(tt.this.f12512c.c(), "reward_endcard", "popup_cancel", (String) null);
                tt.this.f12512c.ve();
            }
        };
        com.byazt.hc.tt ttVar = new com.byazt.hc.tt(this.f12512c.getActivity(), this.f12512c.c());
        this.tt = ttVar;
        ttVar.uj(this.f12513da);
        this.tt.ve(this.sl);
        this.tt.c(this.yp);
        this.f12512c.uj();
        return this.tt.c(daVar).ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            this.ve.set(true);
            String strUj = l.uj(this.f12512c.c());
            if (TextUtils.isEmpty(strUj)) {
                strUj = String.valueOf(this.f12511a);
            }
            if (TextUtils.isEmpty(strUj)) {
                strUj = String.valueOf(nb.t(this.f12512c.c()));
            }
            com.byazt.cf.sp.c().c(com.byazt.lvl.c.c().c(this.f12512c.c(), strUj), l.ve(this.f12512c.c()), this.sp, new com.byazt.cf.uj(new com.byazt.nh.sp(null) { // from class: com.byazt.cjm.tt.3
                @Override // com.byazt.nh.sp
                public void c() {
                }

                @Override // com.byazt.nh.sp
                public void tt(z zVar) {
                }

                @Override // com.byazt.nh.sp
                public void c(int i10, String str) {
                    x.c(new Runnable() { // from class: com.byazt.cjm.tt.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            tt.this.uj("当前无新视频，请点击重试");
                            tt.this.ve.set(false);
                            if (tt.this.tt != null) {
                                tt.this.tt.n();
                            }
                            tt.this.f12512c.c(8, null);
                        }
                    });
                }

                @Override // com.byazt.nh.sp
                public void c(final z zVar) {
                    x.c(new Runnable() { // from class: com.byazt.cjm.tt.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            z zVar2 = zVar;
                            if (zVar2 instanceof com.byazt.yi.ve) {
                                com.byazt.yi.ve veVar = (com.byazt.yi.ve) zVar2;
                                veVar.setPlayAgain(true);
                                veVar.setPlayAgainSourceRit(tt.this.f12511a);
                                veVar.setPlayAgainCount(tt.this.sp + 1);
                                veVar.setMetaMd5(tt.this.f12512c.tt());
                                if (!TextUtils.isEmpty(tt.this.f12513da) && !TextUtils.isEmpty(tt.this.sl)) {
                                    veVar.setPlayAgainRewardAmount(tt.this.sl);
                                    veVar.setPlayAgainRewardName(tt.this.f12513da);
                                }
                                veVar.setCustomPlayAgain(tt.this.f12518x);
                                veVar.showRewardVideoAd(tt.this.f12512c.getActivity());
                                tt.this.f12512c.n();
                                tt.this.uj.set(true);
                            } else {
                                tt.this.uj("当前无新视频，请点击重试");
                                tt.this.ve.set(false);
                            }
                            tt.this.f12512c.c(8, null);
                        }
                    });
                }
            }));
        } catch (Throwable unused) {
            this.ve.set(false);
            uj("当前无新视频，请退出后重试");
        }
    }

    @Override // com.byazt.cjm.c
    public String a() {
        return this.f12516t;
    }

    @Override // com.byazt.cjm.c
    public boolean n() {
        com.byazt.hc.c cVar = this.tt;
        if (cVar == null) {
            return false;
        }
        return cVar.tt();
    }

    @Override // com.byazt.cjm.c
    public String sp() {
        return this.f12517u;
    }

    @Override // com.byazt.cjm.c
    public void tt(boolean z10) {
        this.f12518x = z10;
    }

    @Override // com.byazt.cjm.c
    public void uj() {
        c.InterfaceC0283c interfaceC0283c = this.f12512c;
        if (interfaceC0283c == null || interfaceC0283c.getActivity() == null || this.f12512c.c() == null || !l.c(this.f12512c.c())) {
            return;
        }
        if (!this.f12518x) {
            boolean z10 = this.sp == 0;
            this.f12512c.c(z10, null, null);
            this.f12514i = z10;
        } else {
            this.f12514i = false;
            this.f12512c.c(false, this.f12513da, this.sl);
            final int i10 = this.sp + 1;
            n.tt(new sp("executeMultiProcessCallback") { // from class: com.byazt.cjm.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        yp ypVarC = yp.c.c(com.byazt.wzi.c.c(gt.getContext()).c(5));
                        Bundle bundle = new Bundle();
                        bundle.putInt("callback_extra_key_next_play_again_count", i10);
                        tt.this.c(ypVarC.ve(l.tt(tt.this.f12512c.tt()), "getPlayAgainCondition", bundle));
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
        }
    }

    @Override // com.byazt.cjm.c
    public boolean ve(int i10) {
        c.InterfaceC0283c interfaceC0283c = this.f12512c;
        if (interfaceC0283c == null || interfaceC0283c.getActivity() == null || this.f12512c.c() == null || this.ve.get() || !this.f12514i) {
            return false;
        }
        if (i10 == 1) {
            c.InterfaceC0283c interfaceC0283c2 = this.f12512c;
            interfaceC0283c2.c(0, c(interfaceC0283c2.getActivity()));
            i();
            uj.c(this.f12512c.c(), "reward_endcard", "reward_again", "endcard");
        } else {
            if (i10 == 2) {
                return da();
            }
            if (i10 == 3) {
                c.InterfaceC0283c interfaceC0283c3 = this.f12512c;
                interfaceC0283c3.c(0, c(interfaceC0283c3.getActivity()));
                i();
                uj.c(this.f12512c.c(), "reward_endcard", "reward_again", "videoplaying");
            }
        }
        return true;
    }

    @Override // com.byazt.cjm.c
    public String x() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isPlayAgain", this.f12515n.get());
            jSONObject.put("mSourceRitId", this.f12511a);
            jSONObject.put("mNowPlayAgainCount", this.sp);
            jSONObject.put("isCustomPlayAgain", this.f12518x);
            jSONObject.put("isCanPlayAgain", this.f12514i);
            jSONObject.put("mPlayAgainRewardName", this.f12513da);
            jSONObject.put("mPlayAgainRewardAmount", this.sl);
            jSONObject.put("mLastRewardName", this.f12516t);
            jSONObject.put("mLastRewardAmount", this.f12517u);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.cjm.c
    public void tt(int i10) {
        this.f12511a = i10;
    }

    @Override // com.byazt.cjm.c
    public void c(boolean z10) {
        this.f12515n.set(z10);
    }

    @Override // com.byazt.cjm.c
    public boolean tt() {
        return this.uj.get();
    }

    @Override // com.byazt.cjm.c
    public void c(int i10) {
        this.sp = i10;
    }

    @Override // com.byazt.cjm.c
    public void tt(String str) {
        this.f12517u = str;
    }

    @Override // com.byazt.cjm.c
    public boolean c() {
        return this.f12515n.get();
    }

    @Override // com.byazt.cjm.c
    public void c(String str) {
        this.f12516t = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Bundle bundle) {
        boolean z10 = bundle.getBoolean("play_again_allow");
        this.f12513da = bundle.getString("play_again_reward_name");
        this.sl = bundle.getString("play_again_reward_amount");
        this.yp = bundle.getString("extra_info");
        this.f12514i = z10;
        if (z10) {
            x.c(new Runnable() { // from class: com.byazt.cjm.tt.2
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.f12512c.c(true, tt.this.f12513da, tt.this.sl);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(final String str) {
        c.InterfaceC0283c interfaceC0283c = this.f12512c;
        if (interfaceC0283c == null || interfaceC0283c.getActivity() == null) {
            return;
        }
        x.c(new Runnable() { // from class: com.byazt.cjm.tt.5
            @Override // java.lang.Runnable
            public void run() {
                h.c(tt.this.f12512c.getActivity(), str, 0);
            }
        });
    }

    @Override // com.byazt.cjm.c
    public void ve() {
        com.byazt.hc.c cVar = this.tt;
        if (cVar != null) {
            cVar.ve();
        }
        sl();
    }

    private TTProgressBar c(final Context context) {
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
        layoutParams.gravity = 17;
        tTProgressBar.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#77000000"));
        gradientDrawable.setCornerRadius(pf.ve(context, 2.0f));
        tTProgressBar.setBackground(gradientDrawable);
        int iVe = pf.ve(context, 10.0f);
        tTProgressBar.setPadding(iVe, iVe, iVe, iVe);
        com.byazt.nr.z.c(context, "tt_normalscreen_loading", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.cjm.tt.6
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vfu.n.c(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, 320);
        return tTProgressBar;
    }

    @Override // com.byazt.cjm.c
    public void ve(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f12515n.set(jSONObject.getBoolean("isPlayAgain"));
            this.f12511a = jSONObject.optInt("mSourceRitId");
            this.sp = jSONObject.optInt("mNowPlayAgainCount");
            this.f12518x = jSONObject.optBoolean("isCustomPlayAgain");
            this.f12514i = jSONObject.optBoolean("isCanPlayAgain");
            this.f12513da = jSONObject.optString("mPlayAgainRewardName");
            this.sl = jSONObject.optString("mPlayAgainRewardAmount");
            this.f12516t = jSONObject.optString("mLastRewardName");
            this.sl = jSONObject.optString("mPlayAgainRewardAmount");
        } catch (Exception unused) {
        }
    }
}
