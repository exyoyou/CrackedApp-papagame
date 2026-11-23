package com.byazt.dqg;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.aas.pf;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ete.to;
import com.byazt.ff.RoundImageView;
import com.byazt.lcf.TTBaseVideoActivity;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 71})
public class x extends tt {
    public TextView gr;
    public TextView gt;
    public TextView gu;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f13136m;
    public TextView my;
    public TextView nu;
    public RelativeLayout qy;
    public ImageView rh;
    public RelativeLayout rl;
    public RoundImageView yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public RelativeLayout f13137z;
    public boolean zm;

    public x(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, boolean z10) {
        super(tTBaseVideoActivity, icVar, z10);
    }

    @Override // com.byazt.dqg.tt
    public void c() {
        String strValueOf;
        String strValueOf2;
        super.c();
        this.f13128x = (RelativeLayout) this.tt.findViewById(2114387662);
        this.f13124i = (FrameLayout) this.tt.findViewById(2114387754);
        this.f13123da = (TextView) this.tt.findViewById(2114387658);
        this.yp = (RoundImageView) this.tt.findViewById(2114387882);
        this.f13137z = (RelativeLayout) this.tt.findViewById(2114387911);
        this.f13136m = (TextView) this.tt.findViewById(2114387921);
        this.nu = (TextView) this.tt.findViewById(2114387850);
        this.rh = (ImageView) this.tt.findViewById(2114387881);
        this.my = (TextView) this.tt.findViewById(2114387781);
        this.gt = (TextView) this.tt.findViewById(2114387640);
        this.rl = (RelativeLayout) this.tt.findViewById(2114387663);
        this.qy = (RelativeLayout) this.tt.findViewById(2114387835);
        this.sl = (RelativeLayout) this.tt.findViewById(2114387717);
        this.gu = (TextView) this.tt.findViewById(2114387752);
        this.gr = (TextView) this.tt.findViewById(2114387716);
        pf.c(this.f13123da, this.ve);
        sl();
        if (com.byazt.ex.c.c(this.ve)) {
            String strI = bx.i(this.ve);
            if (TextUtils.isEmpty(strI) || this.yp == null) {
                pf.c((View) this.f13137z, 8);
            } else {
                pf.c((View) this.f13137z, 0);
                com.byazt.xky.tt.c(strI).to(this.yp);
            }
            if (this.f13136m != null) {
                this.f13136m.setText(bx.ve(this.ve));
            }
            if (this.nu != null) {
                int iUj = bx.uj(this.ve);
                if (iUj < 0) {
                    this.nu.setVisibility(4);
                    pf.c((View) this.rh, 4);
                } else {
                    if (iUj > 10000) {
                        strValueOf2 = (iUj / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf2 = String.valueOf(iUj);
                    }
                    this.nu.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (this.my != null) {
                int iN = bx.n(this.ve);
                if (iN < 0) {
                    this.my.setVisibility(4);
                    pf.c((View) this.rh, 4);
                } else {
                    if (iN > 10000) {
                        strValueOf = (iN / 10000.0f) + IAdInterListener.AdReqParam.WIDTH;
                    } else {
                        strValueOf = String.valueOf(iN);
                    }
                    this.my.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (this.gt != null) {
                this.gt.setText(bx.a(this.ve));
            }
        }
    }

    @Override // com.byazt.dqg.tt
    public void uj(int i10) {
        if (this.zm) {
            return;
        }
        pf.c((View) this.sl, i10);
    }

    @Override // com.byazt.dqg.tt
    public void ve(int i10) {
        pf.c((View) this.rl, i10);
        pf.c((View) this.qy, i10);
    }

    @Override // com.byazt.dqg.tt
    public void c(com.byazt.hkv.tt ttVar, com.byazt.hkv.tt ttVar2) {
        pf.c((View) this.gu, (View.OnTouchListener) ttVar, "TTBaseVideoActivity#mLiveLoadingBtn");
        pf.c((View) this.gu, (View.OnClickListener) ttVar, "TTBaseVideoActivity#mLiveLoadingBtn");
        pf.c((View) this.gr, (View.OnClickListener) ttVar, "TTBaseVideoActivity#mLiveVideoBtn");
        pf.c((View) this.gr, (View.OnClickListener) ttVar, "TTBaseVideoActivity#mLiveVideoBtn");
        c(ttVar2);
        c((View.OnTouchListener) ttVar2);
    }

    private void c(View.OnTouchListener onTouchListener) {
        pf.c(this.f13128x, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        pf.c(this.f13124i, onTouchListener, "TTBaseVideoActivity#mVideoNativeFrame");
        pf.c(this.gt, onTouchListener, "TTBaseVideoActivity#mLiveDesc");
        pf.c(this.nu, onTouchListener, "TTBaseVideoActivity#mLiveFans");
        pf.c(this.my, onTouchListener, "TTBaseVideoActivity#mLiveWatch");
        pf.c(this.f13136m, onTouchListener, "TTBaseVideoActivity#mLiveName");
        pf.c(this.yp, onTouchListener, "TTBaseVideoActivity#mLiveIcon");
        pf.c(this.sl, onTouchListener, "TTBaseVideoActivity#mLiveBtnLayout");
    }

    private void c(com.byazt.hkv.tt ttVar) {
        c(this.f13124i, ttVar, "click_live_feed");
        c(this.gt, ttVar, "click_live_author_description");
        c(this.nu, ttVar, "click_live_author_follower_count");
        c(this.my, ttVar, "click_live_author_following_count");
        c(this.f13136m, ttVar, "click_live_author_nickname");
        c(this.yp, ttVar, "click_live_avata");
        c(this.f13128x, ttVar, "click_live_button");
        c(this.sl, ttVar, "click_live_btn_layout");
    }

    private void c(View view, final com.byazt.hkv.tt ttVar, final String str) {
        if (view == null || ttVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        TTBaseVideoActivity tTBaseVideoActivity = this.tt;
        ic icVar = this.ve;
        boolean z10 = this.f13121a;
        view.setOnClickListener(new com.byazt.hkv.tt(tTBaseVideoActivity, icVar, z10 ? "rewarded_video" : "fullscreen_interstitial_ad", z10 ? 7 : 5) { // from class: com.byazt.dqg.x.1
            @Override // com.byazt.hkv.tt, com.byazt.hkv.uj
            public void c(View view2, com.byazt.ete.da daVar) {
                HashMap map = new HashMap();
                map.put("click_live_element", str);
                ((com.byazt.vis.c) ttVar.c(com.byazt.vis.c.class)).c(map);
                ttVar.c(view2, daVar);
            }
        });
    }

    public void c(int i10, int i11) {
        TextView textView;
        if (i10 != 0) {
            this.zm = true;
            pf.c((View) this.sl, 8);
            return;
        }
        pf.c((View) this.sl, 0);
        if (i11 >= 0 && com.byazt.apd.tt.c().tt(this.ve) && to.c(this.ve) && to.n(this.ve) == 3 && (textView = (TextView) this.tt.findViewById(2114387716)) != null) {
            textView.setText(String.format("%1$s后自动进入直播间", i11 + "s"));
        }
    }
}
