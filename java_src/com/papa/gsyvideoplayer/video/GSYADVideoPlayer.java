package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.b;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class GSYADVideoPlayer extends StandardGSYVideoPlayer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected View f77116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected TextView f77117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f77118d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GSYADVideoPlayer.this.getGSYVideoManager().w() != null) {
                GSYADVideoPlayer.this.getGSYVideoManager().w().onAutoCompletion();
            }
        }
    }

    public GSYADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected boolean backFromFull(Context context) {
        return b.c0(context);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYADVideoPlayer gSYADVideoPlayer = (GSYADVideoPlayer) gSYBaseVideoPlayer2;
        gSYADVideoPlayer.f77118d = ((GSYADVideoPlayer) gSYBaseVideoPlayer).f77118d;
        gSYADVideoPlayer.f();
    }

    protected void f() {
        View view = this.f77116b;
        if (view != null) {
            view.setVisibility(this.f77118d ? 0 : 8);
        }
        TextView textView = this.f77117c;
        if (textView != null) {
            textView.setVisibility(this.f77118d ? 0 : 8);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor(this.f77118d ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        TextView textView2 = this.mCurrentTimeTextView;
        if (textView2 != null) {
            textView2.setVisibility(this.f77118d ? 4 : 0);
        }
        TextView textView3 = this.mTotalTimeTextView;
        if (textView3 != null) {
            textView3.setVisibility(this.f77118d ? 4 : 0);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setVisibility(this.f77118d ? 4 : 0);
            this.mProgressBar.setEnabled(!this.f77118d);
        }
    }

    public void g() {
        ViewGroup viewGroup = (ViewGroup) com.papa.gsyvideoplayer.utils.b.o(getContext()).findViewById(android.R.id.content);
        View viewFindViewById = viewGroup.findViewById(getFullId());
        if (viewFindViewById != null && viewFindViewById.getParent() != null) {
            viewGroup.removeView((ViewGroup) viewFindViewById.getParent());
        }
        this.mIfCurrentIsFullscreen = false;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getFullId() {
        return b.A;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public com.papa.gsyvideoplayer.video.base.a getGSYVideoManager() {
        b.d0().Q(getContext().getApplicationContext());
        return b.d0();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_ad;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected int getSmallId() {
        return b.f76684z;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        if (this.f77118d) {
            return;
        }
        super.hideAllWidget();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        super.init(context);
        this.f77116b = findViewById(R.id.jump_ad);
        this.f77117c = (TextView) findViewById(R.id.ad_time);
        View view = this.f77116b;
        if (view != null) {
            view.setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.start) {
            super.onClick(view);
        } else if (this.mCurrentState == 7) {
            clickStartIcon();
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
        this.f77118d = true;
        f();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void release() {
        super.release();
        TextView textView = this.f77117c;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void releaseVideos() {
        b.i0();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setProgressAndTime(int i10, int i11, int i12, int i13, boolean z10) {
        super.setProgressAndTime(i10, i11, i12, i13, z10);
        TextView textView = this.f77117c;
        if (textView == null || i12 <= 0) {
            return;
        }
        textView.setText("" + ((i13 / 1000) - (i12 / 1000)));
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchDoubleUp() {
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMove(float f10, float f11, float f12) {
        if (this.mChangePosition) {
            return;
        }
        super.touchSurfaceMove(f10, f11, f12);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMoveFullLogic(float f10, float f11) {
        int i10 = this.mThreshold;
        if (f10 > i10 || f11 > i10) {
            int iH = com.papa.gsyvideoplayer.utils.b.h(getContext());
            if (f10 < this.mThreshold || Math.abs(iH - this.mDownX) <= this.mSeekEndOffset) {
                super.touchSurfaceMoveFullLogic(f10, f11);
            } else {
                this.mChangePosition = true;
                this.mDownPosition = getCurrentPositionWhenPlaying();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceUp() {
        if (this.mChangePosition) {
            return;
        }
        super.touchSurfaceUp();
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void updateStartImage() {
        View view = this.mStartButton;
        if (view == null || !(view instanceof ImageView)) {
            return;
        }
        ImageView imageView = (ImageView) view;
        int i10 = this.mCurrentState;
        if (i10 == 2) {
            imageView.setImageResource(R.drawable.empty_drawable);
        } else if (i10 == 7) {
            imageView.setImageResource(R.drawable.video_click_error_selector);
        } else {
            imageView.setImageResource(R.drawable.empty_drawable);
        }
    }

    public GSYADVideoPlayer(Context context) {
        super(context);
    }

    public GSYADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
