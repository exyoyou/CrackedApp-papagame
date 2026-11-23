package com.kwad.components.core.offline.b.c;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.kwad.components.core.video.DetailVideoView;
import com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener;
import com.kwad.components.offline.api.core.video.IKsMediaPlayer;
import com.kwad.components.offline.api.core.video.IKsMediaPlayerView;
import com.kwad.components.offline.api.core.video.IMediaPlayer;
import com.kwad.components.offline.api.core.video.listener.OfflineVideoPlayStateListener;
import com.kwad.components.offline.api.core.video.listener.ReleaseCallback;
import com.kwad.components.offline.api.core.video.listener.VideoMuteStateChangeListener;
import com.kwad.components.offline.api.core.video.mdoel.KsPlayerLogParams;
import com.kwad.components.offline.api.core.video.mdoel.PlayVideoInfo;
import com.kwad.sdk.utils.az;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;

/* JADX INFO: loaded from: classes2.dex */
final class a implements IKsMediaPlayer {
    private boolean CE;
    private OfflineOnAudioConflictListener CH;
    private IMediaPlayer.OnInfoListener acA;
    private boolean acB;
    private com.kwad.components.core.video.b acw;
    private c acx;
    private VideoMuteStateChangeListener acy;
    private com.kwad.sdk.core.video.a.c.d acz;
    private Context mContext;
    private DetailVideoView mDetailVideoView;
    private boolean qO = true;
    private int acC = -1;

    a() {
    }

    private OfflineOnAudioConflictListener tH() {
        if (this.CH == null) {
            this.CH = new OfflineOnAudioConflictListener() { // from class: com.kwad.components.core.offline.b.c.a.3
                @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
                public final void onAudioBeOccupied() {
                    if (a.this.qO) {
                        a.this.CE = true;
                        a.b(a.this, false);
                    }
                    by.runOnUiThread(new bi() { // from class: com.kwad.components.core.offline.b.c.a.3.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            a.this.acw.setAudioEnabled(false);
                            if (a.this.acy != null) {
                                a.this.acy.onMuteStateChanged(true);
                            }
                        }
                    });
                }

                @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
                public final void onAudioBeReleased() {
                    a.this.CE = false;
                }
            };
        }
        return this.CH;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void addOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acw.a(d.a(getMediaPlayer(), onInfoListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void addOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.acw.a(d.a(getMediaPlayer(), onPreparedListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void clear() {
        this.acw.clear();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean getAlphaVideoValid() {
        return this.acw.getAlphaVideoValid();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getBufferPercentage() {
        return this.acw.getBufferPercentage();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final String getCurrentPlayingUrl() {
        return this.acw.getCurrentPlayingUrl();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getCurrentPosition() {
        return this.acw.getCurrentPosition();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getDuration() {
        return this.acw.getDuration();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getMaxVolume() {
        return 0;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final IMediaPlayer getMediaPlayer() {
        com.kwad.sdk.core.video.a.c cVarXm = this.acw.xm();
        if (cVarXm == null) {
            return null;
        }
        c cVar = this.acx;
        if (cVar == null || cVar.tJ() != cVarXm) {
            this.acx = new c().b(cVarXm);
        }
        return this.acx;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getMediaPlayerType() {
        return this.acw.getMediaPlayerType();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getPlayDuration() {
        return this.acw.getPlayDuration();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final String getStateString(int i10) {
        return com.kwad.components.core.video.b.getStateString(i10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVideoHeight() {
        return this.acw.getVideoHeight();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVideoWidth() {
        return this.acw.getVideoWidth();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVolume() {
        return 0;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void initMediaPlayer(@NonNull PlayVideoInfo playVideoInfo, @NonNull IKsMediaPlayerView iKsMediaPlayerView) {
        if (!(iKsMediaPlayerView instanceof b)) {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
            return;
        }
        DetailVideoView detailVideoViewTI = ((b) iKsMediaPlayerView).tI();
        this.mDetailVideoView = detailVideoViewTI;
        this.mContext = detailVideoViewTI.getContext().getApplicationContext();
        this.acw.a(d.a(playVideoInfo), this.mDetailVideoView);
        int i10 = this.acC;
        if (i10 != -1) {
            setVideoAdaptStrategy(i10);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPlaying() {
        return this.acw.isPlaying();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPrepared() {
        return this.acw.isPrepared();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPreparing() {
        return this.acw.isPreparing();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void notifyOnInfoListener(IMediaPlayer iMediaPlayer, int i10, int i11) {
        if (iMediaPlayer instanceof c) {
            this.acw.a(((c) iMediaPlayer).tJ(), i10, i11);
        } else {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void onPlayStateChanged(int i10) {
        this.acw.onPlayStateChanged(i10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean pause() {
        return this.acw.pause();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void prepareAsync() {
        this.acw.prepareAsync();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acA = onInfoListener;
        if (this.acz == null) {
            com.kwad.sdk.core.video.a.c.d dVar = new com.kwad.sdk.core.video.a.c.d() { // from class: com.kwad.components.core.offline.b.c.a.2
                @Override // com.kwad.sdk.core.video.a.c.d
                public final boolean m(int i10, int i11) {
                    if (a.this.acA != null) {
                        return a.this.acA.onInfo(a.this.getMediaPlayer(), i10, i11);
                    }
                    return false;
                }
            };
            this.acz = dVar;
            this.acw.a(dVar);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerVideoMuteStateListener(VideoMuteStateChangeListener videoMuteStateChangeListener) {
        this.acy = videoMuteStateChangeListener;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerVideoPlayStateListener(OfflineVideoPlayStateListener offlineVideoPlayStateListener) {
        this.acw.c(d.a(offlineVideoPlayStateListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release(ReleaseCallback releaseCallback, boolean z10) {
        this.acw.a(d.a(releaseCallback), z10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void releaseAsync() {
        Context context = this.mContext;
        if (context != null) {
            com.kwad.components.core.t.a.aO(context).b(this.CH);
        }
        this.acw.releaseAsync();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void removeInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acw.b(d.a(getMediaPlayer(), onInfoListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void resetAndPlay(PlayVideoInfo playVideoInfo) {
        com.kwad.components.core.video.b bVar = this.acw;
        d.a(playVideoInfo);
        bVar.xp();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void restart() {
        this.acw.restart();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void resume() {
        this.acw.resume();
        if (this.qO || (this.acB && this.CE)) {
            Context context = this.mContext;
            if (context != null) {
                com.kwad.components.core.t.a.aO(context).bd(this.acB);
            }
            if (this.acB && this.CE) {
                this.CE = false;
                setAudioEnabled(true);
                this.qO = true;
            } else if (this.CE) {
                setAudioEnabled(false);
            }
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void seekTo(long j10) {
        this.acw.seekTo(j10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setAudioEnabled(final boolean z10) {
        Context context;
        if (z10 && (context = this.mContext) != null) {
            com.kwad.components.core.t.a.aO(context).bd(true);
        }
        if (z10 == this.qO) {
            com.kwad.sdk.core.video.a.a.a.fs("autoVoice");
        } else {
            this.qO = z10;
            by.runOnUiThread(new bi() { // from class: com.kwad.components.core.offline.b.c.a.1
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    a.this.acw.setAudioEnabled(z10);
                    if (a.this.acy != null) {
                        a.this.acy.onMuteStateChanged(!z10);
                    }
                }
            });
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setClickCoordForOpaque(float f10, float f11) {
        this.acw.setClickCoordForOpaque(f10, f11);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setDataSource(@NonNull PlayVideoInfo playVideoInfo) {
        this.acw.b(d.a(playVideoInfo));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setForceGetAudioFocus(boolean z10) {
        this.acB = z10;
        Context context = this.mContext;
        if (context != null) {
            com.kwad.components.core.t.a.aO(context).a(tH());
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setIsAlphaVideoPlayer(boolean z10) {
        this.acw.setIsAlphaVideoPlayer(z10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setRadius(float f10, float f11, float f12, float f13) {
        this.acw.setRadius(f10, f11, f12, f13);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setSpeed(float f10) {
        this.acw.setSpeed(f10);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setSurface(Surface surface) {
        this.acw.setSurface(surface);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setTKPlayer() {
        this.acw.setTKPlayer();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setVideoAdaptStrategy(int i10) {
        this.acC = i10;
        DetailVideoView detailVideoView = this.mDetailVideoView;
        if (detailVideoView != null) {
            detailVideoView.g(true, i10);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setVolume(float f10, float f11) {
        this.acw.setVolume(f10, f11);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void start() {
        this.acw.start();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void stopAndPrepareAsync() {
        this.acw.stopAndPrepareAsync();
    }

    public final com.kwad.components.core.video.b tG() {
        return this.acw;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void unRegisterOnInfoListener() {
        this.acA = null;
        com.kwad.sdk.core.video.a.c.d dVar = this.acz;
        if (dVar != null) {
            this.acw.b(dVar);
            this.acz = null;
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void unRegisterVideoPlayStateListener(OfflineVideoPlayStateListener offlineVideoPlayStateListener) {
        this.acw.d(d.a(offlineVideoPlayStateListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void updateKsPlayLogParam(KsPlayerLogParams ksPlayerLogParams) {
        this.acw.a(d.a(ksPlayerLogParams));
    }

    static /* synthetic */ boolean b(a aVar, boolean z10) {
        aVar.qO = false;
        return false;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release(ReleaseCallback releaseCallback) {
        this.acw.a(d.a(releaseCallback));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void start(long j10) {
        this.acw.start(j10);
    }

    public final a a(@NonNull com.kwad.components.core.video.b bVar) {
        az.checkNotNull(bVar);
        this.acw = bVar;
        return this;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release() {
        this.acw.release();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void initMediaPlayer(@NonNull PlayVideoInfo playVideoInfo, boolean z10, boolean z11, @NonNull IKsMediaPlayerView iKsMediaPlayerView) {
        if (!(iKsMediaPlayerView instanceof b)) {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
        } else {
            this.acw.a(d.a(playVideoInfo), z10, z11, ((b) iKsMediaPlayerView).tI());
        }
    }
}
