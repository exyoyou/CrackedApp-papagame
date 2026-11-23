package com.papa.gsyvideoplayer.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.OrientationEventListener;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f77096n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f77097o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f77098p = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f77099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GSYBaseVideoPlayer f77100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OrientationEventListener f77101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m f77102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f77103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f77104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f77105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f77106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f77107i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f77108j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f77109k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f77110l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f77111m;

    class a extends OrientationEventListener {
        a(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        @SuppressLint({"SourceLockedOrientationActivity"})
        public void onOrientationChanged(int i10) {
            if ((Settings.System.getInt(n.this.f77099a.getContentResolver(), "accelerometer_rotation", 0) == 1) || !n.this.f77109k || (n.this.f77111m && n.this.r() != 0)) {
                if ((n.this.f77100b == null || !n.this.f77100b.isVerticalFullByVideoSize()) && !n.this.f77110l) {
                    if ((i10 >= 0 && i10 <= n.this.f77102d.d()) || i10 >= n.this.f77102d.c()) {
                        if (n.this.f77105g) {
                            if (n.this.f77104f <= 0 || n.this.f77106h) {
                                n.this.f77107i = true;
                                n.this.f77105g = false;
                                n.this.f77104f = 0;
                                return;
                            }
                            return;
                        }
                        if (n.this.f77104f > 0) {
                            if (!n.this.f77111m) {
                                n.this.f77103e = 1;
                                n.this.N(1);
                                if (n.this.f77100b.getFullscreenButton() != null) {
                                    if (n.this.f77100b.isIfCurrentIsFullscreen()) {
                                        n.this.f77100b.getFullscreenButton().setImageResource(n.this.f77100b.getShrinkImageRes());
                                    } else {
                                        n.this.f77100b.getFullscreenButton().setImageResource(n.this.f77100b.getEnlargeImageRes());
                                    }
                                }
                                n.this.f77104f = 0;
                            }
                            n.this.f77105g = false;
                            return;
                        }
                        return;
                    }
                    if (i10 >= n.this.f77102d.b() && i10 <= n.this.f77102d.a()) {
                        if (n.this.f77105g) {
                            if (n.this.f77104f == 1 || n.this.f77107i) {
                                n.this.f77106h = true;
                                n.this.f77105g = false;
                                n.this.f77104f = 1;
                                return;
                            }
                            return;
                        }
                        if (n.this.f77104f != 1) {
                            n.this.f77103e = 0;
                            n.this.N(0);
                            if (n.this.f77100b.getFullscreenButton() != null) {
                                n.this.f77100b.getFullscreenButton().setImageResource(n.this.f77100b.getShrinkImageRes());
                            }
                            n.this.f77104f = 1;
                            n.this.f77105g = false;
                            return;
                        }
                        return;
                    }
                    if (i10 <= n.this.f77102d.f() || i10 >= n.this.f77102d.e()) {
                        return;
                    }
                    if (n.this.f77105g) {
                        if (n.this.f77104f == 2 || n.this.f77107i) {
                            n.this.f77106h = true;
                            n.this.f77105g = false;
                            n.this.f77104f = 2;
                            return;
                        }
                        return;
                    }
                    if (n.this.f77104f != 2) {
                        n.this.f77103e = 0;
                        n.this.N(8);
                        if (n.this.f77100b.getFullscreenButton() != null) {
                            n.this.f77100b.getFullscreenButton().setImageResource(n.this.f77100b.getShrinkImageRes());
                        }
                        n.this.f77104f = 2;
                        n.this.f77105g = false;
                    }
                }
            }
        }
    }

    public n(Activity activity, GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        this(activity, gSYBaseVideoPlayer, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i10) {
        try {
            this.f77099a.setRequestedOrientation(i10);
        } catch (IllegalStateException e10) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 == 26 || i11 == 27) {
                c.f("OrientationUtils", e10);
            } else {
                e10.printStackTrace();
            }
        }
    }

    private void v(Activity activity) {
        if (this.f77104f == 0) {
            int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
            if (rotation == 0) {
                this.f77104f = 0;
                this.f77103e = 1;
            } else if (rotation == 3) {
                this.f77104f = 2;
                this.f77103e = 8;
            } else {
                this.f77104f = 1;
                this.f77103e = 0;
            }
        }
    }

    public boolean A() {
        return this.f77111m;
    }

    public boolean B() {
        return this.f77110l;
    }

    public boolean C() {
        return this.f77109k;
    }

    public void D() {
        OrientationEventListener orientationEventListener = this.f77101c;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public void E() {
        GSYBaseVideoPlayer gSYBaseVideoPlayer;
        if (this.f77104f == 0 && (gSYBaseVideoPlayer = this.f77100b) != null && gSYBaseVideoPlayer.isVerticalFullByVideoSize()) {
            return;
        }
        this.f77105g = true;
        if (this.f77104f == 0) {
            if (this.f77099a.getRequestedOrientation() == 8) {
                this.f77103e = 8;
            } else {
                this.f77103e = 0;
            }
            N(this.f77103e);
            if (this.f77100b.getFullscreenButton() != null) {
                this.f77100b.getFullscreenButton().setImageResource(this.f77100b.getShrinkImageRes());
            }
            this.f77104f = 1;
            this.f77106h = false;
            return;
        }
        this.f77103e = 1;
        N(1);
        if (this.f77100b.getFullscreenButton() != null) {
            if (this.f77100b.isIfCurrentIsFullscreen()) {
                this.f77100b.getFullscreenButton().setImageResource(this.f77100b.getShrinkImageRes());
            } else {
                this.f77100b.getFullscreenButton().setImageResource(this.f77100b.getEnlargeImageRes());
            }
        }
        this.f77104f = 0;
        this.f77107i = false;
    }

    public void F(boolean z10) {
        this.f77105g = z10;
    }

    public void G(boolean z10) {
        this.f77106h = z10;
    }

    public void H(boolean z10) {
        this.f77107i = z10;
    }

    public void I(boolean z10) {
        this.f77108j = z10;
        if (z10) {
            this.f77101c.enable();
        } else {
            this.f77101c.disable();
        }
    }

    public void J(int i10) {
        this.f77104f = i10;
    }

    public void K(boolean z10) {
        this.f77110l = z10;
    }

    public void L(boolean z10) {
        this.f77111m = z10;
    }

    public void M(m mVar) {
        this.f77102d = mVar;
    }

    public void O(boolean z10) {
        this.f77109k = z10;
    }

    public void P(int i10) {
        this.f77103e = i10;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public int q() {
        if (this.f77104f <= 0) {
            return 0;
        }
        this.f77105g = true;
        N(1);
        GSYBaseVideoPlayer gSYBaseVideoPlayer = this.f77100b;
        if (gSYBaseVideoPlayer != null && gSYBaseVideoPlayer.getFullscreenButton() != null) {
            this.f77100b.getFullscreenButton().setImageResource(this.f77100b.getEnlargeImageRes());
        }
        this.f77104f = 0;
        this.f77107i = false;
        return 500;
    }

    public int r() {
        return this.f77104f;
    }

    public m s() {
        return this.f77102d;
    }

    public int t() {
        return this.f77103e;
    }

    protected void u() {
        a aVar = new a(this.f77099a.getApplicationContext());
        this.f77101c = aVar;
        aVar.enable();
    }

    public boolean w() {
        return this.f77105g;
    }

    public boolean x() {
        return this.f77106h;
    }

    public boolean y() {
        return this.f77107i;
    }

    public boolean z() {
        return this.f77108j;
    }

    public n(Activity activity, GSYBaseVideoPlayer gSYBaseVideoPlayer, m mVar) {
        this.f77103e = 1;
        this.f77104f = 0;
        this.f77105g = false;
        this.f77106h = false;
        this.f77108j = true;
        this.f77109k = true;
        this.f77110l = false;
        this.f77111m = false;
        this.f77099a = activity;
        this.f77100b = gSYBaseVideoPlayer;
        if (mVar == null) {
            this.f77102d = new m();
        } else {
            this.f77102d = mVar;
        }
        v(activity);
        u();
    }
}
