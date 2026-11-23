package com.bykv.vk.component.ttvideo.player;

import android.media.audiofx.AudioEffect;
import android.os.Build;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.uc.crashsdk.export.LogType;
import com.xinzhu.overmind.server.user.MindUserHandle;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class AudioFormats {
    private static final int[] validSampleRates = {4000, AVMDLDataLoader.KeyIsLiveSetLoaderType, 11025, 16000, 22050, LogType.UNEXP_KNOWN_REASON, 37800, 44056, 44100, 47250, 48000, MindUserHandle.f89947v, 50400, 88200, 96000, 176400, 192000, 352800, 2822400, 5644800};
    private static boolean sDetectDlbDevices = false;
    private static boolean sDlbDevice = false;

    public static int getDefaultSampleRatesNB() {
        return validSampleRates.length;
    }

    public static int getMaxSupportedSampleRates(int[] iArr) {
        int length = validSampleRates.length;
        int i10 = Build.VERSION.SDK_INT >= 23 ? length - 3 : length - 5;
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = validSampleRates[i11];
        }
        return i10;
    }

    @CalledByNative
    public static boolean isLicencedDolbyDevice() {
        if (sDetectDlbDevices) {
            return sDlbDevice;
        }
        for (AudioEffect.Descriptor descriptor : AudioEffect.queryEffects()) {
            if (descriptor.implementor.contains("Dolby Laboratories")) {
                sDlbDevice = true;
                break;
            }
        }
        sDetectDlbDevices = true;
        return sDlbDevice;
    }
}
