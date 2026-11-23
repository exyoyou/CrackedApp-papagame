package x7;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f97606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f97607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f97608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f97609e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f97610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f97611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private GSYBaseVideoPlayer f97612h;

    public a(GSYBaseVideoPlayer gSYBaseVideoPlayer, int i10, int i11) {
        this.f97608d = i10;
        this.f97609e = i11;
        this.f97612h = gSYBaseVideoPlayer;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f97606b = rawX;
            this.f97607c = rawY;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f97612h.getLayoutParams();
            this.f97610f = rawX - layoutParams.leftMargin;
            this.f97611g = rawY - layoutParams.topMargin;
        } else {
            if (action == 1) {
                return Math.abs(this.f97607c - rawY) >= 5 || Math.abs(this.f97606b - rawX) >= 5;
            }
            if (action == 2) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f97612h.getLayoutParams();
                int i10 = rawX - this.f97610f;
                layoutParams2.leftMargin = i10;
                int i11 = rawY - this.f97611g;
                layoutParams2.topMargin = i11;
                int i12 = this.f97608d;
                if (i10 >= i12) {
                    layoutParams2.leftMargin = i12;
                }
                int i13 = this.f97609e;
                if (i11 >= i13) {
                    layoutParams2.topMargin = i13;
                }
                if (layoutParams2.leftMargin <= 0) {
                    layoutParams2.leftMargin = 0;
                }
                if (layoutParams2.topMargin <= 0) {
                    layoutParams2.topMargin = 0;
                }
                this.f97612h.setLayoutParams(layoutParams2);
            }
        }
        return false;
    }
}
