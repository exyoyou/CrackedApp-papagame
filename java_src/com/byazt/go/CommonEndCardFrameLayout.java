package com.byazt.go;

import android.annotation.SuppressLint;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.byazt.aas.cu;
import com.byazt.aas.rl;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.hkv.tt;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.omf.gt;
import com.byazt.rpt.PlayableEndcardFrameLayout;
import com.byazt.vfu.a;
import com.byazt.xzj.RewardLpBottomView;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 1225, 1631})
@SuppressLint({"ViewConstructor"})
public class CommonEndCardFrameLayout extends AbstractEndCardFrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RewardLpBottomView f14604a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f14605n;
    public PlayableEndcardFrameLayout sp;
    public SSWebView uj;
    public SSWebView ve;

    public CommonEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, ic icVar) {
        super(tTBaseVideoActivity, icVar);
    }

    private void uj() {
        SSWebView sSWebView = new SSWebView(this.f14603c);
        sSWebView.setMaterialMeta(cu.c(this.tt));
        sSWebView.setId(2114387859);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        this.uj = sSWebView;
        this.sp.addView(sSWebView, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    private void ve() {
        SSWebView sSWebView = new SSWebView(this.f14603c);
        sSWebView.setMaterialMeta(cu.c(this.tt));
        sSWebView.setId(2114387697);
        sSWebView.setLayerType(2, null);
        sSWebView.setVisibility(4);
        this.ve = sSWebView;
        addView(sSWebView, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public void c() {
        setId(2114387542);
        if (!TextUtils.isEmpty(xd.i(this.tt)) || !gt.tt().qi()) {
            ve();
        }
        LinearLayout linearLayout = new LinearLayout(this.f14603c);
        linearLayout.setId(2114387541);
        linearLayout.setOrientation(1);
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.f14603c);
        this.sp = playableEndcardFrameLayout;
        playableEndcardFrameLayout.setId(2114387675);
        if (rl.tt(this.tt)) {
            uj();
        }
        FrameLayout frameLayout = new FrameLayout(this.f14603c);
        frameLayout.setId(2114387919);
        frameLayout.setVisibility(8);
        this.sp.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        View viewTt = a.tt(this.f14603c);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-2236963, -1});
        gradientDrawable.setShape(0);
        viewTt.setBackground(gradientDrawable);
        this.sp.addView(viewTt, new FrameLayout.LayoutParams(-1, -1));
        RewardLpBottomView rewardLpBottomView = new RewardLpBottomView(this.f14603c);
        rewardLpBottomView.setId(2114387824);
        rewardLpBottomView.setVisibility(8);
        this.f14604a = rewardLpBottomView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.sp.addView(rewardLpBottomView, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(this.sp, layoutParams2);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(this.f14603c);
        frameLayout2.setId(2114387798);
        frameLayout2.setBackgroundColor(0);
        frameLayout2.setVisibility(8);
        addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        this.f14605n = frameLayout2;
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public SSWebView getEndCardWebView() {
        if (this.ve == null) {
            ve();
        }
        return this.ve;
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public SSWebView getPlayableWebView() {
        if (this.uj == null) {
            uj();
        }
        return this.uj;
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public FrameLayout getVideoArea() {
        return this.f14605n;
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public void setClickListener(tt ttVar) {
    }

    @Override // com.byazt.go.AbstractEndCardFrameLayout
    public void tt() {
        super.tt();
        RewardLpBottomView rewardLpBottomView = this.f14604a;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.tt();
        }
    }
}
