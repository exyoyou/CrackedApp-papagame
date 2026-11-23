package com.bykv.vk.component.ttvideo;

import com.bykv.vk.component.ttvideo.log.LiveError;
import com.bykv.vk.component.ttvideo.player.Keep;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public interface ILiveListener {

    @Keep
    public static class Stub implements ILiveListener {
        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAbrSwitch(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAudioRenderStall(int i10) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCacheFileCompletion() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCompletion() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onError(LiveError liveError) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onFirstFrame(boolean z10) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onMonitorLog(JSONObject jSONObject, String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onPrepared() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onReportALog(int i10, String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onResolutionDegrade(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onSeiUpdate(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallEnd() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallStart() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoRenderStall(int i10) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoSizeChanged(int i10, int i11) {
        }
    }

    void onAbrSwitch(String str);

    void onAudioRenderStall(int i10);

    void onCacheFileCompletion();

    void onCompletion();

    void onError(LiveError liveError);

    void onFirstFrame(boolean z10);

    void onMonitorLog(JSONObject jSONObject, String str);

    void onPrepared();

    void onReportALog(int i10, String str);

    void onResolutionDegrade(String str);

    void onSeiUpdate(String str);

    void onStallEnd();

    void onStallStart();

    void onVideoRenderStall(int i10);

    void onVideoSizeChanged(int i10, int i11);
}
