package org.ppsspp.ppsspp;

import android.media.AudioManager;

/* JADX INFO: loaded from: classes10.dex */
public class a implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f95922a = false;

    public boolean a() {
        return this.f95922a;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i10) {
        if (i10 == -1) {
            this.f95922a = false;
        } else {
            if (i10 != 1) {
                return;
            }
            this.f95922a = true;
        }
    }
}
