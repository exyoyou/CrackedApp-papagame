package com.byazt.xjc;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.dqg.RewardFullBaseLayout;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.or;
import com.byazt.fh.a;
import com.byazt.nr.m;
import com.byazt.nr.z;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 511, 13})
public class tt implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f21903a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f21905da;
    public TranslateAnimation gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f21906i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f21907m;
    public LinearLayout my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f21908n;
    public SmallSlideView nu;
    public LinearLayout rh;
    public int sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f21909t;
    public final c.InterfaceC0483c tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f21910u;
    public ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f21911x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public LinearLayout f21912z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f21904c = new AtomicBoolean(false);
    public boolean uj = true;
    public boolean rl = false;
    public boolean qy = false;
    public boolean gu = false;

    /* JADX INFO: renamed from: com.byazt.xjc.tt$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 511, 28})
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            tt.this.tt.c().c(new RewardFullBaseLayout.c() { // from class: com.byazt.xjc.tt.1.1
                @Override // com.byazt.dqg.RewardFullBaseLayout.c
                public void c() {
                    uj ujVar = new uj();
                    ujVar.f21920c = false;
                    ujVar.ve = true;
                    ujVar.uj = true;
                    tt.this.tt.c().c();
                    tt.this.tt.getActivity().c(3, ujVar);
                }
            });
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) tt.this.my.getLayoutParams();
            layoutParams.bottomMargin = -tt.this.my.getMeasuredHeight();
            tt.this.my.setLayoutParams(layoutParams);
            tt.this.my.setVisibility(0);
            tt.this.gt = new TranslateAnimation(0.0f, 0.0f, 0.0f, -tt.this.my.getMeasuredHeight());
            tt.this.gt.setDuration(300L);
            tt.this.gt.setRepeatCount(3);
            tt.this.gt.setRepeatMode(2);
            tt.this.gt.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.xjc.tt.1.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (tt.this.rl) {
                        tt.this.my.postDelayed(new Runnable() { // from class: com.byazt.xjc.tt.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (tt.this.rl && tt.this.gt != null) {
                                    tt.this.tt.c().getSceneFrameContainer().startAnimation(tt.this.gt);
                                }
                            }
                        }, 2000L);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    tt.this.nu.c();
                }
            });
            if (tt.this.gt != null) {
                tt.this.tt.c().getSceneFrameContainer().startAnimation(tt.this.gt);
            }
        }
    }

    public tt(c.InterfaceC0483c interfaceC0483c) {
        this.tt = interfaceC0483c;
    }

    private void da() {
        String str;
        this.sp = this.tt.n() + (or.i() / 1000);
        this.rh = new LinearLayout(this.tt.getActivity());
        int iVe = pf.ve(this.tt.getActivity(), 10.0f);
        this.rh.setPadding(iVe, iVe, iVe, iVe);
        this.rh.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#242424"));
        gradientDrawable.setCornerRadius(com.byazt.pr.c.tt().c(this.tt.getActivity(), 12.0f));
        this.rh.setBackground(gradientDrawable);
        this.nu = new SmallSlideView(this.tt.getActivity());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(pf.ve(this.tt.getActivity(), 80.0f), pf.ve(this.tt.getActivity(), 80.0f));
        layoutParams.gravity = 17;
        this.rh.addView(this.nu, layoutParams);
        TextView textView = new TextView(this.tt.getActivity());
        if (or.da() > 0) {
            str = "上滑继续观看\n提前" + or.da() + "秒领奖";
        } else {
            str = "上滑继续观看\n才能领奖哦";
        }
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTextSize(2, 18.0f);
        this.rh.addView(textView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(pf.ve(this.tt.getActivity(), 160.0f), pf.ve(this.tt.getActivity(), 160.0f));
        layoutParams2.gravity = 17;
        this.tt.c().addView(this.rh, layoutParams2);
        this.my = new LinearLayout(this.tt.getActivity());
        ImageView imageView = new ImageView(this.tt.getActivity());
        z.c((Context) this.tt.getActivity(), "tt_ic_back_light", imageView, 320);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = pf.ve(this.tt.getActivity(), 10.0f);
        layoutParams3.bottomMargin = pf.ve(this.tt.getActivity(), 10.0f);
        this.my.addView(imageView, layoutParams3);
        this.tt.c().getSceneFrameContainer().setClipChildren(false);
        this.my.setVisibility(4);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 80;
        this.tt.c().getSceneFrameContainer().addView(this.my, layoutParams4);
        this.rl = true;
        this.my.post(new AnonymousClass1());
    }

    public void i() {
        TextView textView = this.f21908n;
        if (textView == null || textView.getParent() == null) {
            return;
        }
        ((ViewGroup) this.f21908n.getParent()).removeView(this.f21908n);
        this.f21908n = null;
    }

    @Override // com.byazt.xjc.c
    public void sp() {
        int i10;
        int i11;
        if (c(3)) {
            return;
        }
        if (this.sp > 0 && this.tt.n() >= this.sp) {
            this.sp = 0;
            uj ujVar = new uj();
            ujVar.f21920c = false;
            ujVar.ve = false;
            ujVar.uj = true;
            this.tt.getActivity().c(3, ujVar);
        }
        if (this.f21909t != null && (i11 = this.f21911x) > 0) {
            this.f21911x = Math.max(0, i11 - 1);
            TextView textView = this.f21909t;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f21911x);
            textView.setText(sb2.toString());
            if (this.f21911x == 0) {
                uj ujVar2 = new uj();
                ujVar2.f21920c = false;
                ujVar2.ve = false;
                ujVar2.uj = true;
                this.tt.getActivity().c(1, ujVar2);
                a();
            }
        }
        if (this.f21909t != null) {
            if (or.u() == 1 && or.c(this.tt.ve()) != 1 && !this.f21907m && this.tt.i() && this.tt.x()) {
                uj ujVar3 = new uj();
                ujVar3.f21920c = false;
                ujVar3.ve = false;
                ujVar3.uj = true;
                this.tt.getActivity().c(2, ujVar3);
            }
            if (this.f21906i > 0 || this.yp > 0) {
                if (or.u() != 1) {
                    this.f21906i = Math.max(0, this.f21906i - 1);
                    TextView textView2 = this.f21909t;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f21906i);
                    textView2.setText(sb3.toString());
                    if (this.f21906i == 0) {
                        uj ujVar4 = new uj();
                        ujVar4.f21920c = false;
                        ujVar4.ve = false;
                        ujVar4.uj = true;
                        this.tt.getActivity().c(2, ujVar4);
                        a();
                    }
                } else if (this.tt.i()) {
                    int iMax = Math.max(0, this.yp - 1);
                    this.yp = iMax;
                    if (iMax == 0) {
                        a();
                    }
                } else {
                    this.f21906i = Math.max(0, this.f21906i - 1);
                    TextView textView3 = this.f21909t;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(this.f21906i);
                    textView3.setText(sb4.toString());
                    if (this.f21906i == 0) {
                        uj ujVar5 = new uj();
                        ujVar5.f21920c = false;
                        ujVar5.ve = false;
                        ujVar5.uj = true;
                        this.tt.getActivity().c(2, ujVar5);
                        a();
                    }
                }
            }
        }
        int i12 = this.sl;
        if (i12 > 0) {
            int iMax2 = Math.max(0, i12 - 1);
            this.sl = iMax2;
            if (iMax2 == 0) {
                this.tt.c(-1, this.f21905da);
                return;
            }
            return;
        }
        if (this.f21909t == null || (i10 = this.f21905da) <= 0) {
            return;
        }
        this.f21905da = Math.max(0, i10 - 1);
        TextView textView4 = this.f21909t;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(this.f21905da);
        textView4.setText(sb5.toString());
        if (this.f21905da == 0) {
            a();
            this.f21909t = null;
            this.tt.sl();
        }
    }

    public void x() {
        int iA = this.tt.a();
        String strConcat = "继续看" + iA + "秒可领取奖励";
        ve veVar = this.ve;
        if (veVar != null) {
            if (veVar.ve() > 0) {
                if (iA <= 0) {
                    strConcat = "成功加速" + this.ve.ve() + "秒，奖励已下发";
                } else {
                    strConcat = "加速成功！".concat(String.valueOf(strConcat));
                }
            } else if (iA <= 0) {
                i();
                return;
            }
        }
        TextView textView = this.f21908n;
        if (textView != null) {
            textView.setText(strConcat);
        }
        int i10 = this.f21903a;
        if (i10 <= 0) {
            i();
            return;
        }
        this.f21903a = i10 - 1;
        TextView textView2 = this.f21908n;
        if (textView2 != null) {
            textView2.postDelayed(new Runnable() { // from class: com.byazt.xjc.tt.3
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.x();
                }
            }, 500L);
        }
    }

    @Override // com.byazt.xjc.c
    public void a() {
        if (this.f21912z != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.xjc.tt.4
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    tt.this.f21912z.removeAllViews();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.f21912z.startAnimation(alphaAnimation);
        }
    }

    @Override // com.byazt.xjc.c
    public boolean n() {
        return this.f21904c.get();
    }

    @Override // com.byazt.xjc.c
    public int tt() {
        ve veVar = this.ve;
        if (veVar != null) {
            return veVar.sp();
        }
        return 0;
    }

    @Override // com.byazt.xjc.c
    public boolean uj() {
        return this.ve != null;
    }

    @Override // com.byazt.xjc.c
    public void ve() {
        if (or.u() == 1 && this.gu && this.f21909t != null && this.f21910u != null && !TextUtils.isEmpty(or.sl())) {
            this.f21909t.setText("");
            this.f21910u.setText(or.sl());
            int iT = or.t();
            this.yp = iT;
            if (iT == 0) {
                this.f21906i = 0;
                a();
            }
        }
        if (this.rl && c(3)) {
            SmallSlideView smallSlideView = this.nu;
            if (smallSlideView != null) {
                smallSlideView.tt();
            }
            TranslateAnimation translateAnimation = this.gt;
            if (translateAnimation != null) {
                translateAnimation.cancel();
            }
            LinearLayout linearLayout = this.rh;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
                this.tt.c().removeView(this.rh);
            }
            LinearLayout linearLayout2 = this.my;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
                this.tt.c().getSceneFrameContainer().removeView(this.my);
            }
            this.tt.c().c();
            this.tt.c(3);
            this.rl = false;
        }
    }

    private void tt(final int i10, int i11, int i12) {
        if (i10 == 1) {
            this.f21911x = i11;
        } else if (i10 == 2) {
            i11++;
            this.f21906i = i11;
        } else if (i10 == -1) {
            this.f21905da = i11;
            if (i12 > 0) {
                this.sl = i12;
                return;
            }
            this.sl = 0;
        } else {
            i11 = 0;
        }
        LinearLayout linearLayout = this.f21912z;
        if (linearLayout == null) {
            LinearLayout linearLayout2 = new LinearLayout(this.tt.getActivity());
            this.f21912z = linearLayout2;
            linearLayout2.setBackgroundColor(Color.parseColor("#80161823"));
            this.f21912z.setOrientation(0);
            this.f21912z.setGravity(16);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            ((ViewGroup) this.tt.getActivity().getWindow().getDecorView()).addView(this.f21912z, layoutParams);
        } else {
            linearLayout.removeAllViews();
        }
        TextView textView = new TextView(this.tt.getActivity());
        this.f21909t = textView;
        textView.setTextColor(Color.parseColor("#FFBA33"));
        this.f21909t.setText(String.valueOf(i11));
        this.f21909t.setTypeface(Typeface.DEFAULT_BOLD);
        this.f21909t.setTextSize(2, 14.0f);
        this.f21912z.addView(this.f21909t);
        TextView textView2 = new TextView(this.tt.getActivity());
        this.f21910u = textView2;
        textView2.setTextColor(-1);
        this.f21910u.setTypeface(Typeface.DEFAULT_BOLD);
        this.f21910u.setSingleLine();
        this.f21910u.setEllipsize(TextUtils.TruncateAt.END);
        this.f21910u.setText(or.a(this.tt.ve()));
        this.f21910u.setTextSize(2, 14.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.setMargins(pf.ve(this.tt.getActivity(), 4.0f), 0, 0, 0);
        layoutParams2.weight = 1.0f;
        this.f21912z.addView(this.f21910u, layoutParams2);
        TextView textView3 = new TextView(this.tt.getActivity());
        textView3.setText("取消");
        textView3.setTypeface(Typeface.DEFAULT_BOLD);
        textView3.setTextSize(2, 13.0f);
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.xjc.tt.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i13 = i10;
                tt.this.f21907m = true;
                int i14 = i10;
                if (i14 == 1) {
                    tt.this.f21911x = 0;
                } else if (i14 == 2) {
                    tt.this.f21906i = 0;
                    tt.this.yp = 0;
                } else if (i14 == -1) {
                    tt.this.f21905da = 0;
                    i13 = 2;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("type", i13);
                } catch (JSONException unused) {
                }
                yp.c().c(tt.this.tt.ve(), "stats_switch_tip_cancel", jSONObject);
                tt.this.a();
                tt.this.tt.da();
            }
        });
        this.f21912z.addView(textView3);
        this.f21912z.setPadding(pf.ve(this.tt.getActivity(), 20.0f), pf.ve(this.tt.getActivity(), 16.0f), pf.ve(this.tt.getActivity(), 20.0f), pf.z(this.tt.getActivity()));
        this.f21912z.setClickable(false);
        if (i10 == 1) {
            this.qy = true;
        } else if (i10 == 2) {
            this.gu = true;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, pf.ve(this.tt.getActivity(), 100.0f), 0.0f);
        translateAnimation.setDuration(300L);
        translateAnimation.setFillAfter(true);
        this.f21912z.startAnimation(translateAnimation);
    }

    @Override // com.byazt.xjc.c
    public void c(ve veVar, int i10, uj ujVar) {
        ic icVar = null;
        try {
            JSONArray jSONArray = new JSONArray(this.tt.ve().hl());
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                ic icVarC = com.byazt.omf.c.c(jSONArray.getJSONObject(i11));
                if (c(icVarC, i10)) {
                    try {
                        jSONArray.remove(i11);
                        icVarC.sv(jSONArray.toString());
                        icVar = icVarC;
                        break;
                    } catch (JSONException e10) {
                        e = e10;
                        icVar = icVarC;
                        m.c(e);
                    }
                }
            }
        } catch (JSONException e11) {
            e = e11;
        }
        if (icVar != null) {
            if (i10 == 1 && ujVar != null && ujVar.f21920c) {
                if (this.qy) {
                    return;
                }
                this.tt.c(i10, ujVar.tt);
                return;
            }
            if (i10 == 2 && ujVar != null && ujVar.f21920c) {
                if (this.gu) {
                    return;
                }
                this.tt.c(i10, ujVar.tt);
                return;
            }
            if (i10 == 3 && ujVar != null && ujVar.f21920c) {
                if (this.rl) {
                    return;
                }
                this.tt.c(i10, ujVar.tt);
                return;
            }
            com.byazt.dj.tt ttVarC = com.byazt.lvl.c.c().c(icVar, nb.c(icVar, ""));
            if (this.tt.tt()) {
                com.byazt.yi.ve veVar2 = new com.byazt.yi.ve(gt.getContext(), icVar, ttVarC);
                veVar2.setInsertAdBundle(veVar);
                veVar2.showRewardVideoAd(this.tt.getActivity());
            } else {
                com.byazt.yi.tt ttVar = new com.byazt.yi.tt(gt.getContext(), icVar, ttVarC);
                ttVar.setInsertAdBundle(veVar);
                ttVar.showFullScreenVideoAd(this.tt.getActivity());
            }
            this.f21904c.set(true);
        }
    }

    private boolean c(ic icVar, int i10) {
        if (i10 == 1) {
            return or.c(this.tt.tt(), icVar, true);
        }
        if (i10 != 2) {
            return i10 == 3 && or.tt(icVar, true);
        }
        return or.c(icVar, true);
    }

    @Override // com.byazt.xjc.c
    public void c(ve veVar) {
        this.ve = veVar;
    }

    @Override // com.byazt.xjc.c
    public int c() {
        ve veVar = this.ve;
        if (veVar != null) {
            return Math.max(0, veVar.tt() - this.ve.ve());
        }
        return 0;
    }

    @Override // com.byazt.xjc.c
    public void c(boolean z10) {
        this.uj = z10;
    }

    @Override // com.byazt.xjc.c
    public int c(int i10, boolean z10) {
        if (!this.uj || c(i10)) {
            return 0;
        }
        if (i10 == 1) {
            if (or.c(this.tt.ve()) != 1) {
                return 0;
            }
            if (!z10) {
                if (!or.c(this.tt.tt(), uj() ? this.tt.uj() : ic.ve(this.tt.ve()), this.tt.n())) {
                    return 0;
                }
            }
            return i10;
        }
        if (i10 == 2) {
            if (or.tt(this.tt.ve()) != 1) {
                return 0;
            }
            if (!z10 && this.tt.sp() && or.u() == 0) {
                return 0;
            }
            if (or.u() == 1) {
                if (this.f21907m) {
                    return 0;
                }
                if (this.tt.i()) {
                    if (this.tt.x()) {
                        return i10;
                    }
                    return 0;
                }
            }
            if (z10 || or.c(this.tt.n(), this.tt.ve(), this.tt.tt())) {
                return i10;
            }
            return 0;
        }
        if (i10 != 3 || or.ve(this.tt.ve()) != 1 || this.tt.x()) {
            return 0;
        }
        if (z10 || or.c(this.tt.n(), this.tt.ve())) {
            return i10;
        }
        return 0;
    }

    @Override // com.byazt.xjc.c
    public void tt(boolean z10) {
        this.sl = 0;
        if (z10) {
            this.f21905da = 0;
        }
    }

    @Override // com.byazt.xjc.c
    public boolean c(int i10) {
        if (this.tt.i()) {
            return kp.md(this.tt.ve()) == a.f14180n || (kp.md(this.tt.ve()) == a.f14178a && !this.tt.x());
        }
        return false;
    }

    @Override // com.byazt.xjc.c
    public void c(FrameLayout frameLayout) {
        if (frameLayout == null) {
            return;
        }
        if (this.f21908n == null) {
            this.f21908n = pf.yp(this.tt.getActivity());
        }
        if (this.f21908n.getParent() != null) {
            ((ViewGroup) this.f21908n.getParent()).removeView(this.f21908n);
        }
        this.f21903a = or.x() * 2;
        frameLayout.addView(this.f21908n);
        x();
    }

    @Override // com.byazt.xjc.c
    public void c(int i10, int i11, int i12) {
        if (i10 == -1 || i10 == 1 || i10 == 2) {
            tt(i10, i11, i12);
        } else {
            if (i10 != 3) {
                return;
            }
            da();
        }
    }
}
