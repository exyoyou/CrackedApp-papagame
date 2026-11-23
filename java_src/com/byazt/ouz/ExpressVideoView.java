package com.byazt.ouz;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.un.NativeVideoTsView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 1397})
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18372c;
    public boolean gu;
    public boolean qy;
    public boolean rl;
    public ImageView tt;

    public ExpressVideoView(Context context, ic icVar, String str, boolean z10) {
        super(context, icVar, false, false, str, false, false);
        this.rl = false;
        if ("draw_ad".equals(str)) {
            this.rl = true;
        }
        this.qy = z10;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void rl() {
        t();
        RelativeLayout relativeLayout = this.f20749da;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            }
            com.byazt.xky.tt.c(xd.tt(this.uj)).to(this.sl);
            c(this.sl, xd.tt(this.uj));
        }
        x();
    }

    private void x() {
        pf.c((View) this.f20749da, 0);
        pf.c((View) this.sl, 0);
        pf.c((View) this.f20761u, 8);
    }

    public void E_() {
        ImageView imageView = this.f20761u;
        if (imageView != null) {
            pf.c((View) imageView, 0);
        }
    }

    public void F_() {
        t();
        pf.c((View) this.f20749da, 0);
    }

    public boolean G_() {
        com.byazt.dh.ve veVar = this.f20756n;
        return (veVar == null || veVar.nu() == null || !this.f20756n.nu().isPlaying()) ? false : true;
    }

    public void a() {
        ImageView imageView = this.f20760t;
        if (imageView != null) {
            pf.c((View) imageView, 8);
        }
    }

    @Override // com.byazt.un.NativeVideoTsView
    public com.byazt.dh.ve c(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        return this.qy ? new com.byazt.un.ve(context, viewGroup, icVar, str, z10, z11, z12) : super.c(context, viewGroup, icVar, str, z10, z11, z12);
    }

    public com.byazt.dh.ve getVideoController() {
        return this.f20756n;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.f20760t;
        if (imageView != null && imageView.getVisibility() == 0) {
            pf.n(this.f20749da);
        }
        tt(this.f18372c);
    }

    @Override // com.byazt.un.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        ImageView imageView = this.f20760t;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowFocusChanged(z10);
        } else {
            rl();
        }
    }

    @Override // com.byazt.un.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i10) {
        ImageView imageView = this.f20760t;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i10);
        } else {
            rl();
        }
    }

    public void setCanInterruptVideoPlay(boolean z10) {
        this.rl = z10;
    }

    public void setPauseIcon(boolean z10) {
        if (this.tt == null) {
            this.tt = new ImageView(getContext());
            if (com.byazt.omf.x.m().sv() != null) {
                this.tt.setImageBitmap(com.byazt.omf.x.m().sv());
            } else {
                com.byazt.nr.z.c(com.byazt.omf.gt.getContext(), "tt_new_play_video", this.tt, 320);
            }
            this.tt.setScaleType(ImageView.ScaleType.FIT_XY);
            int iVe = pf.ve(getContext(), this.f20755m);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iVe, iVe);
            layoutParams.gravity = 17;
            this.f20745a.addView(this.tt, layoutParams);
        }
        if (z10) {
            this.tt.setVisibility(0);
        } else {
            this.tt.setVisibility(8);
        }
    }

    public void setShouldCheckNetChange(boolean z10) {
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar != null) {
            veVar.n(z10);
        }
    }

    public void setShowAdInteractionView(boolean z10) {
        com.byazt.dh.tt ttVarRh;
        com.byazt.dh.ve veVar = this.f20756n;
        if (veVar == null || (ttVarRh = veVar.rh()) == null) {
            return;
        }
        ttVarRh.c(z10);
    }

    public void setVideoPlayStatus(int i10) {
        this.f18372c = i10;
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void tt() {
        if (this.rl) {
            super.tt(this.f18372c);
        }
    }

    public void ve() {
        ImageView imageView = this.f20761u;
        if (imageView != null) {
            pf.c((View) imageView, 8);
        }
    }

    public void tt(boolean z10) {
        this.gu = z10;
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void c(boolean z10) {
        if (this.gu) {
            super.c(z10);
        }
    }
}
