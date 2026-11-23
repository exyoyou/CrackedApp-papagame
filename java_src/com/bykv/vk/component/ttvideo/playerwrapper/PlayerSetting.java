package com.bykv.vk.component.ttvideo.playerwrapper;

import android.content.Context;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
public final class PlayerSetting {
    private final Context mContext;
    private float mCurrentPlayerVolume = 1.0f;
    private float mLastVolume;
    private MediaPlayer mPlayer;

    public PlayerSetting(Context context, MediaPlayer mediaPlayer) {
        this.mPlayer = mediaPlayer;
        this.mContext = context;
    }

    public float getMaxVolume() {
        Context context = this.mContext;
        if (context == null) {
            return 0.0f;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : 0;
        return streamMaxVolume >= 0 ? streamMaxVolume : 0;
    }

    public float getPlayerVolume() {
        return this.mCurrentPlayerVolume;
    }

    public float getVolume() {
        Context context = this.mContext;
        if (context == null) {
            return 0.0f;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        int streamVolume = audioManager != null ? audioManager.getStreamVolume(3) : 0;
        return streamVolume >= 0 ? streamVolume : 0;
    }

    public boolean isMute() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return false;
        }
        if (mediaPlayer.isOSPlayer()) {
            return getVolume() < 0.001f;
        }
        return this.mPlayer.isMute();
    }

    public void setMute(boolean z10) {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (!mediaPlayer.isOSPlayer()) {
            this.mPlayer.setIsMute(z10);
            return;
        }
        float maxVolume = getMaxVolume();
        if (maxVolume > 0.0f) {
            this.mLastVolume = getVolume() / maxVolume;
        }
        if (z10) {
            this.mPlayer.setVolume(0.0f, 0.0f);
            return;
        }
        MediaPlayer mediaPlayer2 = this.mPlayer;
        float f10 = this.mLastVolume;
        mediaPlayer2.setVolume(f10, f10);
    }

    public void setPlayer(MediaPlayer mediaPlayer) {
        this.mPlayer = mediaPlayer;
    }

    public void setPlayerVolume(float f10) {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.mCurrentPlayerVolume = f10;
        mediaPlayer.setVolume(f10, f10);
    }

    public void setVolume(float f10) {
        AudioManager audioManager;
        if (this.mPlayer == null || (audioManager = (AudioManager) this.mContext.getSystemService("audio")) == null) {
            return;
        }
        audioManager.setStreamVolume(3, (int) f10, 0);
    }
}
