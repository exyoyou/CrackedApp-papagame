package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.widget.AbsListView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.fullscreen_activity)
public class FullScreenActivity extends BaseAppCompatActivity {
    boolean muteBak = false;
    com.danikula.videocache.i proxy;

    @Extra
    VideoInfo videoInfo;

    @ViewById
    StandardVideoView videoPlayer;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FullScreenActivity.this.videoPlayer.getCurrentState() == 0 || FullScreenActivity.this.videoPlayer.getCurrentState() == 7) {
                FullScreenActivity.this.videoPlayer.setMute(false);
                FullScreenActivity.this.videoPlayer.startPlayLogic();
            }
        }
    }

    @AfterViews
    void afterViews() {
        if (this.videoInfo == null) {
            finish();
            return;
        }
        this.proxy = getProxy(this);
        String strY = this.videoInfo.y();
        String strB = this.videoInfo.b();
        this.videoPlayer.setMuteWhenPlay(false);
        this.videoPlayer.setNoneNetFinishActivity(true);
        com.join.android.app.common.utils.l.h(this.videoPlayer.f35112b, strB);
        this.videoPlayer.setPlayTag("FullScreenActivity");
        this.videoPlayer.setUp(strY, 1, "", strB);
    }

    public void autoPlayVideo(AbsListView view) {
    }

    @Click
    void back() {
        finish();
    }

    public com.danikula.videocache.i getProxy(Context context) {
        return MApplication.q(context);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (com.papa.gsyvideoplayer.d.c0(this)) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig == null || newConfig.orientation != 2) {
            this.videoPlayer.getBackButton().performClick();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setSystemUiHide(true);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.papa.gsyvideoplayer.d.j0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.papa.gsyvideoplayer.d.j0();
        StandardVideoView.E = this.muteBak;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.muteBak = StandardVideoView.E;
        startPlay();
    }

    void startPlay() {
        new Handler().postDelayed(new a(), 500L);
    }

    public static class VideoInfo implements Parcelable {
        public static final Parcelable.Creator<VideoInfo> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f60508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f60509c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MediaPlayer f60510d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f60511e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f60512f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f60513g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f60514h;

        class a implements Parcelable.Creator<VideoInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public VideoInfo createFromParcel(Parcel in2) {
                return new VideoInfo(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public VideoInfo[] newArray(int size) {
                return new VideoInfo[size];
            }
        }

        public VideoInfo() {
            this.f60508b = "";
            this.f60509c = "";
            this.f60510d = null;
            this.f60511e = -1;
            this.f60512f = false;
            this.f60513g = false;
            this.f60514h = -1;
        }

        public boolean A() {
            return this.f60513g;
        }

        public boolean B() {
            return this.f60512f;
        }

        public void C(String coverUrl) {
            this.f60509c = coverUrl;
        }

        public void D(int currentPosition) {
            this.f60514h = currentPosition;
        }

        public void E(MediaPlayer mediaPlayer) {
            this.f60510d = mediaPlayer;
        }

        public void F(boolean paused) {
            this.f60513g = paused;
        }

        public void G(int playPosition) {
            this.f60511e = playPosition;
        }

        public void H(String playUrl) {
            this.f60508b = playUrl;
        }

        public void I(boolean playing) {
            this.f60512f = playing;
        }

        public String b() {
            return this.f60509c;
        }

        public int d() {
            return this.f60514h;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaPlayer f() {
            return this.f60510d;
        }

        public String toString() {
            return "VideoInfo{playUrl='" + this.f60508b + "', coverUrl='" + this.f60509c + "', mediaPlayer=" + this.f60510d + ", playPosition=" + this.f60511e + ", isPlaying=" + this.f60512f + ", isPaused=" + this.f60513g + ", currentPosition=" + this.f60514h + '}';
        }

        public int w() {
            return this.f60511e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f60508b);
            dest.writeString(this.f60509c);
            dest.writeInt(this.f60511e);
            dest.writeInt(this.f60514h);
        }

        public String y() {
            return this.f60508b;
        }

        public VideoInfo(String playUrl, String coverUrl, MediaPlayer mediaPlayer) {
            this.f60511e = -1;
            this.f60512f = false;
            this.f60513g = false;
            this.f60514h = -1;
            this.f60508b = playUrl;
            this.f60509c = coverUrl;
            this.f60510d = mediaPlayer;
        }

        protected VideoInfo(Parcel in2) {
            this.f60508b = "";
            this.f60509c = "";
            this.f60510d = null;
            this.f60511e = -1;
            this.f60512f = false;
            this.f60513g = false;
            this.f60514h = -1;
            this.f60508b = in2.readString();
            this.f60509c = in2.readString();
            this.f60511e = in2.readInt();
            this.f60514h = in2.readInt();
        }

        public VideoInfo(String playUrl, String coverUrl, int playPosition, boolean isPlaying, boolean isPaused, int currentPosition) {
            this.f60510d = null;
            this.f60508b = playUrl;
            this.f60509c = coverUrl;
            this.f60511e = playPosition;
            this.f60512f = isPlaying;
            this.f60513g = isPaused;
            this.f60514h = currentPosition;
        }
    }
}
