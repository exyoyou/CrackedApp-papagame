package com.haima.hmcp.rtmp.widgets;

import com.j256.ormlite.stmt.query.SimpleComparison;
import tv.haima.ijk.media.player.IMediaPlayer;
import tv.haima.ijk.media.player.IjkMediaPlayer;
import tv.haima.ijk.media.player.MediaPlayerProxy;
import tv.haima.ijk.media.player.TextureMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class MediaPlayerCompat {
    public static void deselectTrack(IMediaPlayer iMediaPlayer, int i10) {
        IjkMediaPlayer ijkMediaPlayer = getIjkMediaPlayer(iMediaPlayer);
        if (ijkMediaPlayer == null) {
            return;
        }
        ijkMediaPlayer.deselectTrack(i10);
    }

    public static IjkMediaPlayer getIjkMediaPlayer(IMediaPlayer iMediaPlayer) {
        if (iMediaPlayer == null) {
            return null;
        }
        if (iMediaPlayer instanceof IjkMediaPlayer) {
            return (IjkMediaPlayer) iMediaPlayer;
        }
        if (!(iMediaPlayer instanceof MediaPlayerProxy)) {
            return null;
        }
        MediaPlayerProxy mediaPlayerProxy = (MediaPlayerProxy) iMediaPlayer;
        if (mediaPlayerProxy.getInternalMediaPlayer() instanceof IjkMediaPlayer) {
            return (IjkMediaPlayer) mediaPlayerProxy.getInternalMediaPlayer();
        }
        return null;
    }

    public static String getName(IMediaPlayer iMediaPlayer) {
        if (iMediaPlayer == null) {
            return "null";
        }
        if (!(iMediaPlayer instanceof TextureMediaPlayer)) {
            return iMediaPlayer.getClass().getSimpleName();
        }
        StringBuilder sb2 = new StringBuilder("TextureMediaPlayer <");
        IMediaPlayer internalMediaPlayer = ((TextureMediaPlayer) iMediaPlayer).getInternalMediaPlayer();
        if (internalMediaPlayer == null) {
            sb2.append("null>");
        } else {
            sb2.append(internalMediaPlayer.getClass().getSimpleName());
            sb2.append(SimpleComparison.GREATER_THAN_OPERATION);
        }
        return sb2.toString();
    }

    public static int getSelectedTrack(IMediaPlayer iMediaPlayer, int i10) {
        IjkMediaPlayer ijkMediaPlayer = getIjkMediaPlayer(iMediaPlayer);
        if (ijkMediaPlayer == null) {
            return -1;
        }
        return ijkMediaPlayer.getSelectedTrack(i10);
    }

    public static void selectTrack(IMediaPlayer iMediaPlayer, int i10) {
        IjkMediaPlayer ijkMediaPlayer = getIjkMediaPlayer(iMediaPlayer);
        if (ijkMediaPlayer == null) {
            return;
        }
        ijkMediaPlayer.selectTrack(i10);
    }
}
