package com.byazt.un;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.omf.x;
import com.kwad.library.solder.lib.ext.PluginError;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, PluginError.ERROR_UPD_NO_DOWNLOADER})
@SuppressLint({"ViewConstructor"})
public class NativeDrawVideoTsView extends NativeVideoTsView implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20742c;
    public int tt;

    public NativeDrawVideoTsView(Context context, ic icVar) {
        super(context, icVar);
        this.f20742c = false;
        setOnClickListener(this);
        this.tt = getResources().getConfiguration().orientation;
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.f20760t;
        if (imageView != null && imageView.getVisibility() == 0) {
            pf.n(this.f20749da);
        }
        tt();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        int i10 = this.tt;
        int i11 = configuration.orientation;
        if (i10 == i11) {
            return;
        }
        this.tt = i11;
        pf.c(this, new pf.c() { // from class: com.byazt.un.NativeDrawVideoTsView.1
            @Override // com.byazt.aas.pf.c
            public void c(View view) {
                NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                if (nativeDrawVideoTsView.f20756n == null) {
                    return;
                }
                NativeDrawVideoTsView.this.c(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
            }
        });
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
        this.f20742c = z10;
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void sp() {
        this.f20764z = "draw_ad";
        super.sp();
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void tt() {
        if (this.f20742c) {
            super.tt();
        }
    }

    @Override // com.byazt.un.NativeVideoTsView
    public void uj() {
        int i10 = getResources().getConfiguration().orientation;
        if (this.tt == i10) {
            super.uj();
        } else {
            this.tt = i10;
            pf.c(this, new pf.c() { // from class: com.byazt.un.NativeDrawVideoTsView.2
                @Override // com.byazt.aas.pf.c
                public void c(View view) {
                    NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                    if (nativeDrawVideoTsView.f20756n == null) {
                        return;
                    }
                    NativeDrawVideoTsView.this.c(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
                    NativeDrawVideoTsView.super.uj();
                }
            });
        }
    }

    public void c(Bitmap bitmap, int i10) {
        x.m().c(bitmap);
        this.f20755m = i10;
    }

    @Override // com.byazt.un.NativeVideoTsView
    public com.byazt.dh.ve c(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        return new ve(context, viewGroup, icVar, str, z10, z11, z12);
    }

    public NativeDrawVideoTsView(Context context, ic icVar, String str, boolean z10, boolean z11) {
        super(context, icVar, str, z10, z11);
        this.f20742c = false;
        setOnClickListener(this);
        this.tt = getResources().getConfiguration().orientation;
    }
}
