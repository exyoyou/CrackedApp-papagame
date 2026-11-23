package org.hmwebrtc;

import android.media.MediaCodecInfo;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class PlatformSoftwareVideoDecoderFactory extends MediaCodecVideoDecoderFactory {
    private static final Predicate<MediaCodecInfo> defaultAllowedPredicate = new Predicate<MediaCodecInfo>() { // from class: org.hmwebrtc.PlatformSoftwareVideoDecoderFactory.1
        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> and(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.a(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> negate() {
            return Predicate.CC.b(this);
        }

        @Override // org.hmwebrtc.Predicate
        public /* synthetic */ Predicate<MediaCodecInfo> or(Predicate<? super MediaCodecInfo> predicate) {
            return Predicate.CC.c(this, predicate);
        }

        @Override // org.hmwebrtc.Predicate
        public boolean test(MediaCodecInfo mediaCodecInfo) {
            return MediaCodecUtils.isSoftwareOnly(mediaCodecInfo);
        }
    };

    public PlatformSoftwareVideoDecoderFactory(@Nullable EglBase.Context context) {
        super(context, defaultAllowedPredicate);
        this.isPlatform = true;
    }

    public PlatformSoftwareVideoDecoderFactory(Object obj, int i10, @Nullable EglBase.Context context) {
        super(obj, i10, defaultAllowedPredicate, context);
        this.isPlatform = true;
    }
}
