package com.haima.hmcp.rtmp.widgets;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.MediaController;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.FrameDelayInfo;
import com.haima.hmcp.beans.ReportBaseFailed;
import com.haima.hmcp.beans.ReportStartPlayStream;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.business.SendSceneState;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.DnsManager;
import com.haima.hmcp.dns.interfaces.DnsAsyncCallBack;
import com.haima.hmcp.dns.interfaces.DnsConvertCallback;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.listeners.HmcpVideoPlayerListener;
import com.haima.hmcp.utils.CcallJava;
import com.haima.hmcp.utils.ConfigUtil;
import com.haima.hmcp.utils.ConnectivityCheck;
import com.haima.hmcp.utils.HmIMEManager;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.utils.TimeUtil;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.utils.VolumeUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.haima.hmcp.widgets.CountDownTimer;
import java.net.URI;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import tv.haima.ijk.media.player.IMediaPlayer;
import tv.haima.ijk.media.player.IjkMediaPlayer;
import tv.haima.ijk.media.player.IjkTimedText;
import tv.haima.ijk.media.player.ijkFrameRenderingStartedCallback;

/* JADX INFO: loaded from: classes5.dex */
public class RtmpPlayer implements MediaController.MediaPlayerControl, CcallJava.RtmpOnFrameDelayListener {
    public static final int APK_TYPE_NON_POOL = 3;
    public static final int APK_TYPE_POOL_BINTANG = 1;
    public static final int APK_TYPE_POOL_NON_BINTANG = 2;
    private static final int FIRST_FRAME_TIMEOUT_ERROR = -1;
    public static final int RENDER_NONE = 0;
    public static final int RENDER_SURFACE_VIEW = 1;
    public static final int RENDER_TEXTURE_VIEW = 2;
    public static final int ROM_ORIENTATION_HANDSTAND = 2;
    public static final int ROM_ORIENTATION_PORTRAIT = 3;
    public static final int ROM_ORIENTATION_PORTRAIT_NAGTIVE = 1;
    protected static final int SCENE_NO = 0;
    protected static final int SCENE_YES = 1;
    private static final int STATE_ERROR = -1;
    public static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private static final String TAG = "RtmpPlayer";
    private static final int[] s_allAspectRatio = {0, 1, 2, 4, 5};
    private HmcpVideoPlayerListener hmcpVideoPlayerListener;
    private AbsIjkVideoView ijkVideoView;
    protected Context mAppContext;
    private String mAudioPath;
    public int mBitRate;
    protected Context mContext;
    private int mCurrentBufferPercentage;
    private FirstFrameTimer mFirstFrameTimer;
    protected Handler mHandler;
    private int mHeight;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    public HashMap<String, String> mMetaInfos;
    protected String mMinResolutionLevel;
    private IMediaPlayer.OnCompletionListener mOnCompletionListener;
    private IMediaPlayer.OnInfoListener mOnInfoListener;
    private IMediaPlayer.OnPreparedListener mOnPreparedListener;
    protected long mPlayerDecodeTime;
    protected String mPlayerFrameSize;
    protected IRenderView mRenderView;
    protected HmcpRequest mRequestManager;
    private int mSeekWhenPrepared;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    protected Timer mTimer;
    private int mVideoHeight;
    private String mVideoHost;
    private String mVideoPath;
    private int mVideoPort;
    private String mVideoResloveIp;
    private int mVideoRotationDegree;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private int mWidth;
    public JSONObject object;
    protected IRenderView.ISurfaceHolder mSurfaceHolder = null;
    protected IMediaPlayer mMediaPlayer = null;
    private IMediaPlayer mAudioPlayer = null;
    private boolean mCanPause = true;
    private boolean mCanSeekBack = true;
    private boolean mCanSeekForward = true;
    private long mPrepareStartTime = 0;
    private long mAudioPrepareStartTime = 0;
    private long mPrepareEndTime = 0;
    private long mSeekStartTime = 0;
    private long mSeekEndTime = 0;
    IMediaPlayer.OnVideoSizeChangedListener mSizeChangedListener = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.2
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i10, int i11, int i12, int i13) {
            RtmpPlayer.this.mVideoWidth = iMediaPlayer.getVideoWidth();
            RtmpPlayer.this.mVideoHeight = iMediaPlayer.getVideoHeight();
            RtmpPlayer.this.mVideoSarNum = iMediaPlayer.getVideoSarNum();
            RtmpPlayer.this.mVideoSarDen = iMediaPlayer.getVideoSarDen();
        }
    };
    IMediaPlayer.OnPreparedListener mPreparedListener = new IMediaPlayer.OnPreparedListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.3
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            RtmpPlayer.this.mPrepareEndTime = System.currentTimeMillis();
            RtmpPlayer.this.ijkVideoView.setmCurrentState(2);
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            HmcpRequest hmcpRequest = rtmpPlayer.mRequestManager;
            if (hmcpRequest != null) {
                hmcpRequest.setResultNetData("videoUrl", "success", "", rtmpPlayer.mPrepareStartTime);
            }
            if (RtmpPlayer.this.ijkVideoView == null) {
                return;
            }
            if (RtmpPlayer.this.ijkVideoView.getCloudPlayInfo() != null) {
                RtmpPlayer.this.ijkVideoView.getCloudPlayInfo().isVideoConnectSuccess = true;
            } else {
                LogUtils.d(RtmpPlayer.TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isVideoConnectSuccess = true");
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_STREAM_CONNECT_SUCCESS);
            LogUtils.i(RtmpPlayer.TAG, "OnPreparedListener===onPrepared()==SUCCESS ");
            if (RtmpPlayer.this.mOnPreparedListener != null) {
                RtmpPlayer.this.mOnPreparedListener.onPrepared(RtmpPlayer.this.mMediaPlayer);
            }
            RtmpPlayer.this.mVideoWidth = iMediaPlayer.getVideoWidth();
            RtmpPlayer.this.mVideoHeight = iMediaPlayer.getVideoHeight();
            int i10 = RtmpPlayer.this.mSeekWhenPrepared;
            if (i10 != 0) {
                RtmpPlayer.this.seekTo(i10);
            }
            if (RtmpPlayer.this.mVideoWidth == 0 || RtmpPlayer.this.mVideoHeight == 0) {
                if (RtmpPlayer.this.ijkVideoView.getmTargetState() == 3) {
                    RtmpPlayer.this.start();
                    return;
                }
                return;
            }
            IRenderView iRenderView = RtmpPlayer.this.mRenderView;
            if (iRenderView != null) {
                if (iRenderView.shouldWaitForResize() && (RtmpPlayer.this.mSurfaceWidth != RtmpPlayer.this.mVideoWidth || RtmpPlayer.this.mSurfaceHeight != RtmpPlayer.this.mVideoHeight)) {
                    RtmpPlayer rtmpPlayer2 = RtmpPlayer.this;
                    if ((rtmpPlayer2.mRenderView instanceof SurfaceRenderView) && rtmpPlayer2.ijkVideoView.getmTargetState() == 3) {
                        RtmpPlayer.this.start();
                        return;
                    }
                    return;
                }
                if (RtmpPlayer.this.ijkVideoView.getmTargetState() == 3) {
                    RtmpPlayer.this.start();
                } else {
                    if (RtmpPlayer.this.isPlaying() || i10 != 0) {
                        return;
                    }
                    RtmpPlayer.this.getCurrentPosition();
                }
            }
        }
    };
    IMediaPlayer.OnPreparedListener mAudioPreparedListener = new IMediaPlayer.OnPreparedListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.4
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            LogUtils.i(RtmpPlayer.TAG, "mAudioPreparedListener===mAudioPlayer==SUCCESS");
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            HmcpRequest hmcpRequest = rtmpPlayer.mRequestManager;
            if (hmcpRequest != null) {
                hmcpRequest.setResultNetData("audioUrl", "success", "", rtmpPlayer.mAudioPrepareStartTime);
            }
            if (RtmpPlayer.this.ijkVideoView == null) {
                return;
            }
            if (RtmpPlayer.this.ijkVideoView.getCloudPlayInfo() != null) {
                RtmpPlayer.this.ijkVideoView.getCloudPlayInfo().isAudioConnectSuccess = true;
            } else {
                LogUtils.d(RtmpPlayer.TAG, "cloudPlayInfo == null,can't set ijkVideoView.getCloudPlayInfo().isAudioConnectSuccess = true");
            }
            CountlyUtil.recordEvent(Constants.COUNTYLY_AUDIO_STREAM_CONNECT_SUCCESS);
            RtmpPlayer.this.mAudioPlayer.start();
        }
    };
    private IMediaPlayer.OnCompletionListener mCompletionListener = new IMediaPlayer.OnCompletionListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.5
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(IMediaPlayer iMediaPlayer) {
            LogUtils.i(RtmpPlayer.TAG, "onCompletion");
            RtmpPlayer.this.ijkVideoView.setmCurrentState(5);
            RtmpPlayer.this.ijkVideoView.setmTargetState(5);
            if (RtmpPlayer.this.mOnCompletionListener != null) {
                RtmpPlayer.this.mOnCompletionListener.onCompletion(RtmpPlayer.this.mMediaPlayer);
            }
        }
    };
    private IMediaPlayer.OnInfoListener mInfoListener = new IMediaPlayer.OnInfoListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.6
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnInfoListener
        public boolean onInfo(IMediaPlayer iMediaPlayer, int i10, int i11) {
            if (RtmpPlayer.this.mOnInfoListener != null) {
                RtmpPlayer.this.mOnInfoListener.onInfo(iMediaPlayer, i10, i11);
            }
            if (i10 == 3) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_VIDEO_RENDERING_START:");
                return true;
            }
            if (i10 == 10004) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_VIDEO_DECODED_START:");
                RtmpPlayer rtmpPlayer = RtmpPlayer.this;
                if (rtmpPlayer.mMediaPlayer == null) {
                    return true;
                }
                rtmpPlayer.mVideoRotationDegree = rtmpPlayer.ijkVideoView.getOrientation() != ScreenOrientation.PORTRAIT ? 0 : 90;
                RtmpPlayer rtmpPlayer2 = RtmpPlayer.this;
                IRenderView iRenderView = rtmpPlayer2.mRenderView;
                if (iRenderView != null) {
                    iRenderView.setVideoRotation(rtmpPlayer2.mVideoRotationDegree);
                }
                RtmpPlayer rtmpPlayer3 = RtmpPlayer.this;
                rtmpPlayer3.mVideoWidth = rtmpPlayer3.mMediaPlayer.getVideoWidth();
                RtmpPlayer rtmpPlayer4 = RtmpPlayer.this;
                rtmpPlayer4.mVideoHeight = rtmpPlayer4.mMediaPlayer.getVideoHeight();
                RtmpPlayer rtmpPlayer5 = RtmpPlayer.this;
                rtmpPlayer5.mVideoSarNum = rtmpPlayer5.mMediaPlayer.getVideoSarNum();
                RtmpPlayer rtmpPlayer6 = RtmpPlayer.this;
                rtmpPlayer6.mVideoSarDen = rtmpPlayer6.mMediaPlayer.getVideoSarDen();
                if (RtmpPlayer.this.mVideoWidth == 0 || RtmpPlayer.this.mVideoHeight == 0) {
                    return true;
                }
                RtmpPlayer rtmpPlayer7 = RtmpPlayer.this;
                if (rtmpPlayer7.mRenderView != null) {
                    rtmpPlayer7.updateVideoSize(rtmpPlayer7.mVideoWidth, RtmpPlayer.this.mVideoHeight);
                    RtmpPlayer rtmpPlayer8 = RtmpPlayer.this;
                    rtmpPlayer8.mRenderView.setVideoSampleAspectRatio(rtmpPlayer8.mVideoSarNum, RtmpPlayer.this.mVideoSarDen);
                }
                RtmpPlayer.this.ijkVideoView.requestLayout();
                return true;
            }
            if (i10 == 901) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:");
                return true;
            }
            if (i10 == 902) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_SUBTITLE_TIMED_OUT:");
                return true;
            }
            if (i10 == 10001) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: " + i11);
                RtmpPlayer rtmpPlayer9 = RtmpPlayer.this;
                rtmpPlayer9.mVideoRotationDegree = rtmpPlayer9.getScreenOrientation() != ScreenOrientation.PORTRAIT ? 0 : 90;
                return true;
            }
            if (i10 == 10002) {
                LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_AUDIO_RENDERING_START:");
                return true;
            }
            switch (i10) {
                case 700:
                    LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_VIDEO_TRACK_LAGGING:");
                    break;
                case 701:
                    LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_BUFFERING_START:");
                    break;
                case 702:
                    LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_BUFFERING_END:");
                    break;
                case 703:
                    LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_NETWORK_BANDWIDTH: " + i11);
                    break;
                default:
                    switch (i10) {
                        case 800:
                            LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_BAD_INTERLEAVING:");
                            break;
                        case 801:
                            LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_NOT_SEEKABLE:");
                            break;
                        case 802:
                            LogUtils.i(RtmpPlayer.TAG, "MEDIA_INFO_METADATA_UPDATE:");
                            break;
                    }
                    break;
            }
            return true;
        }
    };
    private IMediaPlayer.OnErrorListener mErrorListener = new IMediaPlayer.OnErrorListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.7
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i10, int i11) {
            RtmpPlayer.this.cancelFirstFrameTimer();
            RtmpPlayer.this.onVideoError(i10, i11, i10 + "|" + i11);
            return true;
        }

        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onErrorMsg(IMediaPlayer iMediaPlayer, int i10, int i11, String str) {
            String str2 = "onErrorMsg (" + i10 + "," + i11 + "," + str + ")";
            LogUtils.e(RtmpPlayer.TAG, str2);
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            HmcpRequest hmcpRequest = rtmpPlayer.mRequestManager;
            if (hmcpRequest == null) {
                return true;
            }
            hmcpRequest.setResultNetData("videoUrl", "fail", str2, rtmpPlayer.mPrepareStartTime);
            return true;
        }
    };
    private IMediaPlayer.OnErrorListener mAudioErrorListener = new IMediaPlayer.OnErrorListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.8
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i10, int i11) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_AUDIO_STREAM_CONNECT_FAIL, i10 + "|" + i11);
            LogUtils.e(RtmpPlayer.TAG, "mAudioPreparedListener===Error: " + i10 + "," + i11);
            return true;
        }

        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onErrorMsg(IMediaPlayer iMediaPlayer, int i10, int i11, String str) {
            String str2 = "onErrorMsg (" + i10 + "," + i11 + "," + str + ")";
            LogUtils.e(RtmpPlayer.TAG, str2);
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            HmcpRequest hmcpRequest = rtmpPlayer.mRequestManager;
            if (hmcpRequest == null) {
                return true;
            }
            hmcpRequest.setResultNetData("audioUrl", "fail", str2, rtmpPlayer.mAudioPrepareStartTime);
            return true;
        }
    };
    private IMediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.9
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i10) {
            LogUtils.i(RtmpPlayer.TAG, "onBufferingUpdate");
            RtmpPlayer.this.mCurrentBufferPercentage = i10;
        }
    };
    private IMediaPlayer.OnSeekCompleteListener mSeekCompleteListener = new IMediaPlayer.OnSeekCompleteListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.10
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(IMediaPlayer iMediaPlayer) {
            RtmpPlayer.this.mSeekEndTime = System.currentTimeMillis();
        }
    };
    private IMediaPlayer.OnTimedTextListener mOnTimedTextListener = new IMediaPlayer.OnTimedTextListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.11
        @Override // tv.haima.ijk.media.player.IMediaPlayer.OnTimedTextListener
        public void onTimedText(IMediaPlayer iMediaPlayer, IjkTimedText ijkTimedText) {
        }
    };
    IRenderView.IRenderCallback mSHCallback = new IRenderView.IRenderCallback() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.12
        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.IRenderCallback
        public void onSurfaceChanged(@NonNull IRenderView.ISurfaceHolder iSurfaceHolder, int i10, int i11, int i12) {
            if (iSurfaceHolder.getRenderView() != RtmpPlayer.this.mRenderView) {
                LogUtils.i(RtmpPlayer.TAG, "onSurfaceChanged: unmatched render callback\n");
                return;
            }
            LogUtils.i(RtmpPlayer.TAG, "===onSurfaceChanged==");
            RtmpPlayer.this.mSurfaceWidth = i11;
            RtmpPlayer.this.mSurfaceHeight = i12;
            LogUtils.e(RtmpPlayer.TAG, RtmpPlayer.this.mSurfaceWidth + " " + RtmpPlayer.this.mSurfaceHeight);
            boolean z10 = true;
            boolean z11 = RtmpPlayer.this.ijkVideoView.getmTargetState() == 3;
            if (RtmpPlayer.this.mRenderView.shouldWaitForResize() && (RtmpPlayer.this.mVideoWidth != i11 || RtmpPlayer.this.mVideoHeight != i12)) {
                z10 = false;
            }
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            if (rtmpPlayer.mMediaPlayer != null && z11 && z10) {
                if (rtmpPlayer.mSeekWhenPrepared != 0) {
                    RtmpPlayer rtmpPlayer2 = RtmpPlayer.this;
                    rtmpPlayer2.seekTo(rtmpPlayer2.mSeekWhenPrepared);
                }
                RtmpPlayer.this.start();
            }
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.IRenderCallback
        public void onSurfaceCreated(@NonNull IRenderView.ISurfaceHolder iSurfaceHolder, int i10, int i11) {
            if (iSurfaceHolder.getRenderView() != RtmpPlayer.this.mRenderView) {
                LogUtils.i(RtmpPlayer.TAG, "onSurfaceCreated: unmatched render callback\n");
                return;
            }
            LogUtils.i(RtmpPlayer.TAG, "===onSurfaceCreated==");
            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
            rtmpPlayer.mSurfaceHolder = iSurfaceHolder;
            IMediaPlayer iMediaPlayer = rtmpPlayer.mMediaPlayer;
            if (iMediaPlayer != null) {
                rtmpPlayer.bindSurfaceHolder(iMediaPlayer, iSurfaceHolder, rtmpPlayer.getSurfaceTexture());
            }
        }

        @Override // com.haima.hmcp.rtmp.widgets.IRenderView.IRenderCallback
        public void onSurfaceDestroyed(@NonNull IRenderView.ISurfaceHolder iSurfaceHolder) {
            if (iSurfaceHolder.getRenderView() != RtmpPlayer.this.mRenderView) {
                LogUtils.i(RtmpPlayer.TAG, "onSurfaceDestroyed: unmatched render callback\n");
                return;
            }
            LogUtils.i(RtmpPlayer.TAG, "===onSurfaceDestroyed==");
            RtmpPlayer.this.mSurfaceHolder = null;
            if (HmcpManager.getInstance().getVideoViewType() == 1) {
                new Thread(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RtmpPlayer.this.doRelease(true, false);
                    }
                }).start();
            }
        }
    };
    private int mCurrentAspectRatioIndex = 0;
    private int mCurrentAspectRatio = s_allAspectRatio[0];
    private List<Integer> mAllRenders = new ArrayList();
    private int mCurrentRenderIndex = 0;
    private int mCurrentRender = 0;

    class FirstFrameTimer extends CountDownTimer {
        /* JADX WARN: Illegal instructions before constructor call */
        public FirstFrameTimer() {
            long j10 = Constants.FIRST_FRAME_TIMEOUT;
            super(j10, j10);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            LogUtils.i(RtmpPlayer.TAG, "FirstFrameTimer is time out");
            RtmpPlayer.this.release(true);
            RtmpPlayer.this.onVideoError(-1, -1, "First frame timeout");
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
        }
    }

    public RtmpPlayer(Context context, AbsIjkVideoView absIjkVideoView, HmcpRequest hmcpRequest) {
        if (context == null) {
            LogUtils.e(TAG, "rtmpPlayer init fail, context is null");
            CountlyUtil.recordEvent("12200", "rtmpPlayer init fail, context is null");
        } else {
            this.ijkVideoView = absIjkVideoView;
            this.mRequestManager = hmcpRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelFirstFrameTimer() {
        LogUtils.i(TAG, "cancelFirstFrameTimer is call, mFirstFrameTimer: " + this.mFirstFrameTimer);
        FirstFrameTimer firstFrameTimer = this.mFirstFrameTimer;
        if (firstFrameTimer != null) {
            try {
                firstFrameTimer.cancel();
            } catch (Exception e10) {
                LogUtils.e(TAG, "cancelFirstFrameTimer got Exception: " + e10.toString());
                CountlyUtil.recordErrorEvent("cancelFirstFrameTimer got Exception: " + e10.toString());
            }
            this.mFirstFrameTimer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0029 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0006, B:7:0x000e, B:9:0x0020, B:10:0x0025, B:12:0x0029, B:13:0x0033, B:15:0x0044, B:18:0x004b), top: B:26:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x000e A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0006, B:7:0x000e, B:9:0x0020, B:10:0x0025, B:12:0x0029, B:13:0x0033, B:15:0x0044, B:18:0x004b), top: B:26:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x0020 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0006, B:7:0x000e, B:9:0x0020, B:10:0x0025, B:12:0x0029, B:13:0x0033, B:15:0x0044, B:18:0x004b), top: B:26:0x0003 }] */
    public synchronized void doRelease(boolean z10, boolean z11) {
        IMediaPlayer iMediaPlayer;
        IMediaPlayer iMediaPlayer2;
        AbsIjkVideoView absIjkVideoView;
        if (!z11) {
            onPlayerRelease();
            iMediaPlayer = this.mMediaPlayer;
            if (iMediaPlayer != null) {
                iMediaPlayer.reset();
                this.mMediaPlayer.release();
                this.mMediaPlayer = null;
                this.ijkVideoView.setmCurrentState(0);
                if (z10) {
                    this.ijkVideoView.setmTargetState(0);
                }
            }
            iMediaPlayer2 = this.mAudioPlayer;
            if (iMediaPlayer2 != null) {
                iMediaPlayer2.reset();
                this.mAudioPlayer.release();
                this.mAudioPlayer = null;
            }
            ((AudioManager) this.mAppContext.getSystemService("audio")).abandonAudioFocus(null);
            absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.UPLOAD);
                this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.BATCH_UPLOAD);
                this.ijkVideoView.stopAllPhoneVibrators();
                return;
            }
            return;
        }
        cancelFirstFrameTimer();
        onPlayerRelease();
        iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.ijkVideoView.setmCurrentState(0);
            if (z10) {
                this.ijkVideoView.setmTargetState(0);
            }
        }
        iMediaPlayer2 = this.mAudioPlayer;
        if (iMediaPlayer2 != null) {
            iMediaPlayer2.reset();
            this.mAudioPlayer.release();
            this.mAudioPlayer = null;
        }
        ((AudioManager) this.mAppContext.getSystemService("audio")).abandonAudioFocus(null);
        absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null && absIjkVideoView.getmCloudFileManager() != null) {
            this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.UPLOAD);
            this.ijkVideoView.getmCloudFileManager().cancel(CloudOperation.BATCH_UPLOAD);
            this.ijkVideoView.stopAllPhoneVibrators();
            return;
        }
        return;
        throw th;
    }

    private String faultTolerant(String str) {
        String[] strArrSplit = str.split(",");
        if (TextUtils.isEmpty(str) || strArrSplit.length < 8) {
            return str;
        }
        int iLastIndexOf = str.lastIndexOf(",");
        LogUtils.e(TAG, "--------reportFrameDelayInfo lastIndex= " + iLastIndexOf + " info:" + str);
        return str.substring(0, iLastIndexOf + 1);
    }

    private void initRenders() {
        this.mAllRenders.clear();
        if (this.mAllRenders.isEmpty()) {
            this.mAllRenders.add(Integer.valueOf(this.mCurrentRender));
        }
        int iIntValue = this.mAllRenders.get(this.mCurrentRenderIndex).intValue();
        this.mCurrentRender = iIntValue;
        setRender(iIntValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convertVideoAndAudioPathASync$0(String str, String str2, String str3, String str4, DnsConvertCallback dnsConvertCallback, ConcurrentHashMap concurrentHashMap) {
        String str5 = TAG;
        LogUtils.d(str5, "convertVideoAndAudioPathASync with DnsManager result:" + concurrentHashMap);
        if (TextUtils.isEmpty(str) || !str.equalsIgnoreCase((String) concurrentHashMap.get(str))) {
            String ipv6AddressStyle = (String) concurrentHashMap.get(str);
            this.mVideoResloveIp = ipv6AddressStyle;
            if (!Utils.isIpv4Address(ipv6AddressStyle)) {
                ipv6AddressStyle = Utils.getIpv6AddressStyle(ipv6AddressStyle);
            }
            this.mVideoPath = str2.replace(str, ipv6AddressStyle);
        } else {
            this.mVideoPath = str2;
        }
        if (TextUtils.isEmpty(str3) || !str3.equalsIgnoreCase((String) concurrentHashMap.get(str3))) {
            String ipv6AddressStyle2 = (String) concurrentHashMap.get(str3);
            if (!Utils.isIpv4Address(ipv6AddressStyle2)) {
                ipv6AddressStyle2 = Utils.getIpv6AddressStyle(ipv6AddressStyle2);
            }
            this.mAudioPath = str4.replace(str3, ipv6AddressStyle2);
        } else {
            this.mAudioPath = str4;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RTMP_RESLOVED, String.format(Locale.US, "convertVideoAndAudioPathASync videoPath %s -> %s, audioPath %s -> %s", URLEncoder.encode(str2), URLEncoder.encode(this.mVideoPath), URLEncoder.encode(str4), URLEncoder.encode(this.mAudioPath)));
        LogUtils.ifmt(str5, "convertVideoAndAudioPathASync with DnsManager mVideoHost: %s, mVideoPort: %s, videoPath %s -> %s, audioPath %s -> %s", this.mVideoHost, Integer.valueOf(this.mVideoPort), str2, this.mVideoPath, str4, this.mAudioPath);
        if (dnsConvertCallback != null) {
            LogUtils.d(str5, "setVideoAndAudioPathAsync success then convertFinish");
            dnsConvertCallback.convertFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$convertVideoAndAudioPathASync$1(DnsConvertCallback dnsConvertCallback) {
        if (dnsConvertCallback != null) {
            LogUtils.e(TAG, "convertVideoAndAudioPath happened exception then convertFinish");
            dnsConvertCallback.convertFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVideoError(int i10, int i11, String str) {
        LogUtils.e(TAG, String.format(Locale.US, "onVideoError what: %d, extra: %d, error: %s", Integer.valueOf(i10), Integer.valueOf(i11), str));
        CountlyUtil.recordEvent(Constants.COUNTYLY_VIDEO_STREAM_CONNECT_FAIL, JsonUtil.toJsonString(new ReportBaseFailed("" + i10, str, i11, str, 0)));
        this.ijkVideoView.setmCurrentState(-1);
        this.ijkVideoView.setmTargetState(-1);
        if (!TextUtils.isEmpty(this.mVideoHost)) {
            DnsManager.getInstance().networkFailed(this.mVideoPath, this.mVideoHost, this.mVideoResloveIp);
            ConnectivityCheck.getInstance().postCheckTask("rtmpVideo", this.mVideoResloveIp, this.mVideoPort);
        }
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onError(i10, i11);
        }
    }

    @TargetApi(23)
    private void openVideoAndAudio() {
        if (TextUtils.isEmpty(this.mVideoPath) || TextUtils.isEmpty(this.mAudioPath) || this.ijkVideoView == null) {
            CountlyUtil.recordErrorEvent("openVideoAndAudio got bad mVideoPath: " + this.mVideoPath + " OR bad mAudioPath: " + this.mAudioPath);
            return;
        }
        release(false);
        startFirstFrameTimer();
        if (this.ijkVideoView.getSetResolution() != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_FRAME_CURRENT_BITRATE, JsonUtil.toJsonString(new ReportStartPlayStream(this.ijkVideoView.getSetResolution().f33828id, this.ijkVideoView.getSetResolution().bitRate, "" + this.ijkVideoView.getSetResolution().frameRate)));
        }
        try {
            if (TextUtils.isEmpty(this.mVideoPath)) {
                LogUtils.e(TAG, "mVideoPath is null!");
            } else {
                this.mMediaPlayer = createPlayer(false);
                LogUtils.i(TAG, "createPlayer===mMediaPlayer");
                this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
                this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
                this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
                this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
                this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
                this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
                this.mCurrentBufferPercentage = 0;
                CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_VIDEO_STREAM);
                this.mMediaPlayer.setDataSource(this.mAppContext, Uri.parse(this.mVideoPath), null);
                IRenderView.ISurfaceHolder iSurfaceHolder = this.mSurfaceHolder;
                if (iSurfaceHolder != null) {
                    bindSurfaceHolder(this.mMediaPlayer, iSurfaceHolder, null);
                }
                this.mMediaPlayer.setAudioStreamType(3);
                this.mMediaPlayer.setScreenOnWhilePlaying(true);
                ((IjkMediaPlayer) this.mMediaPlayer).setWakeLockEnable(this.ijkVideoView.isWakeLockPermission());
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.mPrepareStartTime = jCurrentTimeMillis;
                HmcpRequest hmcpRequest = this.mRequestManager;
                if (hmcpRequest != null) {
                    hmcpRequest.setStartNetData("videoUrl", this.mVideoPath, jCurrentTimeMillis);
                }
                this.mMediaPlayer.prepareAsync();
                this.ijkVideoView.setmCurrentState(1);
            }
            if (TextUtils.isEmpty(this.mAudioPath)) {
                LogUtils.e(TAG, "mAudioPath is null!");
                return;
            }
            int iRequestAudioFocus = ((AudioManager) this.mAppContext.getSystemService("audio")).requestAudioFocus(null, 3, 1);
            String str = TAG;
            LogUtils.i(str, "AudioManager===result=>" + iRequestAudioFocus);
            IMediaPlayer iMediaPlayerCreatePlayer = createPlayer(true);
            this.mAudioPlayer = iMediaPlayerCreatePlayer;
            iMediaPlayerCreatePlayer.setOnPreparedListener(this.mAudioPreparedListener);
            this.mAudioPlayer.setOnErrorListener(this.mAudioErrorListener);
            LogUtils.i(str, "createPlayer===mAudioPlayer");
            CountlyUtil.recordEvent(Constants.COUNTYLY_CONNECT_AUDIO_STREAM);
            this.mAudioPlayer.setDataSource(this.mAppContext, Uri.parse(this.mAudioPath), null);
            this.mAudioPlayer.setAudioStreamType(3);
            ((IjkMediaPlayer) this.mAudioPlayer).setWakeLockEnable(this.ijkVideoView.isWakeLockPermission());
            this.mAudioPrepareStartTime = System.currentTimeMillis();
            LogUtils.e(str, "audioUrl:" + this.mAudioPrepareStartTime);
            HmcpRequest hmcpRequest2 = this.mRequestManager;
            if (hmcpRequest2 != null) {
                hmcpRequest2.setStartNetData("audioUrl", this.mVideoPath, this.mAudioPrepareStartTime);
            }
            this.mAudioPlayer.prepareAsync();
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.setAudioMute(absIjkVideoView.isAudioMute());
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "Unable to open content: " + this.mVideoPath, e10);
            cancelFirstFrameTimer();
            this.ijkVideoView.setmCurrentState(-1);
            this.ijkVideoView.setmTargetState(-1);
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
            CountlyUtil.recordErrorEvent("openVideoAndAudio:: mMediaPlayer error=>" + Log.getStackTraceString(e10));
        }
    }

    private void rotateOrientation() {
        if (getScreenOrientation() != ScreenOrientation.PORTRAIT || this.mRenderView == null) {
            return;
        }
        LogUtils.i(TAG, "==rotateOrientation====");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mRenderView.getView(), "rotation", 0.0f, 90.0f);
        objectAnimatorOfFloat.setDuration(0L);
        objectAnimatorOfFloat.start();
    }

    private void setRenderView(IRenderView iRenderView) {
        int i10;
        int i11;
        if (this.ijkVideoView == null) {
            return;
        }
        if (this.mRenderView != null) {
            IMediaPlayer iMediaPlayer = this.mMediaPlayer;
            if (iMediaPlayer != null) {
                iMediaPlayer.setDisplay(null);
            }
            View view = this.mRenderView.getView();
            this.mRenderView.removeRenderCallback(this.mSHCallback);
            this.mRenderView = null;
            this.ijkVideoView.removeView(view);
        }
        if (iRenderView == null) {
            return;
        }
        this.mRenderView = iRenderView;
        this.ijkVideoView.getmScreenShotManager().setConfig(this.ijkVideoView.getmScreenShotConfig().setStreamType(Constants.STREAM_TYPE_RTMP).setRtmpRender(this.mRenderView));
        iRenderView.setAspectRatio(this.mCurrentAspectRatio);
        int i12 = this.mVideoWidth;
        if (i12 > 0 && (i11 = this.mVideoHeight) > 0) {
            iRenderView.setVideoSize(i12, i11);
        }
        int i13 = this.mVideoSarNum;
        if (i13 > 0 && (i10 = this.mVideoSarDen) > 0) {
            iRenderView.setVideoSampleAspectRatio(i13, i10);
        }
        final View view2 = this.mRenderView.getView();
        view2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                boolean z10;
                view2.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                boolean z11 = true;
                if (RtmpPlayer.this.mMeasuredWidth != view2.getMeasuredWidth()) {
                    RtmpPlayer.this.mMeasuredWidth = view2.getMeasuredWidth();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (RtmpPlayer.this.mMeasuredHeight != view2.getMeasuredHeight()) {
                    RtmpPlayer.this.mMeasuredHeight = view2.getMeasuredHeight();
                    z10 = true;
                }
                if (RtmpPlayer.this.mWidth != view2.getWidth()) {
                    RtmpPlayer.this.mWidth = view2.getWidth();
                    z10 = true;
                }
                if (RtmpPlayer.this.mHeight != view2.getHeight()) {
                    RtmpPlayer.this.mHeight = view2.getHeight();
                } else {
                    z11 = z10;
                }
                String str = (RtmpPlayer.this.mRenderView instanceof SurfaceRenderView ? "Surface " : "Texture ") + "RenderView size: measuredWidth=" + RtmpPlayer.this.mMeasuredWidth + ", measuredHeight=" + RtmpPlayer.this.mMeasuredHeight + ", width=" + RtmpPlayer.this.mWidth + ", height=" + RtmpPlayer.this.mHeight;
                if (z11) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_RENDER_SIZE, str);
                }
                LogUtils.d(RtmpPlayer.TAG, str);
            }
        });
        view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        this.ijkVideoView.addView(view2, 0);
        this.mRenderView.addRenderCallback(this.mSHCallback);
        this.mRenderView.setVideoRotation(this.mVideoRotationDegree);
        this.ijkVideoView.setRenderView(iRenderView);
    }

    private void setVideoURI() {
        this.mSeekWhenPrepared = 0;
        openVideoAndAudio();
    }

    private void startFirstFrameTimer() {
        LogUtils.i(TAG, "startFirstFrameTimer is call, mFirstFrameTimer: " + this.mFirstFrameTimer);
        cancelFirstFrameTimer();
        FirstFrameTimer firstFrameTimer = new FirstFrameTimer();
        this.mFirstFrameTimer = firstFrameTimer;
        firstFrameTimer.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVideoSize(int i10, int i11) {
        int screenHeight;
        int screenHeight2;
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getScreenWidth() == 0 && this.ijkVideoView.getScreenHeight() == 0) {
            this.ijkVideoView.setScreenWidth(ConfigUtil.getScreenWidth(this.mAppContext));
            this.ijkVideoView.setScreenHeight(ConfigUtil.getScreenHeight(this.mAppContext));
        }
        if (this.ijkVideoView.getScreenWidth() <= i10 && this.ijkVideoView.getScreenHeight() <= i11) {
            screenHeight2 = i10;
            screenHeight = i11;
        } else if (getScreenOrientation() == ScreenOrientation.PORTRAIT) {
            screenHeight = this.ijkVideoView.getScreenWidth();
            screenHeight2 = (this.ijkVideoView.getScreenWidth() * i10) / i11;
        } else {
            screenHeight = this.ijkVideoView.getScreenHeight();
            screenHeight2 = (this.ijkVideoView.getScreenHeight() * i10) / i11;
        }
        this.ijkVideoView.setmShowWidth(screenHeight2);
        this.ijkVideoView.setmShowHeight(screenHeight);
        String str = "Streaming size[ width=" + i10 + ", height=" + i11 + "], RenderView size[ width=" + screenHeight2 + ", height=" + screenHeight + "]";
        CountlyUtil.recordEvent(Constants.COUNTLY_STREAMING_SIZE, str);
        LogUtils.d(TAG, "==onMeasure: " + str);
        this.mRenderView.setVideoSize(screenHeight2, screenHeight);
    }

    protected void CloudStateSend(int i10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.CloudStateSend(i10);
    }

    protected void UiMessageSend(String str) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.UiMessageSend(str);
    }

    protected void bindSurfaceHolder(IMediaPlayer iMediaPlayer, IRenderView.ISurfaceHolder iSurfaceHolder, SurfaceTexture surfaceTexture) {
        if (iMediaPlayer == null) {
            return;
        }
        if (iSurfaceHolder == null) {
            iMediaPlayer.setDisplay(null);
        } else {
            iSurfaceHolder.bindToMediaPlayer(iMediaPlayer, surfaceTexture);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.mCanPause;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.mCanSeekBack;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.mCanSeekForward;
    }

    protected void convertVideoAndAudioPathASync(final String str, final String str2, final DnsConvertCallback dnsConvertCallback) {
        try {
            URI uri = new URI(str);
            final String host = uri.getHost();
            this.mVideoHost = host;
            this.mVideoPort = uri.getPort();
            final String host2 = new URI(str2).getHost();
            ArrayList arrayList = new ArrayList();
            arrayList.add(host);
            arrayList.add(host2);
            DnsManager.getInstance().getHostAddressListASync(this.mAppContext, "convertVideoAndAudioPath", arrayList, new DnsAsyncCallBack() { // from class: com.haima.hmcp.rtmp.widgets.b
                @Override // com.haima.hmcp.dns.interfaces.DnsAsyncCallBack
                public final void dnsAsyncCallback(ConcurrentHashMap concurrentHashMap) {
                    this.f34081a.lambda$convertVideoAndAudioPathASync$0(host, str, host2, str2, dnsConvertCallback, concurrentHashMap);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("setVideoAndAudioPathAsync with DnsManager got Exception: " + Utils.exceptionStackTrace(e10));
            this.mVideoPath = str;
            this.mAudioPath = str2;
            this.mVideoHost = null;
            this.mVideoPort = -1;
            this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.c
                @Override // java.lang.Runnable
                public final void run() {
                    RtmpPlayer.lambda$convertVideoAndAudioPathASync$1(dnsConvertCallback);
                }
            });
        }
    }

    protected void convertVideoAndAudioPathSync(String str, String str2) {
        try {
            URI uri = new URI(str);
            String host = uri.getHost();
            this.mVideoHost = host;
            this.mVideoPort = uri.getPort();
            String host2 = new URI(str2).getHost();
            ArrayList arrayList = new ArrayList();
            arrayList.add(host);
            arrayList.add(host2);
            List<String> hostAddressListSync = DnsManager.getInstance().getHostAddressListSync(arrayList);
            String str3 = TAG;
            LogUtils.ifmt(str3, "convertVideoAndAudioPathSync with DnsManager hosts: %s -> ips: %s", arrayList, hostAddressListSync);
            this.mVideoResloveIp = hostAddressListSync.get(0);
            if (TextUtils.isEmpty(host) || !host.equalsIgnoreCase(hostAddressListSync.get(0))) {
                String ipv6AddressStyle = hostAddressListSync.get(0);
                if (!Utils.isIpv4Address(ipv6AddressStyle)) {
                    ipv6AddressStyle = Utils.getIpv6AddressStyle(ipv6AddressStyle);
                }
                this.mVideoPath = str.replace(host, ipv6AddressStyle);
            } else {
                this.mVideoPath = str;
            }
            if (TextUtils.isEmpty(host2) || !host2.equalsIgnoreCase(hostAddressListSync.get(1))) {
                String ipv6AddressStyle2 = hostAddressListSync.get(1);
                if (!Utils.isIpv4Address(ipv6AddressStyle2)) {
                    ipv6AddressStyle2 = Utils.getIpv6AddressStyle(ipv6AddressStyle2);
                }
                this.mAudioPath = str2.replace(host2, ipv6AddressStyle2);
            } else {
                this.mAudioPath = str2;
            }
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RTMP_RESLOVED, String.format(Locale.US, "convertVideoAndAudioPathSync videoPath %s -> %s, audioPath %s -> %s", URLEncoder.encode(str), URLEncoder.encode(this.mVideoPath), URLEncoder.encode(str2), URLEncoder.encode(this.mAudioPath)));
            LogUtils.ifmt(str3, "convertVideoAndAudioPathSync with DnsManager mVideoHost: %s, mVideoPort: %s, videoPath %s -> %s, audioPath %s -> %s", this.mVideoHost, Integer.valueOf(this.mVideoPort), str, this.mVideoPath, str2, this.mAudioPath);
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("convertVideoAndAudioPathSync with DnsManager got Exception: " + Utils.exceptionStackTrace(e10));
            this.mVideoPath = str;
            this.mAudioPath = str2;
            this.mVideoHost = null;
            this.mVideoPort = -1;
        }
    }

    public IMediaPlayer createPlayer(boolean z10) {
        IjkMediaPlayer ijkMediaPlayer = new IjkMediaPlayer();
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("screenCap useSurfaceTextureFlag: ");
        sb2.append(Constants.USE_SURFACE_TEXTURE_FLAG > 0);
        LogUtils.e(str, sb2.toString());
        ijkMediaPlayer.setUseSurfaceTextureFlag(Constants.USE_SURFACE_TEXTURE_FLAG > 0);
        ijkMediaPlayer.setFirstFrameRenderedCallback(new ijkFrameRenderingStartedCallback() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.16
            @Override // tv.haima.ijk.media.player.ijkFrameRenderingStartedCallback
            public void FrameRenderingStarted() {
                CcallJava.notifyFirstFrameRendering();
            }
        });
        if (Constants.IS_DEBUG) {
            CcallJava.setIjkplayLog(true);
            IjkMediaPlayer.native_setLogLevel(3);
        } else {
            CcallJava.setIjkplayLog(false);
            IjkMediaPlayer.native_setLogLevel(5);
        }
        int decodeType = this.ijkVideoView.getDecodeType();
        if (Utils.isTV() && Constants.rtmpUseSoftwareDecoder) {
            decodeType = 0;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("rtmp mediacodec: ");
        sb3.append(decodeType == 1 ? "硬解码" : "软解码");
        LogUtils.d(str, sb3.toString());
        ijkMediaPlayer.setOption(4, "mediacodec", decodeType);
        ijkMediaPlayer.setOption(4, "opensles", 1L);
        ijkMediaPlayer.setOption(4, "overlay-format", 842225234L);
        ijkMediaPlayer.setOption(4, "framedrop", 1L);
        ijkMediaPlayer.setOption(4, "start-on-prepared", 0L);
        ijkMediaPlayer.setOption(1, "http-detect-range-support", 0L);
        ijkMediaPlayer.setOption(2, "skip_loop_filter", 48L);
        ijkMediaPlayer.setOption(4, "packet-buffering", 0L);
        ijkMediaPlayer.setOption(4, "first-high-water-mark-ms", 0L);
        ijkMediaPlayer.setOption(4, "next-high-water-mark-ms", 0L);
        ijkMediaPlayer.setOption(4, "last-high-water-mark-ms", 0L);
        ijkMediaPlayer.setOption(4, "min-frames", 60L);
        ijkMediaPlayer.setOption(4, "max-buffer-size", 1048576L);
        ijkMediaPlayer.setOption(4, "video-pictq-size", 60L);
        ijkMediaPlayer.setOption(1, "probesize", 1024L);
        ijkMediaPlayer.setOption(1, "analyzeduration", 0L);
        ijkMediaPlayer.setOption(1, "fpsprobesize", 0L);
        ijkMediaPlayer.setOption(1, "formatprobesize", 0L);
        if (z10) {
            ijkMediaPlayer.setOption(1, "fflags", "nobuffer");
        } else {
            ijkMediaPlayer.setOption(4, "mediacodec-handle-resolution-change", 1L);
        }
        int i10 = getScreenOrientation() == ScreenOrientation.PORTRAIT ? 90 : 0;
        this.mVideoRotationDegree = i10;
        if ((this.mRenderView instanceof SurfaceRenderView) && i10 > 0) {
            LogUtils.e(str, "amc degree create " + this.mVideoRotationDegree);
            ijkMediaPlayer.setOption(4, "rotate-layout", (long) this.mVideoRotationDegree);
            ijkMediaPlayer.setOption(4, "mediacodec-auto-rotate", 1L);
        }
        return ijkMediaPlayer;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    public int getCurrentBitRate() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        int i10 = 0;
        if (absIjkVideoView == null) {
            return 0;
        }
        try {
            i10 = Integer.parseInt(absIjkVideoView.getSetResolution().bitRate);
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("getCurrentBitRate::" + Log.getStackTraceString(e10));
            LogUtils.e(TAG, "getCurrentBitRate -------" + Log.getStackTraceString(e10));
        }
        return i10 / AVMDLDataLoader.KeyIsLiveSetLoaderType;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return (int) this.mMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (isInPlaybackState()) {
            return (int) this.mMediaPlayer.getDuration();
        }
        return -1;
    }

    public IMediaPlayer getIMediaPlayer(boolean z10) {
        if (this.mAppContext.getPackageName().contains("com.haima.me.saas_sdk")) {
            return z10 ? this.mAudioPlayer : this.mMediaPlayer;
        }
        return null;
    }

    protected String getMetaInfoByKey(String str) {
        LogUtils.i(TAG, "==getMetaInfoByKey====" + str);
        return getMetaInfoByKey(str, "");
    }

    public String getMinBitRate(List<ResolutionInfo> list) {
        if (list == null) {
            return null;
        }
        String str = "";
        for (int i10 = 0; i10 < list.size(); i10++) {
            ResolutionInfo resolutionInfo = list.get(i10);
            if (str.isEmpty()) {
                str = resolutionInfo.peakBitRate;
            } else if (Integer.parseInt(str) > Integer.parseInt(resolutionInfo.peakBitRate)) {
                str = resolutionInfo.peakBitRate;
            }
        }
        return str;
    }

    public IRenderView getRenderView() {
        return this.mRenderView;
    }

    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        if (list == null) {
            return null;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            ResolutionInfo resolutionInfo = list.get(i10);
            if (resolutionInfo != null) {
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.equals(resolutionInfo.defaultChoice, "1")) {
                    this.ijkVideoView.setCurrenteResolutionID(resolutionInfo.f33828id);
                    return resolutionInfo;
                }
                if (str != null && str.equals(resolutionInfo.peakBitRate)) {
                    return resolutionInfo;
                }
                if (str2 != null && str2.equals(resolutionInfo.f33828id)) {
                    return resolutionInfo;
                }
            }
        }
        return null;
    }

    public ScreenOrientation getScreenOrientation() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        return absIjkVideoView == null ? ScreenOrientation.LANDSCAPE : absIjkVideoView.getScreenOrientation();
    }

    public Bitmap getShortcut() {
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView instanceof TextureRenderView) {
            return ((TextureRenderView) iRenderView).getBitmap();
        }
        return null;
    }

    public String getStreamUrl() {
        return this.mVideoPath;
    }

    protected String getString(int i10) {
        return ResourceManager.getString(i10);
    }

    public SurfaceTexture getSurfaceTexture() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return null;
        }
        return absIjkVideoView.getSurfaceTexture();
    }

    public void initMetaInfo(HashMap<String, String> map) {
        this.mMetaInfos = map;
    }

    public void initVideoView(Context context) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.setScreenOrientation(ScreenOrientation.LANDSCAPE);
        }
        this.mAppContext = context.getApplicationContext();
        this.mContext = context;
        this.mCurrentRender = HmcpManager.getInstance().getVideoViewType();
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initVideoView-> set render type: ");
        sb2.append(this.mCurrentRender == 1 ? "Surface View" : "Texture View");
        LogUtils.d(str, sb2.toString());
        this.mHandler = new Handler();
        this.mTimer = new Timer();
        initRenders();
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.ijkVideoView.setmCurrentState(0);
        this.ijkVideoView.setmTargetState(0);
    }

    protected boolean isInPlaybackState() {
        AbsIjkVideoView absIjkVideoView;
        return (this.mMediaPlayer == null || this.mAudioPlayer == null || (absIjkVideoView = this.ijkVideoView) == null || absIjkVideoView.getmCurrentState() == -1 || this.ijkVideoView.getmCurrentState() == 0 || this.ijkVideoView.getmCurrentState() == 1) ? false : true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    @Override // com.haima.hmcp.utils.CcallJava.RtmpOnFrameDelayListener
    public void notifyRtmpFrameDelayInfo(FrameDelayInfo frameDelayInfo) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.notifyRtmpFrameDelayInfo(frameDelayInfo);
        }
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void notifyStasticInfo(final int i10, final long j10, final String str) {
        this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.15
            @Override // java.lang.Runnable
            public void run() {
                if (RtmpPlayer.this.ijkVideoView == null) {
                    return;
                }
                if (RtmpPlayer.this.ijkVideoView.getHmcpPlayerListener() != null) {
                    long jNextInt = j10;
                    if (i10 == 2 && jNextInt > 25) {
                        jNextInt = new Random().nextInt(5) + 20;
                    }
                    RtmpPlayer.this.ijkVideoView.getHmcpPlayerListener().onPlayStatus(i10, jNextInt, str);
                }
                int i11 = i10;
                if (i11 == 0) {
                    RtmpPlayer.this.ijkVideoView.setmPlayerBitRate(j10);
                    RtmpPlayer.this.mPlayerFrameSize = str;
                } else if (i11 == 1) {
                    RtmpPlayer.this.ijkVideoView.setmPlayerFPS(j10);
                } else if (i11 == 2) {
                    RtmpPlayer.this.mPlayerDecodeTime = j10;
                }
            }
        });
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void onFirstFrameArrival() {
        cancelFirstFrameTimer();
        if (this.ijkVideoView == null) {
            return;
        }
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onFirstFrameArrival();
        }
        TimeUtil.FirstFrameArrival = System.currentTimeMillis();
        String str = TAG;
        LogUtils.i(str, TimeUtil.logString());
        if (this.ijkVideoView.getCurrentApkType() == 1) {
            return;
        }
        LogUtils.e(str, "timeframe---onFirstFrameArrival");
        CountlyUtil.recordEvent("12045");
        SendSceneState.firstFrameArrival(this.mAppContext, this.ijkVideoView.getHmcpPlayerListener());
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.14
            @Override // java.lang.Runnable
            public void run() {
                RtmpPlayer rtmpPlayer = RtmpPlayer.this;
                rtmpPlayer.UiMessageSend(rtmpPlayer.ijkVideoView.getCallbackData(102, ""));
                if (RtmpPlayer.this.ijkVideoView != null) {
                    RtmpPlayer.this.ijkVideoView.isCallbackFirstFrameArrived = true;
                    RtmpPlayer.this.ijkVideoView.resolutionCheck();
                }
            }
        });
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void onFrameDelay(int i10, int i11, int i12, float f10) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null || absIjkVideoView.getSetResolution() == null) {
            LogUtils.e(TAG, "===onFrameDelay====resolution level===>mCurResolution == null");
            return;
        }
        final int currentBitRate = (int) (getCurrentBitRate() * (1.0f - f10));
        LogUtils.d(TAG, "===onFrameDelay====mBitRate = " + this.mBitRate + " :mCurrentSpeed===>" + currentBitRate + " :scale====>" + f10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append(",");
        sb2.append(i11);
        sb2.append(",");
        sb2.append(i12);
        CountlyUtil.recordEvent(Constants.COUNTYLY_FRAME_DECODE_TIME_TOO_LONG_TIME, sb2.toString());
        this.mMinResolutionLevel = getMinBitRate(this.ijkVideoView.getResolutionList());
        this.ijkVideoView.setmDelayThresholdPercent("" + i11);
        final boolean zIsAllowedPlay = ConfigUtil.isAllowedPlay(currentBitRate);
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.haima.hmcp.rtmp.widgets.RtmpPlayer.13
                @Override // java.lang.Runnable
                public void run() {
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                    if (TextUtils.equals(RtmpPlayer.this.ijkVideoView.getSetResolution().peakBitRate, RtmpPlayer.this.mMinResolutionLevel)) {
                        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_minimum), (Object) 1);
                        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_delay_less_minimum), (Object) (zIsAllowedPlay ? "0" : "1"));
                        HashMap<String, String> map = RtmpPlayer.this.mMetaInfos;
                    } else {
                        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_minimum), (Object) 0);
                        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_delay_less_minimum), (Object) (zIsAllowedPlay ? "0" : "1"));
                        HashMap<String, String> map2 = RtmpPlayer.this.mMetaInfos;
                        if (map2 != null && "1".equals(map2.get(Constants.FLAG_AUTO_SWITCH_BITRATE))) {
                            AbsIjkVideoView absIjkVideoView2 = RtmpPlayer.this.ijkVideoView;
                            RtmpPlayer rtmpPlayer = RtmpPlayer.this;
                            absIjkVideoView2.setResolutionInfo(rtmpPlayer.getResolution(rtmpPlayer.ijkVideoView.getResolutionList(), RtmpPlayer.this.mMinResolutionLevel, null));
                            try {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("mCurrentSpeed", currentBitRate);
                                jSONObject2.put("mMinResolutionLevel", RtmpPlayer.this.mMinResolutionLevel);
                                if (RtmpPlayer.this.ijkVideoView != null) {
                                    RtmpPlayer rtmpPlayer2 = RtmpPlayer.this;
                                    rtmpPlayer2.UiMessageSend(rtmpPlayer2.ijkVideoView.getCallbackData(25, jSONObject2.toString()));
                                }
                            } catch (JSONException e10) {
                                e10.printStackTrace();
                            }
                            RtmpPlayer rtmpPlayer3 = RtmpPlayer.this;
                            rtmpPlayer3.onSwitchResolution(1, rtmpPlayer3.ijkVideoView.getResolutionInfo(), 0);
                        }
                    }
                    RtmpPlayer.this.sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_crtp), jSONObject.toJSONString());
                }
            });
        }
    }

    protected void onPlayerRelease() {
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onPlayerRelease();
        }
    }

    protected void onPlayerStop() {
        HmcpVideoPlayerListener hmcpVideoPlayerListener = this.hmcpVideoPlayerListener;
        if (hmcpVideoPlayerListener != null) {
            hmcpVideoPlayerListener.onPlayerStop();
        }
    }

    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (TextUtils.isEmpty(this.mVideoPath) || TextUtils.isEmpty(this.mAudioPath)) {
            return;
        }
        LogUtils.i(TAG, "===pause====");
    }

    protected void rePlay() {
    }

    public void release(boolean z10) {
        doRelease(z10, true);
    }

    public void releaseWithoutStop() {
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.setDisplay(null);
        }
    }

    @Override // com.haima.hmcp.utils.CcallJava.OnFrameDelayListener
    public void reportFrameDelayInfo(String str) {
        String str2 = TAG;
        LogUtils.e(str2, "--------reportFrameDelayInfo = " + str);
        String[] strArrSplit = faultTolerant(str).split(Constants.TIPS_SPECIAL_TAG);
        if (strArrSplit.length == 2) {
            CountlyUtil.recordEvent(Constants.COUNTYLY_FRAME_DECODE_TIME_PERIOD_AVERAGE, strArrSplit[0]);
            CountlyUtil.recordEvent(Constants.COUNTLY_FRAME_DELAY_INFO, strArrSplit[1]);
            return;
        }
        LogUtils.d(str2, "reportFrameDelayInfo error len = " + strArrSplit.length);
        CountlyUtil.recordErrorEvent("reportFrameDelayInfo::" + str);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i10) {
        if (!isInPlaybackState()) {
            this.mSeekWhenPrepared = i10;
            return;
        }
        this.mSeekStartTime = System.currentTimeMillis();
        this.mMediaPlayer.seekTo(i10);
        this.mSeekWhenPrepared = 0;
    }

    public void sendSceneChangedMessage(String str, String str2) {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.sendSceneChangedMessage(str, str2);
    }

    public void setHmcpVideoPlayerListener(HmcpVideoPlayerListener hmcpVideoPlayerListener) {
        this.hmcpVideoPlayerListener = hmcpVideoPlayerListener;
    }

    public void setImageSize() {
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        if (absIjkVideoView.getScreenWidth() == 0 && this.ijkVideoView.getScreenHeight() == 0) {
            this.ijkVideoView.setScreenWidth(ConfigUtil.getScreenWidth(this.mAppContext));
            this.ijkVideoView.setScreenHeight(ConfigUtil.getScreenHeight(this.mAppContext));
        }
        boolean z10 = true;
        if (getScreenOrientation() != ScreenOrientation.LANDSCAPE ? this.ijkVideoView.getScreenWidth() <= this.ijkVideoView.getScreenHeight() : this.ijkVideoView.getScreenWidth() >= this.ijkVideoView.getScreenHeight()) {
            z10 = false;
        }
        if (z10) {
            int screenWidth = this.ijkVideoView.getScreenWidth();
            AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
            absIjkVideoView2.setScreenWidth(absIjkVideoView2.getScreenHeight());
            this.ijkVideoView.setScreenHeight(screenWidth);
        }
        LogUtils.e(TAG, "setImageSize  mOrientation = " + getScreenOrientation() + ":" + this.ijkVideoView.getScreenWidth() + ":" + this.ijkVideoView.getScreenHeight());
    }

    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setRender(int i10) {
        if (this.ijkVideoView == null) {
            return;
        }
        if (i10 == 0) {
            setRenderView(null);
            return;
        }
        if (i10 == 1) {
            LogUtils.i(TAG, "getModel RENDER_SURFACE_VIEW");
            setRenderView(new SurfaceRenderView(this.mAppContext));
            return;
        }
        if (i10 != 2) {
            LogUtils.e(TAG, String.format(Locale.US, "invalid render %d\n", Integer.valueOf(i10)));
            return;
        }
        LogUtils.i(TAG, "getModel RENDER_TEXTURE_VIEW");
        TextureRenderView textureRenderView = new TextureRenderView(this.mAppContext, this.ijkVideoView);
        if (this.mMediaPlayer != null) {
            textureRenderView.getSurfaceHolder().bindToMediaPlayer(this.mMediaPlayer, null);
            textureRenderView.setVideoSize(this.mMediaPlayer.getVideoWidth(), this.mMediaPlayer.getVideoHeight());
            textureRenderView.setVideoSampleAspectRatio(this.mMediaPlayer.getVideoSarNum(), this.mMediaPlayer.getVideoSarDen());
            textureRenderView.setAspectRatio(this.mCurrentAspectRatio);
        }
        setRenderView(textureRenderView);
    }

    public void setmRenderView(IRenderView iRenderView) {
        this.mRenderView = iRenderView;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        AbsIjkVideoView absIjkVideoView;
        if (TextUtils.isEmpty(this.mVideoPath) || TextUtils.isEmpty(this.mAudioPath) || this.ijkVideoView == null) {
            return;
        }
        String str = TAG;
        LogUtils.i(str, "===start====" + isInPlaybackState() + " mCurrentStat: " + this.ijkVideoView.getmCurrentState());
        if (isInPlaybackState() && this.ijkVideoView.getmCurrentState() != 3) {
            if (this.ijkVideoView.getCurrentApkType() != 1 && (absIjkVideoView = this.ijkVideoView) != null) {
                UiMessageSend(absIjkVideoView.getCallbackData(2, ""));
            }
            LogUtils.i(str, "==mMediaPlayer===start====");
            this.mMediaPlayer.start();
            if (this.ijkVideoView.getCurResolution() == null || this.ijkVideoView.getSetResolution() == null || TextUtils.equals(this.ijkVideoView.getCurResolution().f33828id, this.ijkVideoView.getSetResolution().f33828id)) {
                com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
                jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) (this.ijkVideoView.getSetResolution() != null ? this.ijkVideoView.getSetResolution().peakBitRate : ""));
                sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_play), jSONObject.toJSONString());
            } else {
                LogUtils.i(str, "===isNeedShowSwitchSuccess====");
                com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_result), (Object) 1);
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_id), (Object) this.ijkVideoView.getSetResolution().f33828id);
                jSONObject2.put(ResourceManager.getString(R.string.haima_hmcp_scene_cur_rate), (Object) this.ijkVideoView.getSetResolution().peakBitRate);
                sendSceneChangedMessage(ResourceManager.getString(R.string.haima_hmcp_scene_cred), jSONObject2.toJSONString());
            }
            this.ijkVideoView.setmCurrentState(3);
            AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
            absIjkVideoView2.setmCurResolution(absIjkVideoView2.getSetResolution());
        }
        this.ijkVideoView.setmTargetState(3);
    }

    protected void start2Play() {
    }

    protected void startPlay(String str, String str2) {
        String str3 = TAG;
        LogUtils.i(str3, "startPlay===>" + str + "===audioPath==>" + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || this.ijkVideoView == null) {
            CountlyUtil.recordErrorEvent("startPlay got bad videoPath: " + str + " OR bad audioPath: " + str2);
            return;
        }
        IjkMediaPlayer.loadLibrariesOnce(null);
        IjkMediaPlayer.native_profileBegin("player/libijkplayer_haima.so");
        HashMap<String, String> map = this.mMetaInfos;
        if (map != null) {
            String str4 = map.get(Constants.SWITCH_BR_DURATION);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (TextUtils.isEmpty(str4)) {
                str4 = "0";
            }
            absIjkVideoView.setmAutoSwitchDuration(str4);
            String str5 = this.mMetaInfos.get(Constants.SWITCH_BR_DETECT_INTERVAL);
            AbsIjkVideoView absIjkVideoView2 = this.ijkVideoView;
            if (TextUtils.isEmpty(str5)) {
                str5 = "500";
            }
            absIjkVideoView2.setmAutoSwitchDetectInterval(str5);
            String str6 = this.mMetaInfos.get(Constants.SWITCH_BR_PLAY_TIME_DELAY);
            AbsIjkVideoView absIjkVideoView3 = this.ijkVideoView;
            if (TextUtils.isEmpty(str6)) {
                str6 = "150";
            }
            absIjkVideoView3.setmAutoSwitchPlayTimeDelay(str6);
            String str7 = this.mMetaInfos.get(Constants.SWITCH_BR_FROZENTIME);
            AbsIjkVideoView absIjkVideoView4 = this.ijkVideoView;
            if (TextUtils.isEmpty(str7)) {
                str7 = "0";
            }
            absIjkVideoView4.setmAutoSwitchFrozentime(str7);
            String str8 = this.mMetaInfos.get(Constants.FRAME_DELAY_INFO_INTERVAL);
            AbsIjkVideoView absIjkVideoView5 = this.ijkVideoView;
            if (TextUtils.isEmpty(str8)) {
                str8 = "0";
            }
            absIjkVideoView5.setmDelayCalculateInterval(str8);
            String str9 = this.mMetaInfos.get(Constants.FRAME_DELAYINFO_IS_REPORT_DETAILINFO);
            if (TextUtils.isEmpty(str9)) {
                str9 = "0";
            }
            String str10 = this.mMetaInfos.get(Constants.FRAME_DELAY_START_DELAYTIME);
            LogUtils.d(str3, "mAutoSwitchDuration = " + this.ijkVideoView.getmAutoSwitchDuration() + ";mAutoSwitchDetectInterval = " + this.ijkVideoView.getmAutoSwitchDetectInterval() + ";mAutoSwitchPlayTimeDelay = " + this.ijkVideoView.getmAutoSwitchPlayTimeDelay() + ";mAutoSwitchFrozentime = " + this.ijkVideoView.getmAutoSwitchFrozentime() + ";mDelayCalculateInterval = " + this.ijkVideoView.getmDelayCalculateInterval() + ";mFrameDelayInfo_isReportDetailInfo = " + str9 + ";mFrameDelayStartDelayTime = " + (TextUtils.isEmpty(str10) ? "0" : str10) + ";");
        }
        CcallJava.setOnFrameDelayListener(this);
        String metaInfoByKey = getMetaInfoByKey(Constants.FRAME_DELAY_TIME);
        if (!TextUtils.isEmpty(metaInfoByKey)) {
            try {
                int i10 = Integer.parseInt(metaInfoByKey);
                if (i10 > 0) {
                    LogUtils.i(str3, "setFrameDelayMillis===>" + i10 + "return==>:" + CcallJava.setFrameDelayMillis(i10));
                }
            } catch (NumberFormatException e10) {
                LogUtils.e(TAG, e10.toString());
                CountlyUtil.recordErrorEvent("delayTimeMillis::NumberFormatException=>" + Log.getStackTraceString(e10));
            }
        }
        setVideoURI();
        TimeUtil.MediaCodecCreate = System.currentTimeMillis();
        start();
        this.ijkVideoView.setmTargetState(3);
    }

    protected void stopPlay() {
        stopPlay(true, true);
    }

    public void stopPlayback() {
        doRelease(true, true);
    }

    public int toggleAspectRatio() {
        int i10 = this.mCurrentAspectRatioIndex + 1;
        this.mCurrentAspectRatioIndex = i10;
        int[] iArr = s_allAspectRatio;
        int length = i10 % iArr.length;
        this.mCurrentAspectRatioIndex = length;
        int i11 = iArr[length];
        this.mCurrentAspectRatio = i11;
        IRenderView iRenderView = this.mRenderView;
        if (iRenderView != null) {
            iRenderView.setAspectRatio(i11);
        }
        return this.mCurrentAspectRatio;
    }

    public void turnDownSound() {
        LogUtils.i(TAG, "===turnDownSound====");
        if (this.mAudioPlayer != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "turnDownSound:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
            this.mAudioPlayer.setVolume(0.2f, 0.2f);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.setCurrentSound(0.2f);
            }
        }
    }

    public void turnOffSound() {
        if (this.mAudioPlayer != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "turnOffSound:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
            this.mAudioPlayer.setVolume(0.0f, 0.0f);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.setCurrentSound(0.0f);
            }
        }
    }

    public void turnOnSound() {
        if (this.mAudioPlayer != null) {
            CountlyUtil.recordEvent(Constants.COUNTLY_CURRENT_VOLUME, "turnOnSound:" + VolumeUtils.getCurrentMediaVolume(this.mAppContext));
            this.mAudioPlayer.setVolume(1.0f, 1.0f);
            AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.setCurrentSound(1.0f);
            }
        }
    }

    public void stopPlay(boolean z10, boolean z11) {
        HmIMEManager.getInstance().hideInput();
        AbsIjkVideoView absIjkVideoView = this.ijkVideoView;
        if (absIjkVideoView == null) {
            return;
        }
        absIjkVideoView.setStartIM(false);
        LogUtils.i(TAG, "==stopPlay===" + this.mVideoPath + "===audioPath==>" + this.mAudioPath);
        if (this.ijkVideoView.getCloudPlayInfo() != null) {
            this.ijkVideoView.getCloudPlayInfo().reset();
        }
        if (z11) {
            onPlayerStop();
        }
        if (TextUtils.isEmpty(this.mVideoPath) || TextUtils.isEmpty(this.mAudioPath)) {
            return;
        }
        if (z10) {
            initRenders();
        }
        stopPlayback();
        CcallJava.setOnFrameDelayListener(null);
        release(true);
        IjkMediaPlayer.native_profileEnd();
        this.mVideoPath = null;
        this.mAudioPath = null;
    }

    protected String getMetaInfoByKey(String str, String str2) {
        String str3 = TAG;
        LogUtils.i(str3, "==getMetaInfoByKey====key===" + str + "===value===" + str2);
        String string = "";
        if (this.mMetaInfos != null) {
            if (!TextUtils.isEmpty(str)) {
                string = this.mMetaInfos.get(str);
                if (TextUtils.isEmpty(string) && !Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                    CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
                }
            }
        } else {
            LogUtils.e(str3, "==getMetaInfoByKey====mMetaInfos == null");
            if (Constants.TIPS_PROMPT_NETWORK_UNAVAILABLE.equals(str)) {
                string = ResourceManager.getString(R.string.haima_hmcp_network_unavailable_prompt);
            } else {
                str.equals(Constants.REVOLVE_TIME);
            }
            if (!Constants.SPEED_TEST_URL_LARGE.equals(str)) {
                CountlyUtil.recordErrorEvent("getMetaInfoByKey::key = " + str + "value is null");
            }
        }
        String strReplaceString = StringUtils.replaceString(string, str2);
        LogUtils.i(str3, "==getMetaInfoByKey====tip==value=" + strReplaceString);
        return strReplaceString;
    }
}
