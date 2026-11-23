package com.papa91.activity;

import android.graphics.Rect;
import android.media.AudioTrack;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes2.dex */
public class EmuMedia {
    private static SurfaceHolder holder;
    private static AudioTrack track;
    private static Rect RectSrc = new Rect();
    private static Rect region = new Rect();
    private static float volume = AudioTrack.getMaxVolume();

    static boolean audioCreate(int i10, int i11, int i12) {
        int i13 = i11 == 16 ? 2 : 3;
        int i14 = i12 == 2 ? 3 : 2;
        AudioTrack audioTrack = track;
        if (audioTrack != null && audioTrack.getSampleRate() == i10 && track.getAudioFormat() == i13 && track.getChannelCount() == i12) {
            return true;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i14, i13) * 2;
        try {
            AudioTrack audioTrack2 = new AudioTrack(3, i10, i14, i13, minBufferSize < 1500 ? TTAdConstant.STYLE_SIZE_RADIO_3_2 : minBufferSize, 1);
            track = audioTrack2;
            if (audioTrack2.getState() == 0) {
                track = null;
            }
        } catch (IllegalArgumentException unused) {
            track = null;
        }
        AudioTrack audioTrack3 = track;
        if (audioTrack3 == null) {
            return false;
        }
        float f10 = volume;
        audioTrack3.setStereoVolume(f10, f10);
        return true;
    }

    static void audioDestroy() {
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.stop();
            track = null;
        }
    }

    static void audioPause() {
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.pause();
        }
    }

    static void audioPlay(byte[] bArr, int i10) {
        try {
            AudioTrack audioTrack = track;
            if (audioTrack != null) {
                audioTrack.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static void audioSetVolume(int i10) {
        float minVolume = AudioTrack.getMinVolume();
        float maxVolume = minVolume + (((AudioTrack.getMaxVolume() - minVolume) * i10) / 100.0f);
        volume = maxVolume;
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.setStereoVolume(maxVolume, maxVolume);
        }
    }

    static void audioStart() {
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.play();
        }
    }

    static void audioStop() {
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.stop();
            track.flush();
        }
    }

    static void destroy() {
        AudioTrack audioTrack = track;
        if (audioTrack != null) {
            audioTrack.stop();
            track = null;
        }
    }

    static void setSrcRegion(int i10, int i11, int i12, int i13) {
        RectSrc.set(i10, i11, i12 + i10, i13 + i11);
    }

    static void setSurface(SurfaceHolder surfaceHolder) {
        holder = surfaceHolder;
    }

    static void setSurfaceRegion(int i10, int i11, int i12, int i13) {
        region.set(i10, i11, i12 + i10, i13 + i11);
    }

    static void setSurfaceRegion(Rect rect) {
        region = rect;
    }
}
