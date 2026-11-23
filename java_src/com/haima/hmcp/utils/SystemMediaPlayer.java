package com.haima.hmcp.utils;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.Log;
import android.view.SurfaceHolder;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class SystemMediaPlayer {
    private final String TAG = "SystemMediaPlayer";
    public boolean isPlayFile = false;
    private Context mContext;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private int mPosition;
    private MediaPlayer mediaPlayer;
    private SurfaceHolder msurfaceHolder;

    public SystemMediaPlayer(Context context, MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mContext = context;
        this.mOnCompletionListener = onCompletionListener;
    }

    private void setMediaPlayerListenrs() {
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.haima.hmcp.utils.SystemMediaPlayer.1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                SystemMediaPlayer.this.mediaPlayer.start();
                if (SystemMediaPlayer.this.mPosition != 0) {
                    SystemMediaPlayer systemMediaPlayer = SystemMediaPlayer.this;
                    systemMediaPlayer.seek(systemMediaPlayer.mPosition);
                }
            }
        });
        this.mediaPlayer.setOnCompletionListener(this.mOnCompletionListener);
        this.mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.haima.hmcp.utils.SystemMediaPlayer.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                return false;
            }
        });
        this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.haima.hmcp.utils.SystemMediaPlayer.3
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                SystemMediaPlayer.this.mediaPlayer.start();
            }
        });
    }

    public MediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public void play(String str) {
        play(str, 0);
    }

    public void seSurfaceHolder(SurfaceHolder surfaceHolder) {
        this.msurfaceHolder = surfaceHolder;
    }

    public void seek(int i10) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo(i10);
        }
    }

    public void stop() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            this.isPlayFile = false;
            mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
    }

    public void play(String str, int i10) {
        this.mPosition = i10;
        File file = new File(str);
        if (!file.exists()) {
            CountlyUtil.recordErrorEvent("SystemMediaPlayer::play::video no exists");
            LogUtils.e("SystemMediaPlayer", "视频文件路径错误");
            return;
        }
        this.isPlayFile = true;
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mediaPlayer = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.mediaPlayer.setDataSource(file.getAbsolutePath());
            this.mediaPlayer.setDisplay(this.msurfaceHolder);
            this.mediaPlayer.prepareAsync();
            setMediaPlayerListenrs();
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("SystemMediaPlayer::play::" + Log.getStackTraceString(e10));
            CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_TITLE_PLAY_FAIL);
            e10.printStackTrace();
        }
    }
}
