package org.webrtc.haima;

import android.view.View;

/* JADX INFO: loaded from: classes10.dex */
public interface HmPlayer {
    void down();

    void init(String str, String str2, View view, int i10, HmPlayerCallback hmPlayerCallback);

    void mute(boolean z10);

    void pause();

    void play();

    void release();

    void up();
}
