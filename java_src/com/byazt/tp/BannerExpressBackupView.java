package com.byazt.tp;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.gr;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.ff.TTRatingBar;
import com.byazt.nr.z;
import com.byazt.omf.x;
import com.byazt.ouz.BackupView;
import com.byazt.ouz.NativeExpressView;
import com.byazt.ouz.rh;
import com.byazt.ui.UpieImageView;
import com.byazt.vfu.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 436, 437})
public class BannerExpressBackupView extends BackupView {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static rh[] f20333u = {new rh(1, 6.4f, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 100), new rh(3, 1.2f, 600, 500)};
    public TextView gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.pop.ve f20334m;
    public TextView my;
    public int nu;
    public rh rh;
    public ImageView rl;
    public View yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public NativeExpressView f20335z;

    public BannerExpressBackupView(Context context) {
        super(context);
        this.nu = 1;
        this.f18362c = context;
    }

    private void n() {
        int i10 = this.rh.f18482c;
        if (i10 == 2 || i10 == 3) {
            TextView textView = this.my;
            if (textView != null) {
                textView.setTextColor(-1);
            }
            TextView textView2 = this.gt;
            if (textView2 != null) {
                textView2.setTextColor(-1);
            }
        } else {
            TextView textView3 = this.my;
            if (textView3 != null) {
                textView3.setTextColor(-1);
            }
        }
        if (this.rl != null) {
            z.c(getContext(), "tt_dislike_icon_night", this.rl, 320);
        }
    }

    private void tt() {
        this.rh = c(this.f20335z.getExpectExpressWidth(), this.f20335z.getExpectExpressHeight());
        if (this.f20335z.getExpectExpressWidth() <= 0 || this.f20335z.getExpectExpressHeight() <= 0) {
            int iUj = pf.uj(this.f18362c);
            this.f18361a = iUj;
            this.sp = Float.valueOf(iUj / this.rh.ve).intValue();
        } else {
            this.f18361a = pf.ve(this.f18362c, this.f20335z.getExpectExpressWidth());
            this.sp = pf.ve(this.f18362c, this.f20335z.getExpectExpressHeight());
        }
        int i10 = this.f18361a;
        if (i10 > 0 && i10 > pf.uj(this.f18362c)) {
            float fUj = pf.uj(this.f18362c) / this.f18361a;
            this.f18361a = pf.uj(this.f18362c);
            this.sp = Float.valueOf(this.sp * fUj).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.f18361a, this.sp);
        }
        layoutParams.width = this.f18361a;
        layoutParams.height = this.sp;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        rh rhVar = this.rh;
        int i11 = rhVar.f18482c;
        if (i11 == 1 || i11 != 3) {
            ve();
        } else {
            c(rhVar);
        }
    }

    private void uj() {
        int i10 = this.rh.f18482c;
        if (i10 != 2 && i10 != 3) {
            TextView textView = this.my;
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#FF333333"));
            }
            if (this.rl != null) {
                z.c(getContext(), "tt_dislike_icon", this.rl, 320);
                return;
            }
            return;
        }
        TextView textView2 = this.my;
        if (textView2 != null) {
            textView2.setTextColor(Color.parseColor("#FFAEAEAE"));
        }
        TextView textView3 = this.gt;
        if (textView3 != null) {
            textView3.setTextColor(Color.parseColor("#3E3E3E"));
        }
        if (this.rl != null) {
            this.rl.setImageDrawable(a.bm(this.f18362c));
        }
    }

    private void ve() {
        float fVe = (this.sp * 1.0f) / pf.ve(this.f18362c, 50.0f);
        float f10 = this.sp * 1.0f;
        int i10 = this.f18361a;
        if (f10 / i10 > 0.21875f) {
            fVe = (i10 * 1.0f) / pf.ve(this.f18362c, 320.0f);
        }
        View viewIc = a.ic(this.f18362c);
        this.yp = viewIc;
        addView(viewIc);
        this.rl = (ImageView) this.yp.findViewById(2114387854);
        ImageView imageView = (ImageView) this.yp.findViewById(2114387931);
        this.my = (TextView) this.yp.findViewById(2114387940);
        TextView textView = (TextView) this.yp.findViewById(2114387794);
        TTRatingBar tTRatingBar = (TTRatingBar) this.yp.findViewById(2114387891);
        TextView textView2 = (TextView) this.yp.findViewById(2114387633);
        TextView textView3 = this.my;
        textView3.setTextSize(2, pf.tt(this.f18362c, textView3.getTextSize()) * fVe);
        textView.setTextSize(2, pf.tt(this.f18362c, textView.getTextSize()) * fVe);
        textView2.setTextSize(2, pf.tt(this.f18362c, textView2.getTextSize()) * fVe);
        TextView textView4 = (TextView) this.yp.findViewById(2114387658);
        this.rl.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.tp.BannerExpressBackupView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.c();
            }
        });
        pf.c(textView4, this.tt, 27, 11);
        com.byazt.xky.tt.c(this.tt.te()).to(imageView);
        this.my.setText(getTitle());
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (pf.ve(this.f18362c, 45.0f) * fVe);
            layoutParams.height = (int) (pf.ve(this.f18362c, 45.0f) * fVe);
        }
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView2.setText(this.tt.tj());
        }
        int iN = this.tt.z() != null ? this.tt.z().n() : 4;
        textView.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(iN)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(iN);
        tTRatingBar.setStarImageWidth(pf.ve(this.f18362c, 15.0f) * fVe);
        tTRatingBar.setStarImageHeight(pf.ve(this.f18362c, 14.0f) * fVe);
        tTRatingBar.setStarImagePadding(pf.ve(this.f18362c, 4.0f));
        tTRatingBar.c();
        c((View) this, true);
        c((View) textView2, true);
    }

    @Override // com.byazt.ouz.BackupView, com.byazt.xv.c
    public void b_(int i10) {
        super.b_(i10);
        ve(i10);
    }

    @Override // com.byazt.ouz.BackupView
    public void c(View view, int i10, gr grVar) {
        if (this.f20335z != null) {
            if (i10 == 1 || i10 == 2) {
                View viewFindViewById = this.yp.findViewById(2114387854);
                if (i10 == 1) {
                    this.f20335z.getClickListener().tt(viewFindViewById);
                } else {
                    this.f20335z.getClickCreativeListener().tt(viewFindViewById);
                }
            }
            this.f20335z.c(view, i10, grVar, -1);
        }
    }

    public void c(ic icVar, NativeExpressView nativeExpressView, com.byazt.pop.ve veVar) {
        setBackgroundColor(-1);
        this.tt = icVar;
        this.f20335z = nativeExpressView;
        this.f20334m = veVar;
        this.f18365n = com.byazt.dyf.tt.AD_TAG_BANNER;
        nativeExpressView.addView(this, new ViewGroup.LayoutParams(-2, -2));
        int iT = nb.t(this.tt);
        this.f18368x = iT;
        tt(iT);
        tt();
        ve(x.m().pu());
    }

    private void c(ImageView imageView) {
        com.byazt.xky.tt.c(this.tt.pa().get(0)).to(imageView);
        if (com.byazt.ic.c.uj(this.tt)) {
            UpieImageView upieImageView = new UpieImageView(imageView.getContext(), com.byazt.ic.c.i(this.tt), com.byazt.nj.c.c(this.tt), com.byazt.ic.c.da(this.tt));
            upieImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            com.byazt.ic.c.c(imageView, upieImageView);
        }
    }

    private void c(rh rhVar) {
        View viewC;
        float fVe = (this.sp * 1.0f) / pf.ve(this.f18362c, 250.0f);
        View viewHd = a.hd(this.f18362c);
        this.yp = viewHd;
        addView(viewHd);
        FrameLayout frameLayout = (FrameLayout) this.yp.findViewById(2114387772);
        this.rl = (ImageView) this.yp.findViewById(2114387854);
        ImageView imageView = (ImageView) this.yp.findViewById(2114387936);
        ImageView imageView2 = (ImageView) this.yp.findViewById(2114387931);
        this.my = (TextView) this.yp.findViewById(2114387940);
        this.gt = (TextView) this.yp.findViewById(2114387920);
        TextView textView = (TextView) this.yp.findViewById(2114387927);
        TextView textView2 = (TextView) this.yp.findViewById(2114387633);
        pf.c((TextView) this.yp.findViewById(2114387658), this.tt);
        LinearLayout linearLayout = (LinearLayout) this.yp.findViewById(2114387871);
        ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (pf.ve(this.f18362c, 45.0f) * fVe);
            layoutParams.height = (int) (pf.ve(this.f18362c, 45.0f) * fVe);
        }
        TextView textView3 = this.my;
        textView3.setTextSize(2, pf.tt(this.f18362c, textView3.getTextSize()) * fVe);
        TextView textView4 = this.gt;
        textView4.setTextSize(2, pf.tt(this.f18362c, textView4.getTextSize()) * fVe);
        textView.setTextSize(2, pf.tt(this.f18362c, textView.getTextSize()) * fVe);
        textView2.setTextSize(2, pf.tt(this.f18362c, textView2.getTextSize()) * fVe);
        try {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            float f10 = fVe - 1.0f;
            if (f10 > 0.0f) {
                layoutParams2.topMargin = pf.ve(this.f18362c, f10 * 8.0f);
            }
            ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).setMargins(0, (int) (pf.ve(this.f18362c, 16.0f) * fVe), 0, 0);
        } catch (Throwable unused) {
        }
        this.rl.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.tp.BannerExpressBackupView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.c();
            }
        });
        int iVe = pf.ve(this.f18362c, 15.0f);
        pf.c(this.rl, iVe, iVe, iVe, iVe);
        if (xd.z(this.tt) != null && (viewC = c(this.f20335z)) != null) {
            int i10 = (this.f18361a * 406) / 600;
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i10, (i10 * 9) / 16);
            int i11 = rhVar.tt;
            if (i11 == 1) {
                int i12 = (this.f18361a * 406) / 600;
                layoutParams3 = new FrameLayout.LayoutParams(i12, (i12 * 9) / 16);
            } else if (i11 == 2) {
                layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            } else if (i11 == 3) {
                int i13 = (this.sp * 188) / MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME;
                layoutParams3 = new FrameLayout.LayoutParams((i13 * 16) / 9, i13);
            } else if (i11 == 4) {
                int i14 = (this.f18361a * 480) / 690;
                layoutParams3 = new FrameLayout.LayoutParams(i14, (i14 * 9) / 16);
            }
            layoutParams3.gravity = 17;
            frameLayout.addView(viewC, 0, layoutParams3);
            pf.c((View) imageView, 8);
        } else {
            c(imageView);
            pf.c((View) imageView, 0);
        }
        com.byazt.xky.tt.c(this.tt.te()).to(imageView2);
        textView.setText(getNameOrSource());
        this.my.setText(String.format(Locale.getDefault(), "%s提供的广告", getNameOrSource()));
        this.gt.setText(getDescription());
        if (!TextUtils.isEmpty(this.tt.tj())) {
            textView2.setText(this.tt.tj());
        }
        c((View) this, true);
        c((View) textView2, true);
        c(frameLayout);
    }

    private void ve(int i10) {
        if (i10 == 1) {
            n();
            this.yp.setBackgroundColor(0);
        } else {
            uj();
            this.yp.setBackgroundColor(-1);
        }
    }

    private rh c(int i10, int i11) {
        try {
            return ((double) i11) >= Math.floor((((double) i10) * 300.0d) / 600.0d) ? f20333u[1] : f20333u[0];
        } catch (Throwable unused) {
            return f20333u[0];
        }
    }
}
