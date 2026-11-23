package com.switfpass.pay.activity;

import android.media.MediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
final class i0 implements MediaPlayer.OnCompletionListener {
    i0() {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        mediaPlayer.seekTo(0);
    }
}
