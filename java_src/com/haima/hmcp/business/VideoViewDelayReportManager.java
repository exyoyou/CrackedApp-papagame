package com.haima.hmcp.business;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.ReportBaseError;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.IStreamModel;
import com.haima.hmcp.rtc.widgets.RtcModel;
import com.haima.hmcp.rtc.widgets.beans.RtcVideoDelayInfo;
import com.haima.hmcp.rtmp.widgets.beans.RtmpVideoDelayInfo;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class VideoViewDelayReportManager {
    private static final int COLECTION_INTEVAL = 1;
    private static final String TAG = "VideoViewDelayReport";
    private long mLastFrameFrozenTime;
    private StreamingMonitor mStreamingMonitor;
    private IHmcpVideoView mVideoView;
    private int mReportDivideTime = -1;
    private ArrayList<VideoDelayInfo> delayInfos = new ArrayList<>();
    private long collectTime = 0;
    private boolean isReportCodec = false;
    private boolean isReportedInvalid = false;
    private boolean isReportedDivideTimeLessMin = false;
    private VideoDelayInfo mLastVideoDelayInfo = null;
    private long mLastVideoDelaySendTime = 0;

    public VideoViewDelayReportManager(IHmcpVideoView iHmcpVideoView) {
        this.mVideoView = iHmcpVideoView;
    }

    private void countRtmpFrames(VideoDelayInfo videoDelayInfo, VideoDelayInfo videoDelayInfo2) {
        if (videoDelayInfo == null || videoDelayInfo2 == null || !(videoDelayInfo instanceof RtmpVideoDelayInfo)) {
            return;
        }
        RtmpVideoDelayInfo rtmpVideoDelayInfo = (RtmpVideoDelayInfo) videoDelayInfo;
        RtmpVideoDelayInfo rtmpVideoDelayInfo2 = (RtmpVideoDelayInfo) videoDelayInfo2;
        rtmpVideoDelayInfo2.setReceiveFrames(rtmpVideoDelayInfo2.getReceiveFrameCount() - rtmpVideoDelayInfo.getReceiveFrameCount());
        rtmpVideoDelayInfo2.setDecodeFrames(rtmpVideoDelayInfo2.getDecodeFramesCount() - rtmpVideoDelayInfo.getDecodeFramesCount());
    }

    private synchronized void report() {
        if (this.delayInfos.size() == 0) {
            return;
        }
        String str = "";
        Object[] array = this.delayInfos.toArray();
        this.delayInfos.clear();
        int length = array.length;
        int i10 = -1;
        for (Object obj : array) {
            i10++;
            if (obj != null && (obj instanceof VideoDelayInfo)) {
                str = i10 == length - 1 ? str + ((VideoDelayInfo) obj).toReportString() : str + ((VideoDelayInfo) obj).toReportString() + ",";
            }
        }
        LogUtils.e(TAG, "=OperationStream===16003 hashcode=" + hashCode());
        CountlyUtil.recordEvent(Constants.COUNTYLY_DELAY_STATUS, str);
    }

    private void reportRtcCodec(VideoDelayInfo videoDelayInfo) {
        if (videoDelayInfo instanceof RtmpVideoDelayInfo) {
            return;
        }
        IHmcpVideoView iHmcpVideoView = this.mVideoView;
        if (iHmcpVideoView instanceof AbsIjkVideoView) {
            final AbsIjkVideoView absIjkVideoView = (AbsIjkVideoView) iHmcpVideoView;
            if (absIjkVideoView.getGameArchitectureType() == GameArchitectureType.X86 && (videoDelayInfo instanceof RtcVideoDelayInfo)) {
                LogUtils.d(TAG, "videoDelayInfo:" + videoDelayInfo.toString());
                if (((RtcVideoDelayInfo) videoDelayInfo).getFrameRateOutput() != 0 || videoDelayInfo.getVideoFps() != 0 || this.mLastFrameFrozenTime == 0) {
                    this.mLastFrameFrozenTime = System.currentTimeMillis();
                } else if (System.currentTimeMillis() - this.mLastFrameFrozenTime > Constants.WEBRTC_FPS_TIMEOUT) {
                    this.mLastFrameFrozenTime = System.currentTimeMillis();
                    LogUtils.d(TAG, "reconnect()");
                    absIjkVideoView.post(new Runnable() { // from class: com.haima.hmcp.business.VideoViewDelayReportManager.1
                        @Override // java.lang.Runnable
                        public void run() {
                            IStreamModel streamModel = absIjkVideoView.getStreamModel();
                            if (streamModel instanceof RtcModel) {
                                ((RtcModel) streamModel).getRtcPlayer().reconnectRtc(true);
                                absIjkVideoView.UiMessageSend(10001, ResourceManager.getString(R.string.haima_hmcp_network_weak));
                            }
                        }
                    });
                }
            }
        }
        if (this.isReportCodec) {
            return;
        }
        RtcVideoDelayInfo rtcVideoDelayInfo = (RtcVideoDelayInfo) videoDelayInfo;
        String codecName = rtcVideoDelayInfo.getCodecName();
        String codecImplementationName = rtcVideoDelayInfo.getCodecImplementationName();
        if (TextUtils.isEmpty(codecName) || TextUtils.isEmpty(codecImplementationName)) {
            return;
        }
        this.isReportCodec = true;
        CountlyUtil.recordEvent(Constants.COUNTYLY_RTC_CODEC_INFO, codecName + "," + codecImplementationName);
    }

    private void streamingMonitorHandleDelayInfo(VideoDelayInfo videoDelayInfo) {
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor == null) {
            return;
        }
        streamingMonitor.put(videoDelayInfo);
    }

    public VideoDelayInfo getReportDelayInfo() {
        return this.mLastVideoDelayInfo;
    }

    public void registerStreamingMonitor(StreamingMonitor streamingMonitor) {
        this.mStreamingMonitor = streamingMonitor;
        if (streamingMonitor != null) {
            streamingMonitor.prepare();
        }
    }

    public void sendDelayInfo(VideoDelayInfo videoDelayInfo) {
        if (videoDelayInfo == null) {
            LogUtils.d(TAG, "==CollectDelayInfoTask VideoDelayInfo is null");
            return;
        }
        if (!this.isReportedInvalid && !videoDelayInfo.isVaild()) {
            this.isReportedInvalid = true;
            CountlyUtil.recordEvent(Constants.COUNTYLY_DELAY_INFO_FAILED, JsonUtil.toJsonString(new ReportBaseError("", "videoDelayInfo.isVaild() is false")));
        }
        if (videoDelayInfo.isVaild()) {
            reportRtcCodec(videoDelayInfo);
            if (videoDelayInfo instanceof RtmpVideoDelayInfo) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.mLastVideoDelayInfo == null) {
                    videoDelayInfo.setBitRate(0L);
                    videoDelayInfo.setVideoFps(0L);
                } else {
                    videoDelayInfo.setBitRate(videoDelayInfo.getReceiveFrameSize() - this.mLastVideoDelayInfo.getReceiveFrameSize());
                    try {
                        videoDelayInfo.setVideoFps(((long) ((videoDelayInfo.getReceiveFrameCount() - this.mLastVideoDelayInfo.getReceiveFrameCount()) * 1000)) / (jCurrentTimeMillis - this.mLastVideoDelaySendTime));
                    } catch (Exception e10) {
                        LogUtils.e(TAG, e10.toString());
                    }
                }
                countRtmpFrames(this.mLastVideoDelayInfo, videoDelayInfo);
                this.mLastVideoDelaySendTime = jCurrentTimeMillis;
            }
            this.mLastVideoDelayInfo = videoDelayInfo;
            this.collectTime++;
            if (this.mReportDivideTime >= 5) {
                this.delayInfos.add(videoDelayInfo);
                streamingMonitorHandleDelayInfo(videoDelayInfo);
                if (this.collectTime % ((long) this.mReportDivideTime) == 0) {
                    report();
                }
            } else if (!this.isReportedDivideTimeLessMin) {
                this.isReportedDivideTimeLessMin = true;
                CountlyUtil.recordEvent(Constants.COUNTYLY_DELAY_INFO_FAILED, JsonUtil.toJsonString(new ReportBaseError("", "mReportDivideTime  <HmcpRequestManager.REPORT_INTERVAL_MIN,mReportDivideTime" + this.mReportDivideTime)));
            }
            LogUtils.d(TAG, "collect :" + videoDelayInfo.toReportString());
        }
    }

    public void startCollectionReport(int i10) {
        stopCollectionReport();
        this.mReportDivideTime = i10;
        if (this.mVideoView == null) {
            LogUtils.e(TAG, "==delay report start fail!");
            CountlyUtil.recordEvent(Constants.COUNTYLY_DELAY_INFO_FAILED, JsonUtil.toJsonString(new ReportBaseError("", "mVideoView is null")));
        } else {
            this.mLastVideoDelayInfo = null;
            LogUtils.d(TAG, "==startCollectionReportV2");
        }
    }

    public void stopCollectionReport() {
        report();
    }

    public void unregisterStreamingMonitor() {
        StreamingMonitor streamingMonitor = this.mStreamingMonitor;
        if (streamingMonitor == null) {
            return;
        }
        streamingMonitor.stop();
        this.mStreamingMonitor = null;
        LogUtils.e(StreamingMonitor.TAG, "streaming monitor unregister...");
    }
}
