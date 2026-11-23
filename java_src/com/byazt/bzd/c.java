package com.byazt.bzd;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.byazt.omf.gt;
import r0.h;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AudioAttributes f12200c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f12201n;
    public AudioFocusRequest tt;
    public AudioManager.OnAudioFocusChangeListener uj;
    public AudioManager ve;

    public c() {
        this.f12201n = false;
        boolean zHd = gt.tt().hd();
        this.f12201n = zHd;
        if (zHd) {
            this.uj = new AudioManager.OnAudioFocusChangeListener() { // from class: com.byazt.bzd.c.1
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i10) {
                }
            };
            this.ve = (AudioManager) gt.getContext().getSystemService("audio");
        }
    }

    public int c() {
        if (!this.f12201n) {
            return -1;
        }
        int i10 = Build.VERSION.SDK_INT;
        this.f12200c = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
        if (i10 < 26) {
            AudioManager audioManager = this.ve;
            if (audioManager != null) {
                return audioManager.requestAudioFocus(this.uj, 3, 2);
            }
            return -1;
        }
        AudioFocusRequest audioFocusRequestBuild = h.a(2).setWillPauseWhenDucked(true).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this.uj).setAudioAttributes(this.f12200c).build();
        this.tt = audioFocusRequestBuild;
        AudioManager audioManager2 = this.ve;
        if (audioManager2 != null) {
            return audioManager2.requestAudioFocus(audioFocusRequestBuild);
        }
        return -1;
    }

    public void tt() {
        if (this.f12201n) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioManager audioManager = this.ve;
                if (audioManager != null) {
                    audioManager.abandonAudioFocusRequest(this.tt);
                    return;
                }
                return;
            }
            AudioManager audioManager2 = this.ve;
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this.uj);
            }
        }
    }
}
