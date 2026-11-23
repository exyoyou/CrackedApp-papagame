package com.papa.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.papa.gsyvideoplayer.R;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GSYSampleADVideoPlayer extends ListGSYVideoPlayer {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected View f77120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ViewGroup f77121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected TextView f77122f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f77123g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f77124h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYSampleADVideoPlayer.this.f();
        }
    }

    public static class b extends com.papa.gsyvideoplayer.model.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static int f77126e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static int f77127f = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f77128c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f77129d;

        public b(String str, String str2, int i10) {
            this(str, str2, i10, false);
        }

        public boolean e() {
            return this.f77129d;
        }

        public void f(boolean z10) {
            this.f77129d = z10;
        }

        public void g(int i10) {
            this.f77128c = i10;
        }

        public int getType() {
            return this.f77128c;
        }

        public b(String str, String str2, int i10, boolean z10) {
            super(str, str2);
            this.f77128c = i10;
            this.f77129d = z10;
        }
    }

    public GSYSampleADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        this.f77123g = false;
        this.f77124h = false;
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer, com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer
    protected void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer;
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer2 = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer2;
        gSYSampleADVideoPlayer2.f77123g = gSYSampleADVideoPlayer.f77123g;
        gSYSampleADVideoPlayer2.f77124h = gSYSampleADVideoPlayer.f77124h;
        gSYSampleADVideoPlayer2.k();
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean g(List<com.papa.gsyvideoplayer.model.b> list, boolean z10, int i10) {
        return h(list, z10, i10, null);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_sample_ad;
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean h(List<com.papa.gsyvideoplayer.model.b> list, boolean z10, int i10, File file) {
        return i(list, z10, i10, file, new HashMap());
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        if (this.f77124h && this.f77123g) {
            return;
        }
        super.hideAllWidget();
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    public boolean i(List<com.papa.gsyvideoplayer.model.b> list, boolean z10, int i10, File file, Map<String, String> map) {
        return j(list, z10, i10, file, map, true);
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    protected void init(Context context) {
        super.init(context);
        this.f77120d = findViewById(R.id.jump_ad);
        this.f77122f = (TextView) findViewById(R.id.ad_time);
        this.f77121e = (ViewGroup) findViewById(R.id.widget_container);
        View view = this.f77120d;
        if (view != null) {
            view.setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer
    protected boolean j(List<com.papa.gsyvideoplayer.model.b> list, boolean z10, int i10, File file, Map<String, String> map, boolean z11) {
        com.papa.gsyvideoplayer.model.b bVar = list.get(i10);
        if (bVar instanceof b) {
            b bVar2 = (b) bVar;
            if (bVar2.e() && i10 < list.size() - 1) {
                return j(list, z10, i10 + 1, file, map, z11);
            }
            this.f77123g = bVar2.getType() == b.f77127f;
        }
        k();
        return super.j(list, z10, i10, file, map, z11);
    }

    protected void k() {
        View view = this.f77120d;
        if (view != null) {
            view.setVisibility((this.f77124h && this.f77123g) ? 0 : 8);
        }
        TextView textView = this.f77122f;
        if (textView != null) {
            textView.setVisibility((this.f77124h && this.f77123g) ? 0 : 8);
        }
        ViewGroup viewGroup = this.f77121e;
        if (viewGroup != null) {
            viewGroup.setVisibility((this.f77124h && this.f77123g) ? 8 : 0);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor((this.f77124h && this.f77123g) ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        TextView textView2 = this.mCurrentTimeTextView;
        if (textView2 != null) {
            textView2.setVisibility((this.f77124h && this.f77123g) ? 4 : 0);
        }
        TextView textView3 = this.mTotalTimeTextView;
        if (textView3 != null) {
            textView3.setVisibility((this.f77124h && this.f77123g) ? 4 : 0);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null) {
            seekBar.setVisibility((this.f77124h && this.f77123g) ? 4 : 0);
            this.mProgressBar.setEnabled((this.f77124h && this.f77123g) ? false : true);
        }
    }

    public boolean l(ArrayList<b> arrayList, boolean z10, int i10) {
        return g((ArrayList) arrayList.clone(), z10, i10);
    }

    public boolean m(ArrayList<b> arrayList, boolean z10, int i10, File file) {
        return h((ArrayList) arrayList.clone(), z10, i10, file);
    }

    public boolean n(ArrayList<b> arrayList, boolean z10, int i10, File file, Map<String, String> map) {
        return i((ArrayList) arrayList.clone(), z10, i10, file, map);
    }

    @Override // com.papa.gsyvideoplayer.video.ListGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
        this.f77124h = true;
        k();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setProgressAndTime(int i10, int i11, int i12, int i13, boolean z10) {
        super.setProgressAndTime(i10, i11, i12, i13, z10);
        TextView textView = this.f77122f;
        if (textView == null || i12 <= 0) {
            return;
        }
        textView.setText("" + ((i13 / 1000) - (i12 / 1000)));
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchDoubleUp() {
        if (this.f77123g) {
            return;
        }
        super.touchDoubleUp();
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMove(float f10, float f11, float f12) {
        if (this.mChangePosition && this.f77123g) {
            return;
        }
        super.touchSurfaceMove(f10, f11, f12);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMoveFullLogic(float f10, float f11) {
        int i10 = this.mThreshold;
        if (f10 > i10 || f11 > i10) {
            int iH = com.papa.gsyvideoplayer.utils.b.h(getContext());
            if (!this.f77123g || f10 < this.mThreshold || Math.abs(iH - this.mDownX) <= this.mSeekEndOffset) {
                super.touchSurfaceMoveFullLogic(f10, f11);
            } else {
                this.mChangePosition = true;
                this.mDownPosition = getCurrentPositionWhenPlaying();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceUp() {
        if (this.mChangePosition && this.f77123g) {
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
            imageView.setImageResource(R.drawable.video_click_pause_selector);
        } else if (i10 == 7) {
            imageView.setImageResource(R.drawable.video_click_play_selector);
        } else {
            imageView.setImageResource(R.drawable.video_click_play_selector);
        }
    }

    public GSYSampleADVideoPlayer(Context context) {
        super(context);
        this.f77123g = false;
        this.f77124h = false;
    }

    public GSYSampleADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f77123g = false;
        this.f77124h = false;
    }
}
