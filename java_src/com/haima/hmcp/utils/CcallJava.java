package com.haima.hmcp.utils;

import com.haima.hmcp.beans.FrameDelayInfo;

/* JADX INFO: loaded from: classes5.dex */
public class CcallJava {
    private static OnFrameDelayListener mListener;

    public interface OnFrameDelayListener {
        void notifyStasticInfo(int i10, long j10, String str);

        void onFirstFrameArrival();

        void onFrameDelay(int i10, int i11, int i12, float f10);

        void reportFrameDelayInfo(String str);
    }

    public interface RtmpOnFrameDelayListener extends OnFrameDelayListener {
        void notifyRtmpFrameDelayInfo(FrameDelayInfo frameDelayInfo);
    }

    public static native int getFrameDelayMillisNow();

    public static void notifyFirstFrameArrival() {
    }

    public static void notifyFirstFrameRendering() {
        OnFrameDelayListener onFrameDelayListener = mListener;
        if (onFrameDelayListener != null) {
            onFrameDelayListener.onFirstFrameArrival();
        }
    }

    public static void notifyFrameDelayEvent(int i10, int i11, int i12, float f10) {
        LogUtils.i("HMFrameDelayDetector", "percent: " + i11);
        OnFrameDelayListener onFrameDelayListener = mListener;
        if (onFrameDelayListener != null) {
            onFrameDelayListener.onFrameDelay(i10, i11, i12, f10);
        }
    }

    public static void notifyNetEvent(long j10, long j11) {
        FrameNetDelayInfo.getInstance().updateNetPts(j10, j11);
    }

    public static void notifyRtmpFrameDelayInfo(FrameDelayInfo frameDelayInfo) {
        OnFrameDelayListener onFrameDelayListener = mListener;
        if (onFrameDelayListener == null || !(onFrameDelayListener instanceof RtmpOnFrameDelayListener) || frameDelayInfo == null) {
            return;
        }
        ((RtmpOnFrameDelayListener) onFrameDelayListener).notifyRtmpFrameDelayInfo(frameDelayInfo);
    }

    public static void notifyStasticInfo(int i10, long j10, String str) {
        OnFrameDelayListener onFrameDelayListener = mListener;
        if (onFrameDelayListener != null) {
            onFrameDelayListener.notifyStasticInfo(i10, j10, str);
        }
    }

    public static void reportFrameDelayInfo(String str) {
        OnFrameDelayListener onFrameDelayListener = mListener;
        if (onFrameDelayListener != null) {
            onFrameDelayListener.reportFrameDelayInfo(str);
        }
    }

    public static native String setFrameDelayMillis(int i10);

    public static native void setIjkplayLog(boolean z10);

    public static void setOnFrameDelayListener(OnFrameDelayListener onFrameDelayListener) {
        mListener = onFrameDelayListener;
    }

    public native int getFrameDecodeUseMillisNow();

    public native FrameDelayInfo getFrameDelayInfoNow();

    public native long getFrameNetUseMillisNow();

    public native int getFrameRenderUseMillisNow();

    public native int getFrameSizeNow();

    public native long getRelFrameDelayMillisNow();
}
