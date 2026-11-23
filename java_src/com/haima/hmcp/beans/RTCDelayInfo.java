package com.haima.hmcp.beans;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class RTCDelayInfo {
    private static final String GOOG_CONTENT_DELAY_MS = "googCurrentDelayMs";
    private static final String GOOG_CONTENT_TYPE = "googContentType";
    private static final String GOOG_DECODE_MS = "googDecodeMs";
    private static final String GOOG_FRAME_HEIGHT_RECEIVED = "googFrameHeightReceived";
    private static final String GOOG_FRAME_RATE_DECODED = "googFrameRateDecoded";
    private static final String GOOG_FRAME_RATE_OUTPUT = "googFrameRateOutput";
    private static final String GOOG_FRAME_RATE_RECEIVED = "googFrameRateReceived";
    private static final String GOOG_FRAME_WIDTH_RECEIVED = "googFrameWidthReceived";
    private static final String GOOG_JITTER_BUFFER_MS = "googJitterBufferMs";
    private static final String GOOG_NACKS_SENT = "googNacksSent";
    private static final String GOOG_RENDER_DELAY_MS = "googRenderDelayMs";
    private static final String GOOG_TARGET_DELAY_MS = "googTargetDelayMs";
    private static final String PACKETS_LOST = "packetsLost";
    String contentType;
    String currentDelay;
    String decodeMs;
    String frameHeightReceived;
    String frameWidthReceived;
    String jitterBufferMs;
    String nacksSent;
    String packetsLost;
    String reateDecode;
    String reateOutput;
    String reateReceived;
    String renderDelay;
    String targetDelay;

    public String toString() {
        return "Resolution ：" + this.frameWidthReceived + " * " + this.frameHeightReceived + "\npacketsLost ：" + this.packetsLost + "\nContentType ：" + this.contentType + "\nCurDelayMs ：" + this.currentDelay + "\nDecodeMs ：" + this.decodeMs + "\nRateDecoded ：" + this.reateDecode + "\nRateOutput ：" + this.reateOutput + "\nRateReceived ：" + this.reateReceived + "\nJitterBufferMs ：" + this.jitterBufferMs + "\nNacksSent ：" + this.nacksSent + "\nRenderDelay ：" + this.renderDelay + "\nTargetDelay ：" + this.targetDelay;
    }

    public void updateDelayInfo(Map<String, String> map) {
        if (map.containsKey(PACKETS_LOST) && !TextUtils.isEmpty(map.get(PACKETS_LOST))) {
            this.packetsLost = map.get(PACKETS_LOST);
        }
        if (map.containsKey(GOOG_CONTENT_TYPE) && !TextUtils.isEmpty(map.get(GOOG_CONTENT_TYPE))) {
            this.contentType = map.get(GOOG_CONTENT_TYPE);
        }
        if (map.containsKey(GOOG_CONTENT_DELAY_MS) && !TextUtils.isEmpty(map.get(GOOG_CONTENT_DELAY_MS))) {
            this.currentDelay = map.get(GOOG_CONTENT_DELAY_MS);
        }
        if (map.containsKey(GOOG_DECODE_MS) && !TextUtils.isEmpty(map.get(GOOG_DECODE_MS))) {
            this.decodeMs = map.get(GOOG_DECODE_MS);
        }
        if (map.containsKey(GOOG_FRAME_HEIGHT_RECEIVED) && !TextUtils.isEmpty(map.get(GOOG_FRAME_HEIGHT_RECEIVED))) {
            this.frameHeightReceived = map.get(GOOG_FRAME_HEIGHT_RECEIVED);
        }
        if (map.containsKey(GOOG_FRAME_WIDTH_RECEIVED) && !TextUtils.isEmpty(map.get(GOOG_FRAME_WIDTH_RECEIVED))) {
            this.frameWidthReceived = map.get(GOOG_FRAME_WIDTH_RECEIVED);
        }
        if (map.containsKey(GOOG_JITTER_BUFFER_MS) && !TextUtils.isEmpty(map.get(GOOG_JITTER_BUFFER_MS))) {
            this.jitterBufferMs = map.get(GOOG_JITTER_BUFFER_MS);
        }
        if (map.containsKey(GOOG_FRAME_RATE_DECODED) && !TextUtils.isEmpty(map.get(GOOG_FRAME_RATE_DECODED))) {
            this.reateDecode = map.get(GOOG_FRAME_RATE_DECODED);
        }
        if (map.containsKey(GOOG_FRAME_RATE_OUTPUT) && !TextUtils.isEmpty(map.get(GOOG_FRAME_RATE_OUTPUT))) {
            this.reateOutput = map.get(GOOG_FRAME_RATE_OUTPUT);
        }
        if (map.containsKey(GOOG_FRAME_RATE_RECEIVED) && !TextUtils.isEmpty(map.get(GOOG_FRAME_RATE_RECEIVED))) {
            this.reateReceived = map.get(GOOG_FRAME_RATE_RECEIVED);
        }
        if (map.containsKey(GOOG_NACKS_SENT) && !TextUtils.isEmpty(map.get(GOOG_NACKS_SENT))) {
            this.nacksSent = map.get(GOOG_NACKS_SENT);
        }
        if (map.containsKey(GOOG_RENDER_DELAY_MS) && !TextUtils.isEmpty(map.get(GOOG_RENDER_DELAY_MS))) {
            this.renderDelay = map.get(GOOG_RENDER_DELAY_MS);
        }
        if (!map.containsKey(GOOG_TARGET_DELAY_MS) || TextUtils.isEmpty(map.get(GOOG_TARGET_DELAY_MS))) {
            return;
        }
        this.targetDelay = map.get(GOOG_TARGET_DELAY_MS);
    }
}
