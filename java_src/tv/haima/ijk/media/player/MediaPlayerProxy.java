package tv.haima.ijk.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import tv.haima.ijk.media.player.misc.IMediaDataSource;
import tv.haima.ijk.media.player.misc.ITrackInfo;

/* JADX INFO: loaded from: classes10.dex */
public class MediaPlayerProxy implements IMediaPlayer {
    protected final IMediaPlayer mBackEndMediaPlayer;

    public MediaPlayerProxy(IMediaPlayer iMediaPlayer) {
        this.mBackEndMediaPlayer = iMediaPlayer;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void frameCapture(ijkFrameCaptureCallback ijkframecapturecallback) {
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getAudioSessionId() {
        return this.mBackEndMediaPlayer.getAudioSessionId();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public long getCurrentPosition() {
        return this.mBackEndMediaPlayer.getCurrentPosition();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mBackEndMediaPlayer.getDataSource();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public long getDuration() {
        return this.mBackEndMediaPlayer.getDuration();
    }

    public IMediaPlayer getInternalMediaPlayer() {
        return this.mBackEndMediaPlayer;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        return this.mBackEndMediaPlayer.getMediaInfo();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public ITrackInfo[] getTrackInfo() {
        return this.mBackEndMediaPlayer.getTrackInfo();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean getUseSurfaceTextureFlag() {
        return false;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mBackEndMediaPlayer.getVideoHeight();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.mBackEndMediaPlayer.getVideoSarDen();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.mBackEndMediaPlayer.getVideoSarNum();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mBackEndMediaPlayer.getVideoWidth();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean isLooping() {
        return this.mBackEndMediaPlayer.isLooping();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean isPlayable() {
        return false;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean isPlaying() {
        return this.mBackEndMediaPlayer.isPlaying();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        this.mBackEndMediaPlayer.pause();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        this.mBackEndMediaPlayer.prepareAsync();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void release() {
        this.mBackEndMediaPlayer.release();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void reset() {
        this.mBackEndMediaPlayer.reset();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void seekTo(long j10) throws IllegalStateException {
        this.mBackEndMediaPlayer.seekTo(j10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setAudioStreamType(int i10) {
        this.mBackEndMediaPlayer.setAudioStreamType(i10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mBackEndMediaPlayer.setDataSource(context, uri);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mBackEndMediaPlayer.setDisplay(surfaceHolder);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z10) {
        this.mBackEndMediaPlayer.setKeepInBackground(z10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setLogEnabled(boolean z10) {
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setLooping(boolean z10) {
        this.mBackEndMediaPlayer.setLooping(z10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnBufferingUpdateListener(final IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this.mBackEndMediaPlayer.setOnBufferingUpdateListener(new IMediaPlayer.OnBufferingUpdateListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.3
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i10) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerProxy.this, i10);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnCompletionListener(final IMediaPlayer.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this.mBackEndMediaPlayer.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.2
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnCompletionListener
                public void onCompletion(IMediaPlayer iMediaPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnCompletionListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnErrorListener(final IMediaPlayer.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this.mBackEndMediaPlayer.setOnErrorListener(new IMediaPlayer.OnErrorListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.6
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
                public boolean onError(IMediaPlayer iMediaPlayer, int i10, int i11) {
                    return onErrorListener.onError(MediaPlayerProxy.this, i10, i11);
                }

                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
                public boolean onErrorMsg(IMediaPlayer iMediaPlayer, int i10, int i11, String str) {
                    return false;
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnErrorListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnInfoListener(final IMediaPlayer.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this.mBackEndMediaPlayer.setOnInfoListener(new IMediaPlayer.OnInfoListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.7
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnInfoListener
                public boolean onInfo(IMediaPlayer iMediaPlayer, int i10, int i11) {
                    return onInfoListener.onInfo(MediaPlayerProxy.this, i10, i11);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnInfoListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnPreparedListener(final IMediaPlayer.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this.mBackEndMediaPlayer.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.1
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnPreparedListener
                public void onPrepared(IMediaPlayer iMediaPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnPreparedListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnSeekCompleteListener(final IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this.mBackEndMediaPlayer.setOnSeekCompleteListener(new IMediaPlayer.OnSeekCompleteListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.4
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnSeekCompleteListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnTimedTextListener(final IMediaPlayer.OnTimedTextListener onTimedTextListener) {
        if (onTimedTextListener != null) {
            this.mBackEndMediaPlayer.setOnTimedTextListener(new IMediaPlayer.OnTimedTextListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.8
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnTimedTextListener
                public void onTimedText(IMediaPlayer iMediaPlayer, IjkTimedText ijkTimedText) {
                    onTimedTextListener.onTimedText(MediaPlayerProxy.this, ijkTimedText);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnTimedTextListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setOnVideoSizeChangedListener(final IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        if (onVideoSizeChangedListener != null) {
            this.mBackEndMediaPlayer.setOnVideoSizeChangedListener(new IMediaPlayer.OnVideoSizeChangedListener() { // from class: tv.haima.ijk.media.player.MediaPlayerProxy.5
                @Override // tv.haima.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
                public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i10, int i11, int i12, int i13) {
                    onVideoSizeChangedListener.onVideoSizeChanged(MediaPlayerProxy.this, i10, i11, i12, i13);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnVideoSizeChangedListener(null);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z10) {
        this.mBackEndMediaPlayer.setScreenOnWhilePlaying(z10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.mBackEndMediaPlayer.setSurface(surface);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setUseSurfaceTextureFlag(boolean z10) {
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setVolume(float f10, float f11) {
        this.mBackEndMediaPlayer.setVolume(f10, f11);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setWakeMode(Context context, int i10) {
        this.mBackEndMediaPlayer.setWakeMode(context, i10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        this.mBackEndMediaPlayer.start();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        this.mBackEndMediaPlayer.stop();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mBackEndMediaPlayer.setDataSource(context, uri, map);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        this.mBackEndMediaPlayer.setDataSource(fileDescriptor);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mBackEndMediaPlayer.setDataSource(str);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.mBackEndMediaPlayer.setDataSource(iMediaDataSource);
    }
}
