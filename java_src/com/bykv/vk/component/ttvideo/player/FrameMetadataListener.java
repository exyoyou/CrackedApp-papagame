package com.bykv.vk.component.ttvideo.player;

import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface FrameMetadataListener {
    void frameDTSNotify(int i10, long j10, long j11);

    void onFrameAboutToBeRendered(int i10, long j10, long j11, Map<Integer, String> map);

    void updateFrameTerminatedDTS(int i10, long j10, long j11);
}
