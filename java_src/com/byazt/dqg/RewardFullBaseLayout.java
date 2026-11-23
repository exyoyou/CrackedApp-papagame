package com.byazt.dqg;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.byazt.aas.pf;
import com.byazt.ff.TTProgressBar;
import com.byazt.nr.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 74, 1127})
public class RewardFullBaseLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f13075a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TTProgressBar f13076c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public FrameLayout f13077da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FrameLayout f13078i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13079m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f13080n;
    public int nu;
    public FrameLayout sl;
    public FrameLayout sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public FrameLayout f13081t;
    public TTProgressBar tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public FrameLayout f13082u;
    public long uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public FrameLayout f13083x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f13084z;

    public interface c {
        void c();
    }

    public RewardFullBaseLayout(Context context) {
        super(context);
    }

    private FrameLayout n() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    private FrameLayout tt() {
        this.f13082u = n();
        FrameLayout frameLayoutN = n();
        this.f13081t = frameLayoutN;
        this.f13082u.addView(frameLayoutN);
        FrameLayout frameLayoutN2 = n();
        this.sp = frameLayoutN2;
        frameLayoutN2.setVisibility(8);
        this.f13081t.addView(this.sp);
        FrameLayout frameLayoutN3 = n();
        this.f13083x = frameLayoutN3;
        frameLayoutN3.setVisibility(8);
        this.f13081t.addView(this.f13083x);
        this.sl = n();
        return this.f13082u;
    }

    private FrameLayout uj() {
        FrameLayout frameLayoutN = n();
        this.f13077da = frameLayoutN;
        return frameLayoutN;
    }

    private FrameLayout ve() {
        FrameLayout frameLayoutN = n();
        this.f13078i = frameLayoutN;
        return frameLayoutN;
    }

    public void c(com.byazt.fcd.c cVar) {
        FrameLayout frameLayoutN = n();
        this.f13075a = frameLayoutN;
        frameLayoutN.setPadding(this.yp, this.f13084z, this.f13079m, this.nu);
        this.f13075a.setClipChildren(false);
        this.f13075a.addView(tt());
        this.f13075a.addView(ve());
        this.f13075a.addView(uj());
        addView(this.f13075a);
        this.sp.addView(cVar.i());
        this.f13078i.addView(cVar.da());
        this.f13077da.addView(cVar.sl());
    }

    public FrameLayout getEasyPlayableContainer() {
        return this.sl;
    }

    public FrameLayout getEndCardFrameContainer() {
        return this.f13078i;
    }

    public FrameLayout getExpressFrameContainer() {
        return this.f13083x;
    }

    public FrameLayout getSceneFrame() {
        return this.f13081t;
    }

    public FrameLayout getSceneFrameContainer() {
        return this.f13082u;
    }

    public FrameLayout getTopFrameContainer() {
        return this.f13077da;
    }

    public FrameLayout getWidgetFrameContainer() {
        return this.sp;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f13080n == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ve = motionEvent.getY();
            this.uj = System.currentTimeMillis();
        } else if (action == 1) {
            float y10 = motionEvent.getY();
            float f10 = this.ve;
            if (y10 < f10 && Math.abs(y10 - f10) > pf.ve(getContext(), 30.0f)) {
                this.f13080n.c();
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void c(int i10) {
        if (this.f13076c == null) {
            this.f13076c = new TTProgressBar(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.f13076c.setLayoutParams(layoutParams);
            try {
                z.c(getContext(), "tt_normalscreen_loading", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.dqg.RewardFullBaseLayout.1
                    @Override // com.byazt.qr.c
                    public void c(Bitmap bitmap) {
                        RewardFullBaseLayout.this.f13076c.setIndeterminateDrawable(com.byazt.vfu.n.c(RewardFullBaseLayout.this.getContext(), new BitmapDrawable(RewardFullBaseLayout.this.getContext().getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
                    }
                }, 320);
            } catch (Throwable unused) {
            }
            addView(this.f13076c);
        }
        this.f13076c.setVisibility(i10);
    }

    public void c(int i10, TTProgressBar tTProgressBar) {
        TTProgressBar tTProgressBar2 = this.tt;
        if (tTProgressBar2 != null) {
            tTProgressBar2.setVisibility(8);
            removeView(this.tt);
        }
        if (tTProgressBar == null) {
            return;
        }
        this.tt = tTProgressBar;
        addView(tTProgressBar);
        this.tt.setVisibility(i10);
    }

    public void c(c cVar) {
        this.f13080n = cVar;
    }

    public void c() {
        this.f13080n = null;
    }

    public void c(int i10, int i11, int i12, int i13) {
        this.yp = i10;
        this.f13084z = i11;
        this.f13079m = i12;
        this.nu = i13;
    }
}
