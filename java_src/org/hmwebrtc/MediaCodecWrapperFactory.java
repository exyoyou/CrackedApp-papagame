package org.hmwebrtc;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
interface MediaCodecWrapperFactory {
    MediaCodecWrapper createByCodecName(String str) throws IOException;
}
