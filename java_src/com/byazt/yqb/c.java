package com.byazt.yqb;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.ete.da;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.m;
import com.byazt.or.x;
import com.byazt.yj.gr;
import com.byazt.zd.tt;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 871, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinearLayout f22389a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTBaseVideoActivity f22390c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final tt f22391da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ObjectAnimator f22392i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f22393n;
    public TextView sp;
    public final ic tt;
    public ViewGroup uj;
    public ImageView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ObjectAnimator f22394x;

    public c(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, tt ttVar) {
        this.f22390c = tTBaseVideoActivity;
        this.tt = icVar;
        this.f22391da = ttVar;
    }

    public void c(ViewGroup viewGroup, View view) {
        this.uj = viewGroup;
        this.f22393n = view;
        this.ve = new ImageView(this.f22390c);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, pf.ve(this.f22390c, 76.0f));
        layoutParams.gravity = 80;
        this.ve.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.uj.addView(this.ve, layoutParams);
    }

    public int tt() {
        int identifier = this.f22390c.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return this.f22390c.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public void uj() {
        ObjectAnimator objectAnimator = this.f22394x;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f22394x.cancel();
            this.f22394x = null;
        }
        ObjectAnimator objectAnimator2 = this.f22392i;
        if (objectAnimator2 != null && objectAnimator2.isRunning()) {
            this.f22392i.cancel();
            this.f22392i = null;
        }
        LinearLayout linearLayout = this.f22389a;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        View view = this.f22393n;
        if (view != null) {
            view.setTranslationY(0.0f);
        }
        ImageView imageView = this.ve;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.f22391da.x();
    }

    public void ve() {
        uj();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f22393n, "alpha", 1.0f, 0.3f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.yqb.c.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                c.this.f22393n.setAlpha(1.0f);
                c.this.f22391da.i();
            }
        });
        objectAnimatorOfFloat.start();
    }

    public void c() {
        int iZ;
        LinearLayout linearLayout = new LinearLayout(this.f22390c);
        this.f22389a = linearLayout;
        linearLayout.setGravity(1);
        this.f22389a.setPadding(0, pf.ve(this.f22390c, 16.0f), 0, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, pf.ve(this.f22390c, 76.0f));
        TextView textView = new TextView(this.f22390c);
        this.sp = textView;
        textView.setTextSize(12.0f);
        this.sp.setTextColor(-1);
        this.sp.setSingleLine();
        this.sp.setEllipsize(TextUtils.TruncateAt.START);
        this.sp.setGravity(5);
        this.sp.setMaxWidth(pf.ve(this.f22390c, 260.0f));
        this.f22389a.addView(this.sp);
        TextView textView2 = new TextView(this.f22390c);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(-1);
        textView2.setTypeface(Typeface.DEFAULT_BOLD);
        textView2.setGravity(17);
        textView2.setSingleLine();
        textView2.setText("取消");
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.yqb.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.uj();
            }
        });
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = pf.ve(this.f22390c, 10.0f);
        this.f22389a.addView(textView2, layoutParams2);
        c(25, xd.tt(this.tt));
        int iVe = pf.ve(this.f22390c, 76.0f);
        this.uj.addView(this.f22389a, layoutParams);
        try {
            int iTt = x.tt(this.f22390c);
            if (pf.uj((Activity) this.f22390c)) {
                iZ = (x.ve(this.f22390c) - iTt) - tt();
            } else {
                iZ = pf.z(this.f22390c);
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f22389a, "translationY", iTt, (iTt - iVe) + iZ);
            this.f22394x = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(300L);
            this.f22394x.start();
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f22393n, "translationY", 0.0f, -iVe);
            this.f22392i = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(300L);
            this.f22392i.start();
        } catch (Throwable th) {
            m.uj("layout", th.getMessage());
        }
    }

    public void c(final int i10, String str) {
        com.byazt.xky.tt.c(str).type(2).config(Bitmap.Config.ARGB_8888).to(new gr<Bitmap>() { // from class: com.byazt.yqb.c.2
            @Override // com.byazt.yj.gr
            public void onFailed(int i11, String str2, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(com.byazt.yj.m<Bitmap> mVar) {
                try {
                    Bitmap result = mVar.getResult();
                    if (result == null) {
                        return;
                    }
                    if (result.getConfig() == Bitmap.Config.RGB_565) {
                        result = result.copy(Bitmap.Config.ARGB_8888, true);
                    }
                    Bitmap bitmapC = com.byazt.or.tt.c(c.this.f22390c, result, i10);
                    if (bitmapC == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(c.this.f22390c.getResources(), bitmapC);
                    com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.yqb.c.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (c.this.f22389a != null) {
                                c.this.f22389a.setBackgroundColor(Color.parseColor("#66000000"));
                            }
                            if (c.this.ve != null) {
                                c.this.ve.setImageDrawable(bitmapDrawable);
                            }
                        }
                    });
                } catch (Throwable th) {
                    m.uj("layout", th.getMessage());
                }
            }
        }, 4);
    }

    public void c(com.byazt.hkv.tt ttVar) {
        da daVar = new da();
        daVar.ve(true);
        if (ttVar != null) {
            ttVar.c(daVar);
            ttVar.c(null, daVar);
        }
    }

    public void c(long j10) {
        TextView textView = this.sp;
        if (textView != null) {
            textView.setText("已为您加载更多详情，" + j10 + "秒后拉起展示");
        }
    }
}
