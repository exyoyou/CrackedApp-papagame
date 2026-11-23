package org.hmwebrtc;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.os.Build;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class MediaCodecUtils {
    static final String EXYNOS_PREFIX = "OMX.Exynos.";
    static final String INTEL_PREFIX = "OMX.Intel.";
    static final String NVIDIA_PREFIX = "OMX.Nvidia.";
    static final String QCOM_PREFIX = "OMX.qcom.";
    private static final String TAG = "MediaCodecUtils";
    static final String[] SOFTWARE_IMPLEMENTATION_PREFIXES = {"OMX.google.", "OMX.SEC.", "c2.android"};
    static final int COLOR_QCOM_FORMATYVU420PackedSemiPlanar32m4ka = 2141391873;
    static final int COLOR_QCOM_FORMATYVU420PackedSemiPlanar16m4ka = 2141391874;
    static final int COLOR_QCOM_FORMATYVU420PackedSemiPlanar64x32Tile2m8ka = 2141391875;
    static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    static final int COLOR_GOKE_FORMATSpecific = 2135033992;
    static final int[] DECODER_COLOR_FORMATS = {19, 21, 2141391872, COLOR_QCOM_FORMATYVU420PackedSemiPlanar32m4ka, COLOR_QCOM_FORMATYVU420PackedSemiPlanar16m4ka, COLOR_QCOM_FORMATYVU420PackedSemiPlanar64x32Tile2m8ka, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m, COLOR_GOKE_FORMATSpecific};
    static int[] ENCODER_COLOR_FORMATS = {19, 21, 2141391872, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m};
    static final int[] TEXTURE_COLOR_FORMATS = getTextureColorFormats();

    /* JADX INFO: renamed from: org.hmwebrtc.MediaCodecUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$hmwebrtc$VideoCodecMimeType;

        static {
            int[] iArr = new int[VideoCodecMimeType.values().length];
            $SwitchMap$org$hmwebrtc$VideoCodecMimeType = iArr;
            try {
                iArr[VideoCodecMimeType.VP8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.VP9.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.H265.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.AV1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoCodecMimeType[VideoCodecMimeType.H264.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private MediaCodecUtils() {
    }

    static boolean codecSupportsType(MediaCodecInfo mediaCodecInfo, VideoCodecMimeType videoCodecMimeType) {
        for (String str : mediaCodecInfo.getSupportedTypes()) {
            if (videoCodecMimeType.mimeType().equals(str)) {
                return true;
            }
        }
        return false;
    }

    static Map<String, String> getCodecProperties(VideoCodecMimeType videoCodecMimeType, boolean z10) {
        int i10 = AnonymousClass1.$SwitchMap$org$hmwebrtc$VideoCodecMimeType[videoCodecMimeType.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
            return new HashMap();
        }
        if (i10 == 5) {
            return H264Utils.getDefaultH264Params(z10);
        }
        throw new IllegalArgumentException("Unsupported codec: " + videoCodecMimeType);
    }

    public static int[] getDecodeColorFormates() {
        return DECODER_COLOR_FORMATS;
    }

    private static int[] getTextureColorFormats() {
        return new int[]{2130708361};
    }

    static boolean isHardwareAccelerated(MediaCodecInfo mediaCodecInfo) {
        return Build.VERSION.SDK_INT >= 29 ? isHardwareAcceleratedQOrHigher(mediaCodecInfo) : !isSoftwareOnly(mediaCodecInfo);
    }

    @TargetApi(29)
    private static boolean isHardwareAcceleratedQOrHigher(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    static boolean isSoftwareOnly(MediaCodecInfo mediaCodecInfo) {
        if (Build.VERSION.SDK_INT >= 29) {
            return isSoftwareOnlyQOrHigher(mediaCodecInfo);
        }
        String name = mediaCodecInfo.getName();
        for (String str : SOFTWARE_IMPLEMENTATION_PREFIXES) {
            if (name.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(29)
    private static boolean isSoftwareOnlyQOrHigher(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    @Nullable
    static Integer selectColorFormat(int[] iArr, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        for (int i10 : iArr) {
            for (int i11 : codecCapabilities.colorFormats) {
                if (i11 == i10) {
                    Logging.w(TAG, "selected color format: " + i11);
                    return Integer.valueOf(i11);
                }
            }
        }
        Logging.w(TAG, "Nothing of color format is selected");
        return null;
    }

    @Nullable
    static Integer selectColorFormat(int[] iArr, int[] iArr2) {
        for (int i10 : iArr) {
            for (int i11 : iArr2) {
                if (i11 == i10) {
                    return Integer.valueOf(i11);
                }
            }
        }
        return null;
    }
}
