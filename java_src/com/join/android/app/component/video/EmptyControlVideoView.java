package com.join.android.app.component.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.s1;
import com.join.mgps.customview.t;
import com.papa.gsyvideoplayer.utils.k;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class EmptyControlVideoView extends StandardGSYVideoPlayer {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f35023e = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f35024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    t f35026d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyControlVideoView.this.startPlayLogic();
            EmptyControlVideoView.this.f35026d.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyControlVideoView.this.f35026d.dismiss();
        }
    }

    public EmptyControlVideoView(Context context) {
        super(context);
        this.f35025c = false;
        this.mShowFullAnimation = false;
        this.mFullAnimEnd = false;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_empty_control_wufun;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        initCustomView();
    }

    void initCustomView() {
        ImageView imageView = (ImageView) findViewById(R.id.mute);
        this.f35024b = imageView;
        imageView.setOnClickListener(this);
        setMuteView(f35023e);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View v10) {
        super.onClick(v10);
        if (v10.getId() == R.id.mute) {
            setMute(!f35023e);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, v7.a
    public void onPrepared() {
        super.onPrepared();
        if (!this.f35025c) {
            setMute(f35023e);
        } else {
            setMute(true);
            this.f35025c = false;
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceAvailable(Surface surface) {
        RelativeLayout relativeLayout;
        super.onSurfaceAvailable(surface);
        if (com.papa.gsyvideoplayer.utils.f.e() == 0 || (relativeLayout = this.mThumbImageViewLayout) == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, w7.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    public void setMute(boolean mute) {
        setMuteOnly(mute);
        setMuteView(mute);
        f35023e = mute;
    }

    public void setMuteOnly(boolean mute) {
        try {
            com.papa.gsyvideoplayer.d.e0().W(mute);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setMuteView(boolean mute) {
        if (mute) {
            this.f35024b.setImageResource(R.drawable.mute_off);
        } else {
            this.f35024b.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean muteWhenPlay) {
        this.f35025c = muteWhenPlay;
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void setViewShowState(View view, int visibility) {
        if (view != this.mThumbImageViewLayout || visibility == 0) {
            super.setViewShowState(view, visibility);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        String string;
        String str;
        t tVar;
        if (!k.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        if (this.f35026d == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.f35026d = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.f35026d.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f35026d.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f35026d.findViewById(R.id.tip_title);
        View viewFindViewById = this.f35026d.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.f35026d.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.f35026d.findViewById(R.id.dialog_desci);
        int iB = s1.b(getContext());
        if (iB != 0) {
            if (iB != 1) {
                viewFindViewById.setVisibility(8);
                button.setVisibility(8);
                string = getResources().getString(R.string.network_conn_failed);
                str = "关闭";
            }
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new a());
            button.setOnClickListener(new b());
            tVar = this.f35026d;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f35026d.show();
            return;
        }
        viewFindViewById.setVisibility(0);
        button.setVisibility(0);
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new a());
        button.setOnClickListener(new b());
        tVar = this.f35026d;
        if (tVar != null) {
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchDoubleUp() {
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void touchSurfaceMoveFullLogic(float absDeltaX, float absDeltaY) {
        super.touchSurfaceMoveFullLogic(absDeltaX, absDeltaY);
        this.mChangePosition = false;
        this.mChangeVolume = false;
        this.mBrightness = false;
    }

    public EmptyControlVideoView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35025c = false;
        this.mShowFullAnimation = false;
        this.mFullAnimEnd = false;
    }
}
