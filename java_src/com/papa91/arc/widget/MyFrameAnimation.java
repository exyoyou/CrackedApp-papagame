package com.papa91.arc.widget;

import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public class MyFrameAnimation extends AnimationDrawable {
    private int maxDuration;
    private OnFrameAnimationListener onFrameAnimationListener;
    private Handler handler = new Handler();
    private Runnable runnable = new Runnable() { // from class: com.papa91.arc.widget.MyFrameAnimation.1
        @Override // java.lang.Runnable
        public void run() {
            MyFrameAnimation myFrameAnimation = MyFrameAnimation.this;
            if (myFrameAnimation.getFrame(myFrameAnimation.getNumberOfFrames() - 1) != MyFrameAnimation.this.getCurrent()) {
                MyFrameAnimation.this.initHandler();
            } else {
                MyFrameAnimation.this.unRunning();
            }
        }
    };

    public interface OnFrameAnimationListener {
        void onEnd();

        void onStart();
    }

    private int getMaxDuration() {
        for (int i10 = 0; i10 < getNumberOfFrames(); i10++) {
            if (this.maxDuration < getDuration(i10)) {
                this.maxDuration = getDuration(i10);
            }
        }
        int i11 = this.maxDuration;
        if (i11 > 1000) {
            return 1000;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initHandler() {
        Handler handler = this.handler;
        Runnable runnable = this.runnable;
        int maxDuration = this.maxDuration;
        if (maxDuration == 0) {
            maxDuration = getMaxDuration();
        }
        handler.postDelayed(runnable, maxDuration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unRunning() {
        OnFrameAnimationListener onFrameAnimationListener = this.onFrameAnimationListener;
        if (onFrameAnimationListener != null) {
            onFrameAnimationListener.onEnd();
        }
        this.handler.removeCallbacks(this.runnable);
    }

    public void setOnFrameAnimationListener(OnFrameAnimationListener onFrameAnimationListener) {
        this.onFrameAnimationListener = onFrameAnimationListener;
    }

    @Override // android.graphics.drawable.AnimationDrawable, android.graphics.drawable.Animatable
    public void start() {
        super.start();
        initHandler();
        OnFrameAnimationListener onFrameAnimationListener = this.onFrameAnimationListener;
        if (onFrameAnimationListener != null) {
            onFrameAnimationListener.onStart();
        }
    }

    @Override // android.graphics.drawable.AnimationDrawable, android.graphics.drawable.Animatable
    public void stop() {
        super.stop();
    }
}
