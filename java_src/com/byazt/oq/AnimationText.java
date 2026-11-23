package com.byazt.oq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.byazt.du.sl;
import com.byazt.nr.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.WeakHandler;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2084})
public class AnimationText extends TextSwitcher implements ViewSwitcher.ViewFactory, WeakHandler.IHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f18167a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Animation.AnimationListener f18168c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f18169da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f18170i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f18171n;
    public int sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f18172t;
    public List<String> tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f18173u;
    public final int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18174x;
    public Handler yp;

    public AnimationText(Context context, int i10, float f10, int i11, int i12) {
        super(context);
        this.tt = new ArrayList();
        this.ve = 0;
        this.uj = 1;
        this.yp = new d(Looper.getMainLooper(), this);
        this.f18168c = new Animation.AnimationListener() { // from class: com.byazt.oq.AnimationText.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AnimationText.this.f18167a != null) {
                    AnimationText.this.f18167a.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.f18171n = context;
        this.f18174x = i10;
        this.f18170i = f10;
        this.f18169da = i11;
        this.f18173u = i12;
        tt();
    }

    private void tt() {
        setFactory(this);
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.f18167a = textView;
        textView.setTextColor(this.f18174x);
        this.f18167a.setTextSize(this.f18170i);
        this.f18167a.setMaxLines(this.f18169da);
        this.f18167a.setTextAlignment(this.f18173u);
        return this.f18167a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.yp.sendEmptyMessageDelayed(1, this.sp);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.yp.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(sl.tt(this.tt.get(this.sl), this.f18170i, false)[0], 1073741824), i10);
        } catch (Exception unused) {
            super.onMeasure(i10, i11);
        }
    }

    public void setAnimationDuration(int i10) {
        this.sp = i10;
    }

    public void setAnimationText(List<String> list) {
        this.tt = list;
    }

    public void setAnimationType(int i10) {
        this.f18172t = i10;
    }

    public void setMaxLines(int i10) {
        this.f18169da = i10;
    }

    public void setTextColor(int i10) {
        this.f18174x = i10;
    }

    public void setTextSize(float f10) {
        this.f18170i = f10;
    }

    public void c() {
        int i10 = this.f18172t;
        if (i10 == 1) {
            setInAnimation(com.byazt.xc.c.tt());
            setOutAnimation(com.byazt.xc.c.ve());
        } else if (i10 == 0) {
            setInAnimation(com.byazt.xc.c.c());
            setOutAnimation(com.byazt.xc.c.c());
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.f18168c);
            getOutAnimation().setAnimationListener(this.f18168c);
        }
        this.yp.sendEmptyMessage(1);
    }
}
