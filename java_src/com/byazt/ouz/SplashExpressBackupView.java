package com.byazt.ouz;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.ete.zb;
import com.byazt.oq.GifView;
import com.byazt.ui.UpieImageView;
import com.byazt.un.NativeVideoTsView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 2188})
public class SplashExpressBackupView extends BackupView implements com.byazt.dh.ve.InterfaceC0292ve {
    public NativeVideoTsView gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f18428m;
    public com.byazt.uph.tt my;
    public Button nu;
    public FrameLayout rh;
    public com.byazt.dh.ve.InterfaceC0292ve rl;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public NativeExpressView f18429u;
    public View yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public GifView f18430z;

    public SplashExpressBackupView(Context context) {
        super(context);
        this.f18362c = context;
        this.f18365n = "splash_ad";
    }

    private void a() {
        da();
        this.f18430z.setVisibility(0);
        this.rh.setVisibility(8);
        c(this.f18430z, this.tt, this.my);
        this.f18428m.setText(this.tt.op());
        if (this.tt.mf() != null) {
            pf.c((View) this.nu, 8);
        } else {
            pf.c((View) this.nu, 0);
            this.nu.setText(this.tt.tj());
            c((View) this.nu, true);
        }
        setExpressBackupListener(this.yp);
    }

    private void da() {
        View viewC = c(this.f18362c);
        if (viewC == null) {
            return;
        }
        addView(viewC);
    }

    private void i() {
        GifView gifView = new GifView(this.f18362c);
        gifView.setScaleType(ImageView.ScaleType.FIT_XY);
        c(gifView, this.tt, this.my);
        addView(gifView, new ViewGroup.LayoutParams(-1, -1));
        setExpressBackupListener(this);
    }

    private void n() {
        da();
        this.f18430z.setVisibility(0);
        this.rh.setVisibility(8);
        ViewGroup.LayoutParams layoutParams = this.f18430z.getLayoutParams();
        layoutParams.height = pf.ve(this.f18362c, 291.0f);
        this.f18430z.setLayoutParams(layoutParams);
        c(this.f18430z, this.tt, this.my);
        this.f18428m.setText(this.tt.op());
        if (this.tt.mf() != null) {
            pf.c((View) this.nu, 8);
        } else {
            pf.c((View) this.nu, 0);
            this.nu.setText(this.tt.tj());
            c((View) this.nu, true);
        }
        setExpressBackupListener(this.yp);
    }

    private void setExpressBackupListener(View view) {
        ic icVar = this.tt;
        if (icVar == null || icVar.pl() != 1) {
            return;
        }
        c(view, true);
    }

    private void sp() {
        da();
        this.f18430z.setVisibility(8);
        this.rh.setVisibility(0);
        if (xd.z(this.tt) != null) {
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) c(this.f18429u);
            this.gt = nativeVideoTsView;
            nativeVideoTsView.setVideoAdInteractionListener(this);
            if (this.gt == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.rh.addView(this.gt, layoutParams);
        }
        this.f18428m.setText(this.tt.op());
        if (this.tt.mf() != null) {
            pf.c((View) this.nu, 8);
        } else {
            pf.c((View) this.nu, 0);
            this.nu.setText(this.tt.tj());
            c((View) this.nu, true);
        }
        setExpressBackupListener(this.yp);
    }

    private void tt() {
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
        c(this.tt.id(), this.tt);
    }

    private boolean uj() {
        ic icVar = this.tt;
        return icVar != null && icVar.by() == 2;
    }

    private boolean ve() {
        NativeExpressView nativeExpressView = this.f18429u;
        if (nativeExpressView instanceof NativeExpressVideoView) {
            return false;
        }
        boolean z10 = nativeExpressView instanceof NativeExpressView;
        return true;
    }

    private void x() {
        NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) c(this.f18429u);
        this.gt = nativeVideoTsView;
        nativeVideoTsView.setVideoAdInteractionListener(this);
        NativeVideoTsView nativeVideoTsView2 = this.gt;
        if (nativeVideoTsView2 == null) {
            return;
        }
        addView(nativeVideoTsView2);
        setExpressBackupListener(this);
    }

    @Override // com.byazt.ouz.BackupView
    public void c(View view, int i10, com.byazt.ete.gr grVar) {
        NativeExpressView nativeExpressView = this.f18429u;
        if (nativeExpressView != null) {
            nativeExpressView.c(view, i10, grVar, -1);
        }
    }

    public com.byazt.dh.ve getVideoController() {
        NativeVideoTsView nativeVideoTsView = this.gt;
        if (nativeVideoTsView == null) {
            return null;
        }
        return nativeVideoTsView.getNativeVideoController();
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onProgressUpdate(long j10, long j11) {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdContinuePlay() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdPaused() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdStartPlay() {
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoComplete() {
        com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve = this.rl;
        if (interfaceC0292ve != null) {
            interfaceC0292ve.onVideoComplete();
        }
    }

    public void setVideoAdListener(com.byazt.dh.ve.InterfaceC0292ve interfaceC0292ve) {
        this.rl = interfaceC0292ve;
    }

    public void c(com.byazt.uph.tt ttVar, ic icVar, NativeExpressView nativeExpressView) {
        this.tt = icVar;
        this.f18429u = nativeExpressView;
        this.f18361a = pf.ve(this.f18362c, nativeExpressView.getExpectExpressWidth());
        this.sp = pf.ve(this.f18362c, this.f18429u.getExpectExpressWidth());
        this.my = ttVar;
        tt();
        this.f18429u.addView(this, new ViewGroup.LayoutParams(-1, -1));
    }

    private void c(int i10, ic icVar) {
        if (!ve()) {
            if (i10 != 5) {
                x();
                return;
            } else {
                sp();
                return;
            }
        }
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        i();
                        return;
                    }
                }
            }
            if (uj()) {
                i();
                return;
            } else {
                a();
                return;
            }
        }
        n();
    }

    private View c(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(com.byazt.vfu.n.tt());
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = pf.ve(context, 79.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setText("今日推荐");
        textView.setGravity(17);
        textView.setTextSize(2, 30.0f);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextColor(Color.parseColor("#895434"));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        this.f18428m = textView2;
        textView2.setId(2114387471);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 218.0f, resources.getDisplayMetrics()), -2);
        layoutParams3.topMargin = pf.ve(context, 31.0f);
        layoutParams3.gravity = 1;
        this.f18428m.setLayoutParams(layoutParams3);
        this.f18428m.setGravity(1);
        this.f18428m.setTextSize(2, 15.0f);
        this.f18428m.setTextColor(Color.parseColor("#895434"));
        this.f18428m.setSingleLine(false);
        linearLayout.addView(this.f18428m);
        GifView gifView = new GifView(context);
        this.f18430z = gifView;
        gifView.setId(2114387470);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 219.0f, resources.getDisplayMetrics()));
        layoutParams4.topMargin = pf.ve(context, 29.0f);
        layoutParams4.setMarginStart(pf.ve(context, 15.0f));
        layoutParams4.setMarginEnd(pf.ve(context, 15.0f));
        layoutParams4.gravity = 1;
        this.f18430z.setLayoutParams(layoutParams4);
        this.f18430z.setScaleType(ImageView.ScaleType.FIT_XY);
        linearLayout.addView(this.f18430z);
        FrameLayout frameLayout = new FrameLayout(context);
        this.rh = frameLayout;
        frameLayout.setId(2114387469);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 185.0f, resources.getDisplayMetrics()));
        layoutParams5.setMarginStart(pf.ve(context, 15.0f));
        layoutParams5.setMarginEnd(pf.ve(context, 15.0f));
        this.rh.setLayoutParams(layoutParams5);
        this.rh.setVisibility(8);
        linearLayout.addView(this.rh);
        Button button = new Button(context);
        this.nu = button;
        button.setId(2114387468);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 145.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 43.0f, resources.getDisplayMetrics()));
        layoutParams6.topMargin = pf.ve(context, 37.0f);
        layoutParams6.gravity = 1;
        this.nu.setLayoutParams(layoutParams6);
        this.nu.setText("立即下载");
        this.nu.setTextColor(Color.parseColor("#ffffff"));
        this.nu.setTypeface(Typeface.defaultFromStyle(1));
        this.nu.setBackground(com.byazt.vfu.n.tt(context));
        linearLayout.addView(this.nu);
        return linearLayout;
    }

    private void c(GifView gifView) {
        zb zbVar = this.tt.pa().get(0);
        if (zbVar != null) {
            com.byazt.xky.tt.c(zbVar).to(gifView);
        }
        if (com.byazt.ic.c.uj(this.tt)) {
            UpieImageView upieImageView = new UpieImageView(gifView.getContext(), com.byazt.ic.c.i(this.tt), com.byazt.nj.c.c(this.tt), com.byazt.ic.c.da(this.tt));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.ic.c.c(gifView, upieImageView);
        }
    }

    public void c(byte[] bArr, GifView gifView) {
        if (bArr == null || gifView == null) {
            return;
        }
        gifView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        gifView.c(bArr, false);
    }

    public void c(Drawable drawable, GifView gifView) {
        if (drawable == null || gifView == null) {
            return;
        }
        gifView.setImageDrawable(drawable);
    }

    public void c(GifView gifView, ic icVar, com.byazt.uph.tt ttVar) {
        Drawable drawableC;
        if (ttVar == null) {
            c(gifView);
            return;
        }
        if (ttVar.n()) {
            c(ttVar.ve(), gifView);
            return;
        }
        if (icVar.pa() == null || icVar.pa().get(0) == null) {
            return;
        }
        if (ttVar.c() != null) {
            drawableC = new BitmapDrawable(ttVar.c());
        } else {
            drawableC = com.byazt.aas.m.c(ttVar.ve(), icVar.pa().get(0).tt());
        }
        c(drawableC, gifView);
        if (com.byazt.ic.c.uj(this.tt)) {
            UpieImageView upieImageView = new UpieImageView(gifView.getContext(), com.byazt.ic.c.i(this.tt), com.byazt.nj.c.c(this.tt), com.byazt.ic.c.da(this.tt));
            upieImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            com.byazt.ic.c.c(gifView, upieImageView);
        }
    }

    @Override // com.byazt.ouz.BackupView
    public void c(View view, boolean z10) {
        ic icVar = this.tt;
        if (icVar == null || icVar.mf() == null || this.tt.mf().c() != 1) {
            return;
        }
        super.c(view, z10);
    }
}
