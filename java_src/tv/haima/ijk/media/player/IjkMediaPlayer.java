package tv.haima.ijk.media.player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.utils.LogUtils;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import tv.haima.ijk.media.player.annotations.AccessedByNative;
import tv.haima.ijk.media.player.annotations.CalledByNative;
import tv.haima.ijk.media.player.egl.EglBase;
import tv.haima.ijk.media.player.egl.EglRenderer;
import tv.haima.ijk.media.player.egl.GlRectDrawer;
import tv.haima.ijk.media.player.egl.SurfaceTextureHelper;
import tv.haima.ijk.media.player.egl.a;
import tv.haima.ijk.media.player.misc.IAndroidIO;
import tv.haima.ijk.media.player.misc.IMediaDataSource;
import tv.haima.ijk.media.player.misc.IjkTrackInfo;
import tv.haima.ijk.media.player.pragma.DebugLog;

/* JADX INFO: loaded from: classes10.dex */
public final class IjkMediaPlayer extends AbstractMediaPlayer {
    public static final int FFP_PROPV_DECODER_AVCODEC = 1;
    public static final int FFP_PROPV_DECODER_MEDIACODEC = 2;
    public static final int FFP_PROPV_DECODER_UNKNOWN = 0;
    public static final int FFP_PROPV_DECODER_VIDEOTOOLBOX = 3;
    public static final int FFP_PROP_FLOAT_DROP_FRAME_RATE = 10007;
    public static final int FFP_PROP_FLOAT_PLAYBACK_RATE = 10003;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS = 20201;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY = 20203;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS = 20202;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_BYTES = 20008;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_DURATION = 20006;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_PACKETS = 20010;
    public static final int FFP_PROP_INT64_AUDIO_DECODER = 20004;
    public static final int FFP_PROP_INT64_BIT_RATE = 20100;
    public static final int FFP_PROP_INT64_CACHE_STATISTIC_COUNT_BYTES = 20208;
    public static final int FFP_PROP_INT64_CACHE_STATISTIC_FILE_FORWARDS = 20206;
    public static final int FFP_PROP_INT64_CACHE_STATISTIC_FILE_POS = 20207;
    public static final int FFP_PROP_INT64_CACHE_STATISTIC_PHYSICAL_POS = 20205;
    public static final int FFP_PROP_INT64_IMMEDIATE_RECONNECT = 20211;
    public static final int FFP_PROP_INT64_LATEST_SEEK_LOAD_DURATION = 20300;
    public static final int FFP_PROP_INT64_LOGICAL_FILE_SIZE = 20209;
    public static final int FFP_PROP_INT64_SELECTED_AUDIO_STREAM = 20002;
    public static final int FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM = 20011;
    public static final int FFP_PROP_INT64_SELECTED_VIDEO_STREAM = 20001;
    public static final int FFP_PROP_INT64_SHARE_CACHE_DATA = 20210;
    public static final int FFP_PROP_INT64_TCP_SPEED = 20200;
    public static final int FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT = 20204;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_BYTES = 20007;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_DURATION = 20005;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_PACKETS = 20009;
    public static final int FFP_PROP_INT64_VIDEO_DECODER = 20003;
    public static final int IJK_LOG_DEBUG = 3;
    public static final int IJK_LOG_DEFAULT = 1;
    public static final int IJK_LOG_ERROR = 6;
    public static final int IJK_LOG_FATAL = 7;
    public static final int IJK_LOG_INFO = 4;
    public static final int IJK_LOG_SILENT = 8;
    public static final int IJK_LOG_UNKNOWN = 0;
    public static final int IJK_LOG_VERBOSE = 2;
    public static final int IJK_LOG_WARN = 5;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    private static final int MEDIA_INFO = 200;
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    protected static final int MEDIA_SET_VIDEO_SAR = 10001;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final int MEDIA_TIMED_TEXT = 99;
    public static final int OPT_CATEGORY_CODEC = 2;
    public static final int OPT_CATEGORY_FORMAT = 1;
    public static final int OPT_CATEGORY_PLAYER = 4;
    public static final int OPT_CATEGORY_SWS = 3;
    public static final int PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND = 10001;
    public static final int PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND = 10002;
    public static final int SDL_FCC_RV16 = 909203026;
    public static final int SDL_FCC_RV32 = 842225234;
    public static final int SDL_FCC_YV12 = 842094169;
    private static final String TAG = "tv.haima.ijk.media.player.IjkMediaPlayer";
    private EglBase eglBase;
    private EglRenderer eglRenderer;
    private ijkFrameRenderingStartedCallback firstFrameCallback;
    private boolean hasWakeLockPermission;
    private String mDataSource;
    private EventHandler mEventHandler;

    @AccessedByNative
    private int mListenerContext;

    @AccessedByNative
    private long mNativeAndroidIO;

    @AccessedByNative
    private long mNativeMediaDataSource;

    @AccessedByNative
    private long mNativeMediaPlayer;

    @AccessedByNative
    private int mNativeSurfaceTexture;
    private OnControlMessageListener mOnControlMessageListener;
    private OnMediaCodecSelectListener mOnMediaCodecSelectListener;
    private OnNativeInvokeListener mOnNativeInvokeListener;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private SurfaceHolder mSurfaceHolder;
    private int mVideoHeight;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private PowerManager.WakeLock mWakeLock;
    private Surface surfaceOfSurfaceTexture;
    private SurfaceTextureHelper surfaceTextureHelper;
    private boolean useSurfaceTexture;
    private static final IjkLibLoader sLocalLibLoader = new IjkLibLoader() { // from class: tv.haima.ijk.media.player.IjkMediaPlayer.1
        @Override // tv.haima.ijk.media.player.IjkLibLoader
        public void load(String str) throws SecurityException, UnsatisfiedLinkError {
            System.load(str);
        }

        @Override // tv.haima.ijk.media.player.IjkLibLoader
        public void loadLibrary(String str) throws SecurityException, UnsatisfiedLinkError {
            System.loadLibrary(str);
        }
    };
    private static volatile boolean mIsLibLoaded = false;
    private static volatile boolean mIsNativeInitialized = false;

    public static class DefaultMediaCodecSelector implements OnMediaCodecSelectListener {
        public static final DefaultMediaCodecSelector sInstance = new DefaultMediaCodecSelector();

        @Override // tv.haima.ijk.media.player.IjkMediaPlayer.OnMediaCodecSelectListener
        @TargetApi(16)
        public String onMediaCodecSelect(IMediaPlayer iMediaPlayer, String str, int i10, int i11) {
            String[] supportedTypes;
            IjkMediaCodecInfo ijkMediaCodecInfo;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            DebugLog.i(IjkMediaPlayer.TAG, String.format(Locale.US, "onSelectCodec: mime=%s, profile=%d, level=%d", str, Integer.valueOf(i10), Integer.valueOf(i11)));
            ArrayList<IjkMediaCodecInfo> arrayList = new ArrayList();
            int codecCount = MediaCodecList.getCodecCount();
            for (int i12 = 0; i12 < codecCount; i12++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i12);
                DebugLog.d(IjkMediaPlayer.TAG, String.format(Locale.US, "  found codec: %s", codecInfoAt.getName()));
                if (!codecInfoAt.isEncoder() && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                    for (String str2 : supportedTypes) {
                        if (!TextUtils.isEmpty(str2)) {
                            String str3 = IjkMediaPlayer.TAG;
                            Locale locale = Locale.US;
                            DebugLog.d(str3, String.format(locale, "    mime: %s", str2));
                            if (str2.equalsIgnoreCase(str) && (ijkMediaCodecInfo = IjkMediaCodecInfo.setupCandidate(codecInfoAt, str)) != null) {
                                arrayList.add(ijkMediaCodecInfo);
                                DebugLog.i(IjkMediaPlayer.TAG, String.format(locale, "candidate codec: %s rank=%d", codecInfoAt.getName(), Integer.valueOf(ijkMediaCodecInfo.mRank)));
                                ijkMediaCodecInfo.dumpProfileLevels(str);
                            }
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            IjkMediaCodecInfo ijkMediaCodecInfo2 = (IjkMediaCodecInfo) arrayList.get(0);
            for (IjkMediaCodecInfo ijkMediaCodecInfo3 : arrayList) {
                if (ijkMediaCodecInfo3.mRank > ijkMediaCodecInfo2.mRank) {
                    ijkMediaCodecInfo2 = ijkMediaCodecInfo3;
                }
            }
            if (ijkMediaCodecInfo2.mRank < 600) {
                DebugLog.w(IjkMediaPlayer.TAG, String.format(Locale.US, "unaccetable codec: %s", ijkMediaCodecInfo2.mCodecInfo.getName()));
                return null;
            }
            DebugLog.i(IjkMediaPlayer.TAG, String.format(Locale.US, "selected codec: %s rank=%d", ijkMediaCodecInfo2.mCodecInfo.getName(), Integer.valueOf(ijkMediaCodecInfo2.mRank)));
            return ijkMediaCodecInfo2.mCodecInfo.getName();
        }
    }

    private static class EventHandler extends Handler {
        private final WeakReference<IjkMediaPlayer> mWeakPlayer;

        public EventHandler(IjkMediaPlayer ijkMediaPlayer, Looper looper) {
            super(looper);
            this.mWeakPlayer = new WeakReference<>(ijkMediaPlayer);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IjkMediaPlayer ijkMediaPlayer = this.mWeakPlayer.get();
            if (ijkMediaPlayer != null) {
                if (ijkMediaPlayer.mNativeMediaPlayer != 0) {
                    int i10 = message.what;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            ijkMediaPlayer.notifyOnPrepared();
                            return;
                        }
                        if (i10 == 2) {
                            ijkMediaPlayer.stayAwake(false);
                            ijkMediaPlayer.notifyOnCompletion();
                            return;
                        }
                        if (i10 == 3) {
                            long j10 = message.arg1;
                            if (j10 < 0) {
                                j10 = 0;
                            }
                            long duration = ijkMediaPlayer.getDuration();
                            long j11 = duration > 0 ? (j10 * 100) / duration : 0L;
                            ijkMediaPlayer.notifyOnBufferingUpdate((int) (j11 < 100 ? j11 : 100L));
                            return;
                        }
                        if (i10 == 4) {
                            ijkMediaPlayer.notifyOnSeekComplete();
                            return;
                        }
                        if (i10 == 5) {
                            ijkMediaPlayer.mVideoWidth = message.arg1;
                            ijkMediaPlayer.mVideoHeight = message.arg2;
                            if (ijkMediaPlayer.getUseSurfaceTextureFlag()) {
                                ijkMediaPlayer.setTextureSize(ijkMediaPlayer.mVideoWidth, ijkMediaPlayer.mVideoHeight);
                            }
                            ijkMediaPlayer.notifyOnVideoSizeChanged(ijkMediaPlayer.mVideoWidth, ijkMediaPlayer.mVideoHeight, ijkMediaPlayer.mVideoSarNum, ijkMediaPlayer.mVideoSarDen);
                            return;
                        }
                        if (i10 == 99) {
                            if (message.obj == null) {
                                ijkMediaPlayer.notifyOnTimedText(null);
                                return;
                            } else {
                                ijkMediaPlayer.notifyOnTimedText(new IjkTimedText(new Rect(0, 0, 1, 1), (String) message.obj));
                                return;
                            }
                        }
                        if (i10 == 100) {
                            DebugLog.e(IjkMediaPlayer.TAG, "Error (" + message.arg1 + "," + message.arg2 + ")");
                            if (!ijkMediaPlayer.notifyOnError(message.arg1, message.arg2)) {
                                ijkMediaPlayer.notifyOnCompletion();
                            }
                            ijkMediaPlayer.stayAwake(false);
                            return;
                        }
                        if (i10 == 200) {
                            int i11 = message.arg1;
                            if (i11 == 3) {
                                DebugLog.i(IjkMediaPlayer.TAG, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n");
                                if (ijkMediaPlayer.getFirstFrameRenderedCallback() != null) {
                                    ijkMediaPlayer.getFirstFrameRenderedCallback().FrameRenderingStarted();
                                }
                            } else if (i11 == 10007) {
                                DebugLog.i(IjkMediaPlayer.TAG, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n");
                            }
                            ijkMediaPlayer.notifyOnInfo(message.arg1, message.arg2);
                            return;
                        }
                        if (i10 == 10001) {
                            ijkMediaPlayer.mVideoSarNum = message.arg1;
                            ijkMediaPlayer.mVideoSarDen = message.arg2;
                            ijkMediaPlayer.notifyOnVideoSizeChanged(ijkMediaPlayer.mVideoWidth, ijkMediaPlayer.mVideoHeight, ijkMediaPlayer.mVideoSarNum, ijkMediaPlayer.mVideoSarDen);
                            return;
                        } else {
                            DebugLog.e(IjkMediaPlayer.TAG, "Unknown message type " + message.what);
                            return;
                        }
                    }
                    return;
                }
            }
            DebugLog.w(IjkMediaPlayer.TAG, "IjkMediaPlayer went away with unhandled events");
        }
    }

    public interface OnControlMessageListener {
        String onControlResolveSegmentUrl(int i10);
    }

    public interface OnMediaCodecSelectListener {
        String onMediaCodecSelect(IMediaPlayer iMediaPlayer, String str, int i10, int i11);
    }

    public interface OnNativeInvokeListener {
        public static final String ARG_ERROR = "error";
        public static final String ARG_FAMILIY = "family";
        public static final String ARG_FD = "fd";
        public static final String ARG_FILE_SIZE = "file_size";
        public static final String ARG_HTTP_CODE = "http_code";
        public static final String ARG_IP = "ip";
        public static final String ARG_OFFSET = "offset";
        public static final String ARG_PORT = "port";
        public static final String ARG_RETRY_COUNTER = "retry_counter";
        public static final String ARG_SEGMENT_INDEX = "segment_index";
        public static final String ARG_URL = "url";
        public static final int CTRL_DID_TCP_OPEN = 131074;
        public static final int CTRL_WILL_CONCAT_RESOLVE_SEGMENT = 131079;
        public static final int CTRL_WILL_HTTP_OPEN = 131075;
        public static final int CTRL_WILL_LIVE_OPEN = 131077;
        public static final int CTRL_WILL_TCP_OPEN = 131073;
        public static final int EVENT_DID_HTTP_OPEN = 2;
        public static final int EVENT_DID_HTTP_SEEK = 4;
        public static final int EVENT_WILL_HTTP_OPEN = 1;
        public static final int EVENT_WILL_HTTP_SEEK = 3;

        boolean onNativeInvoke(int i10, Bundle bundle);
    }

    public IjkMediaPlayer() {
        this(sLocalLibLoader);
    }

    private native String _getAudioCodecInfo();

    private static native String _getColorFormatName(int i10);

    private native int _getLoopCount();

    private native Bundle _getMediaMeta();

    private native float _getPropertyFloat(int i10, float f10);

    private native long _getPropertyLong(int i10, long j10);

    private native String _getVideoCodecInfo();

    private native void _pause() throws IllegalStateException;

    private native void _release();

    private native void _reset();

    private native void _setAndroidIOCallback(IAndroidIO iAndroidIO) throws IllegalStateException, SecurityException, IllegalArgumentException;

    private native void _setDataSource(String str, String[] strArr, String[] strArr2) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException;

    private native void _setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException;

    private native void _setDataSourceFd(int i10) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException;

    private native void _setFrameAtTime(String str, long j10, long j11, int i10, int i11) throws IllegalStateException, IllegalArgumentException;

    private native void _setLoopCount(int i10);

    private native void _setOption(int i10, String str, long j10);

    private native void _setOption(int i10, String str, String str2);

    private native void _setPropertyFloat(int i10, float f10);

    private native void _setPropertyLong(int i10, long j10);

    private native void _setStreamSelected(int i10, boolean z10);

    private native void _setVideoSurface(Surface surface);

    private native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    public static String getColorFormatName(int i10) {
        return _getColorFormatName(i10);
    }

    private static void initNativeOnce() {
        synchronized (IjkMediaPlayer.class) {
            if (!mIsNativeInitialized) {
                native_init();
                mIsNativeInitialized = true;
            }
        }
    }

    private void initPlayer(IjkLibLoader ijkLibLoader) {
        loadLibrariesOnce(ijkLibLoader);
        initNativeOnce();
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        native_setup(new WeakReference(this));
    }

    public static void loadLibrariesOnce(IjkLibLoader ijkLibLoader) {
        synchronized (IjkMediaPlayer.class) {
            if (!mIsLibLoaded) {
                if (ijkLibLoader == null) {
                    ijkLibLoader = sLocalLibLoader;
                }
                ijkLibLoader.loadLibrary("Ijkffmpeg_haima");
                ijkLibLoader.loadLibrary("Ijksdl_haima");
                ijkLibLoader.loadLibrary("Ijkplayer_haima");
                mIsLibLoaded = true;
            }
        }
    }

    private native void native_finalize();

    private static native void native_init();

    private native void native_message_loop(Object obj);

    public static native void native_profileBegin(String str);

    public static native void native_profileEnd();

    public static native void native_setFrameDelayDetectorConfig(int i10, int i11, int i12, int i13, int i14, int i15, int i16);

    public static native void native_setLogLevel(int i10);

    private native void native_setup(Object obj);

    public static native void native_startStastics(int i10, int i11, int i12, int i13);

    @CalledByNative
    private static boolean onNativeInvoke(Object obj, int i10, Bundle bundle) {
        OnControlMessageListener onControlMessageListener;
        DebugLog.ifmt(TAG, "onNativeInvoke %d", Integer.valueOf(i10));
        if (obj == null || !(obj instanceof WeakReference)) {
            throw new IllegalStateException("<null weakThiz>.onNativeInvoke()");
        }
        IjkMediaPlayer ijkMediaPlayer = (IjkMediaPlayer) ((WeakReference) obj).get();
        if (ijkMediaPlayer == null) {
            throw new IllegalStateException("<null weakPlayer>.onNativeInvoke()");
        }
        OnNativeInvokeListener onNativeInvokeListener = ijkMediaPlayer.mOnNativeInvokeListener;
        if (onNativeInvokeListener != null && onNativeInvokeListener.onNativeInvoke(i10, bundle)) {
            return true;
        }
        if (i10 != 131079 || (onControlMessageListener = ijkMediaPlayer.mOnControlMessageListener) == null) {
            return false;
        }
        int i11 = bundle.getInt("segment_index", -1);
        if (i11 < 0) {
            throw new InvalidParameterException("onNativeInvoke(invalid segment index)");
        }
        String strOnControlResolveSegmentUrl = onControlMessageListener.onControlResolveSegmentUrl(i11);
        if (strOnControlResolveSegmentUrl == null) {
            throw new RuntimeException(new IOException("onNativeInvoke() = <NULL newUrl>"));
        }
        bundle.putString("url", strOnControlResolveSegmentUrl);
        return true;
    }

    @CalledByNative
    private static String onSelectCodec(Object obj, String str, int i10, int i11) {
        IjkMediaPlayer ijkMediaPlayer;
        if (obj == null || !(obj instanceof WeakReference) || (ijkMediaPlayer = (IjkMediaPlayer) ((WeakReference) obj).get()) == null) {
            return null;
        }
        OnMediaCodecSelectListener onMediaCodecSelectListener = ijkMediaPlayer.mOnMediaCodecSelectListener;
        if (onMediaCodecSelectListener == null) {
            onMediaCodecSelectListener = DefaultMediaCodecSelector.sInstance;
        }
        return onMediaCodecSelectListener.onMediaCodecSelect(ijkMediaPlayer, str, i10, i11);
    }

    @CalledByNative
    private static void postEventFromNative(Object obj, int i10, int i11, int i12, Object obj2) {
        IjkMediaPlayer ijkMediaPlayer;
        if (obj == null || (ijkMediaPlayer = (IjkMediaPlayer) ((WeakReference) obj).get()) == null) {
            return;
        }
        if (i10 == 200 && i11 == 2) {
            ijkMediaPlayer.start();
        }
        EventHandler eventHandler = ijkMediaPlayer.mEventHandler;
        if (eventHandler != null) {
            ijkMediaPlayer.mEventHandler.sendMessage(eventHandler.obtainMessage(i10, i11, i12, obj2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Wakelock"})
    public void stayAwake(boolean z10) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z10 && !wakeLock.isHeld() && this.hasWakeLockPermission) {
                this.mWakeLock.acquire();
            } else if (!z10 && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z10;
        updateSurfaceScreenOn();
    }

    private void updateSurfaceScreenOn() {
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    public native boolean _getCurrentFrame(Bitmap bitmap);

    public native void _prepareAsync() throws IllegalStateException;

    public void deselectTrack(int i10) {
        _setStreamSelected(i10, false);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        native_finalize();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void frameCapture(final ijkFrameCaptureCallback ijkframecapturecallback) {
        if (ijkframecapturecallback == null) {
            LogUtils.w(TAG, "callback is null when getBitmp from ijkmediaplayer");
            return;
        }
        String str = TAG;
        LogUtils.d(str, "ijkFrameCaptureCallback callback");
        if (this.useSurfaceTexture && getVideoDecoder() == 2) {
            LogUtils.d(str, "MediaCodec shot ++++++");
            this.eglRenderer.addFrameListener(new EglRenderer.FrameListener() { // from class: tv.haima.ijk.media.player.IjkMediaPlayer.2
                @Override // tv.haima.ijk.media.player.egl.EglRenderer.FrameListener
                public void onFrame(Bitmap bitmap) {
                    LogUtils.d(IjkMediaPlayer.TAG, "MediaCodec shot：" + bitmap.getWidth());
                    ijkframecapturecallback.onFrameCapture(bitmap);
                }
            }, 1.0f);
        } else if (getVideoDecoder() == 1) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getVideoWidth(), getVideoHeight(), Bitmap.Config.ARGB_8888);
            _getCurrentFrame(bitmapCreateBitmap);
            ijkframecapturecallback.onFrameCapture(bitmapCreateBitmap);
        }
    }

    public long getAsyncStatisticBufBackwards() {
        return _getPropertyLong(20201, 0L);
    }

    public long getAsyncStatisticBufCapacity() {
        return _getPropertyLong(20203, 0L);
    }

    public long getAsyncStatisticBufForwards() {
        return _getPropertyLong(20202, 0L);
    }

    public long getAudioCachedBytes() {
        return _getPropertyLong(20008, 0L);
    }

    public long getAudioCachedDuration() {
        return _getPropertyLong(20006, 0L);
    }

    public long getAudioCachedPackets() {
        return _getPropertyLong(20010, 0L);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native int getAudioSessionId();

    public long getBitRate() {
        return _getPropertyLong(20100, 0L);
    }

    public long getCacheStatisticCountBytes() {
        return _getPropertyLong(20208, 0L);
    }

    public long getCacheStatisticFileForwards() {
        return _getPropertyLong(20206, 0L);
    }

    public long getCacheStatisticFilePos() {
        return _getPropertyLong(20207, 0L);
    }

    public long getCacheStatisticPhysicalPos() {
        return _getPropertyLong(20205, 0L);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native long getCurrentPosition();

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mDataSource;
    }

    public float getDropFrameRate() {
        return _getPropertyFloat(10007, 0.0f);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native long getDuration();

    public long getFileSize() {
        return _getPropertyLong(20209, 0L);
    }

    public ijkFrameRenderingStartedCallback getFirstFrameRenderedCallback() {
        return this.firstFrameCallback;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.mMediaPlayerName = "ijkplayer";
        String str_getVideoCodecInfo = _getVideoCodecInfo();
        if (!TextUtils.isEmpty(str_getVideoCodecInfo)) {
            String[] strArrSplit = str_getVideoCodecInfo.split(",");
            if (strArrSplit.length >= 2) {
                mediaInfo.mVideoDecoder = strArrSplit[0];
                mediaInfo.mVideoDecoderImpl = strArrSplit[1];
            } else if (strArrSplit.length >= 1) {
                mediaInfo.mVideoDecoder = strArrSplit[0];
                mediaInfo.mVideoDecoderImpl = "";
            }
        }
        String str_getAudioCodecInfo = _getAudioCodecInfo();
        if (!TextUtils.isEmpty(str_getAudioCodecInfo)) {
            String[] strArrSplit2 = str_getAudioCodecInfo.split(",");
            if (strArrSplit2.length >= 2) {
                mediaInfo.mAudioDecoder = strArrSplit2[0];
                mediaInfo.mAudioDecoderImpl = strArrSplit2[1];
            } else if (strArrSplit2.length >= 1) {
                mediaInfo.mAudioDecoder = strArrSplit2[0];
                mediaInfo.mAudioDecoderImpl = "";
            }
        }
        try {
            mediaInfo.mMeta = IjkMediaMeta.parse(_getMediaMeta());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return mediaInfo;
    }

    public Bundle getMediaMeta() {
        return _getMediaMeta();
    }

    public long getSeekLoadDuration() {
        return _getPropertyLong(20300, 0L);
    }

    public int getSelectedTrack(int i10) {
        long j_getPropertyLong;
        if (i10 == 1) {
            j_getPropertyLong = _getPropertyLong(20001, -1L);
        } else if (i10 == 2) {
            j_getPropertyLong = _getPropertyLong(20002, -1L);
        } else {
            if (i10 != 3) {
                return -1;
            }
            j_getPropertyLong = _getPropertyLong(20011, -1L);
        }
        return (int) j_getPropertyLong;
    }

    public float getSpeed(float f10) {
        return _getPropertyFloat(10003, 0.0f);
    }

    public long getTcpSpeed() {
        return _getPropertyLong(20200, 0L);
    }

    public long getTrafficStatisticByteCount() {
        return _getPropertyLong(20204, 0L);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean getUseSurfaceTextureFlag() {
        return this.useSurfaceTexture;
    }

    public long getVideoCachedBytes() {
        return _getPropertyLong(20007, 0L);
    }

    public long getVideoCachedDuration() {
        return _getPropertyLong(20005, 0L);
    }

    public long getVideoCachedPackets() {
        return _getPropertyLong(20009, 0L);
    }

    public float getVideoDecodeFramesPerSecond() {
        return _getPropertyFloat(10001, 0.0f);
    }

    public int getVideoDecoder() {
        return (int) _getPropertyLong(20003, 0L);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public float getVideoOutputFramesPerSecond() {
        return _getPropertyFloat(10002, 0.0f);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.mVideoSarDen;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.mVideoSarNum;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public void httphookReconnect() {
        _setPropertyLong(20211, 1L);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean isLooping() {
        return _getLoopCount() != 1;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native boolean isPlaying();

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        stayAwake(false);
        _pause();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        _prepareAsync();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void release() {
        DebugLog.d(TAG, "release(),useSurfaceTexture is : " + this.useSurfaceTexture);
        if (this.useSurfaceTexture) {
            Surface surface = this.surfaceOfSurfaceTexture;
            if (surface != null) {
                surface.release();
                this.surfaceOfSurfaceTexture = null;
            }
            SurfaceTextureHelper surfaceTextureHelper = this.surfaceTextureHelper;
            if (surfaceTextureHelper != null) {
                surfaceTextureHelper.stopListening();
                this.surfaceTextureHelper.dispose();
                this.surfaceTextureHelper = null;
            }
            EglRenderer eglRenderer = this.eglRenderer;
            if (eglRenderer != null) {
                eglRenderer.release();
            }
            EglBase eglBase = this.eglBase;
            if (eglBase != null) {
                eglBase.release();
            }
        }
        stayAwake(false);
        updateSurfaceScreenOn();
        resetListeners();
        _release();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void reset() {
        stayAwake(false);
        _reset();
        this.mEventHandler.removeCallbacksAndMessages(null);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    @Override // tv.haima.ijk.media.player.AbstractMediaPlayer
    public void resetListeners() {
        super.resetListeners();
        this.mOnMediaCodecSelectListener = null;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native void seekTo(long j10) throws IllegalStateException;

    public void selectTrack(int i10) {
        _setStreamSelected(i10, true);
    }

    public void setAndroidIOCallback(IAndroidIO iAndroidIO) throws IllegalStateException, SecurityException, IllegalArgumentException {
        _setAndroidIOCallback(iAndroidIO);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setAudioStreamType(int i10) {
    }

    public void setCacheShare(int i10) {
        _setPropertyLong(20210, i10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        setDataSource(context, uri, (Map<String, String>) null);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        if (surfaceHolder == null) {
            return;
        }
        Surface surface = surfaceHolder.getSurface();
        DebugLog.d(TAG, "useSurfaceTexture == " + this.useSurfaceTexture);
        if (this.useSurfaceTexture) {
            this.eglBase = a.b();
            EglRenderer eglRenderer = new EglRenderer("ijkplayer EGLRender");
            this.eglRenderer = eglRenderer;
            eglRenderer.init(this.eglBase.getEglBaseContext(), EglBase.CONFIG_PLAIN, new GlRectDrawer());
            this.eglRenderer.createEglSurface(this.mSurfaceHolder.getSurface());
            this.eglRenderer.setLastFrameCallBack(true);
            this.surfaceTextureHelper = SurfaceTextureHelper.create("SurfaceTectureHelper", this.eglBase.getEglBaseContext());
            this.surfaceOfSurfaceTexture = new Surface(this.surfaceTextureHelper.getSurfaceTexture());
            this.surfaceTextureHelper.startListening(this.eglRenderer);
            _setVideoSurface(this.surfaceOfSurfaceTexture);
        } else {
            _setVideoSurface(surface);
        }
        updateSurfaceScreenOn();
    }

    public void setFirstFrameRenderedCallback(ijkFrameRenderingStartedCallback ijkframerenderingstartedcallback) {
        this.firstFrameCallback = ijkframerenderingstartedcallback;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z10) {
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setLogEnabled(boolean z10) {
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setLooping(boolean z10) {
        int i10 = !z10 ? 1 : 0;
        setOption(4, "loop", i10);
        _setLoopCount(i10);
    }

    public void setOnControlMessageListener(OnControlMessageListener onControlMessageListener) {
        this.mOnControlMessageListener = onControlMessageListener;
    }

    public void setOnMediaCodecSelectListener(OnMediaCodecSelectListener onMediaCodecSelectListener) {
        this.mOnMediaCodecSelectListener = onMediaCodecSelectListener;
    }

    public void setOnNativeInvokeListener(OnNativeInvokeListener onNativeInvokeListener) {
        this.mOnNativeInvokeListener = onNativeInvokeListener;
    }

    public void setOption(int i10, String str, String str2) {
        _setOption(i10, str, str2);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z10) {
        if (this.mScreenOnWhilePlaying != z10) {
            if (z10 && this.mSurfaceHolder == null) {
                DebugLog.w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z10;
            updateSurfaceScreenOn();
        }
    }

    public void setSpeed(float f10) {
        _setPropertyFloat(10003, f10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setSurface(Surface surface) {
        if (this.mScreenOnWhilePlaying && surface != null) {
            DebugLog.w(TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    public void setTextureSize(int i10, int i11) {
        SurfaceTextureHelper surfaceTextureHelper = this.surfaceTextureHelper;
        if (surfaceTextureHelper != null) {
            surfaceTextureHelper.setTextureSize(i10, i11);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setUseSurfaceTextureFlag(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setUseSurfaceTextureFlag:");
        sb2.append(z10);
        this.useSurfaceTexture = z10;
    }

    public void setUseTextureCloningFlag(boolean z10) {
        EglRenderer eglRenderer = this.eglRenderer;
        if (eglRenderer != null) {
            eglRenderer.setUseTextureCloningFlag(z10);
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public native void setVolume(float f10, float f11);

    public void setWakeLockEnable(boolean z10) {
        this.hasWakeLockPermission = z10;
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int i10) {
        boolean z10;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z10 = true;
            } else {
                z10 = false;
            }
            this.mWakeLock = null;
        } else {
            z10 = false;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i10 | C.ENCODING_PCM_A_LAW, IjkMediaPlayer.class.getName());
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        if (z10 && this.hasWakeLockPermission) {
            this.mWakeLock.acquire();
        }
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        stayAwake(true);
        _start();
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        stayAwake(false);
        _stop();
    }

    public IjkMediaPlayer(IjkLibLoader ijkLibLoader) {
        this.mWakeLock = null;
        this.hasWakeLockPermission = true;
        this.useSurfaceTexture = true;
        initPlayer(ijkLibLoader);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public IjkTrackInfo[] getTrackInfo() {
        IjkMediaMeta ijkMediaMeta;
        Bundle mediaMeta = getMediaMeta();
        if (mediaMeta == null || (ijkMediaMeta = IjkMediaMeta.parse(mediaMeta)) == null || ijkMediaMeta.mStreams == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (IjkMediaMeta.IjkStreamMeta ijkStreamMeta : ijkMediaMeta.mStreams) {
            IjkTrackInfo ijkTrackInfo = new IjkTrackInfo(ijkStreamMeta);
            if ("video".equalsIgnoreCase(ijkStreamMeta.mType)) {
                ijkTrackInfo.setTrackType(1);
            } else if ("audio".equalsIgnoreCase(ijkStreamMeta.mType)) {
                ijkTrackInfo.setTrackType(2);
            } else if ("timedtext".equalsIgnoreCase(ijkStreamMeta.mType)) {
                ijkTrackInfo.setTrackType(3);
            }
            arrayList.add(ijkTrackInfo);
        }
        return (IjkTrackInfo[]) arrayList.toArray(new IjkTrackInfo[arrayList.size()]);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    @Override // tv.haima.ijk.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            setDataSource(uri.getPath());
            return;
        }
        if ("content".equals(scheme) && "settings".equals(uri.getAuthority()) && (uri = RingtoneManager.getActualDefaultRingtoneUri(context, RingtoneManager.getDefaultType(uri))) == null) {
            throw new FileNotFoundException("Failed to resolve default ringtone");
        }
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                }
            } else {
                if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                } else {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor(), assetFileDescriptorOpenAssetFileDescriptor.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength());
                }
                assetFileDescriptorOpenAssetFileDescriptor.close();
            }
        } catch (IOException unused) {
            if (0 != 0) {
                assetFileDescriptor.close();
            }
            DebugLog.d(TAG, "Couldn't open file on client side, trying server side");
            setDataSource(uri.toString(), map);
        } catch (SecurityException unused2) {
            if (0 != 0) {
                assetFileDescriptor.close();
            }
            DebugLog.d(TAG, "Couldn't open file on client side, trying server side");
            setDataSource(uri.toString(), map);
        } catch (Throwable th) {
            if (0 != 0) {
                assetFileDescriptor.close();
            }
            throw th;
        }
    }

    public void setOption(int i10, String str, long j10) {
        _setOption(i10, str, j10);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mDataSource = str;
        _setDataSource(str, null, null);
    }

    public void setDataSource(String str, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        if (map != null && !map.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb2.append(entry.getKey());
                sb2.append(":");
                if (!TextUtils.isEmpty(entry.getValue())) {
                    sb2.append(entry.getValue());
                }
                sb2.append("\r\n");
                setOption(1, "headers", sb2.toString());
                setOption(1, "protocol_whitelist", "async,cache,crypto,file,http,https,ijkhttphook,ijkinject,ijklivehook,ijklongurl,ijksegment,ijktcphook,pipe,rtp,tcp,tls,udp,ijkurlhook,data");
            }
        }
        setDataSource(str);
    }

    @Override // tv.haima.ijk.media.player.IMediaPlayer
    @TargetApi(13)
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            _setDataSourceFd(parcelFileDescriptorDup.getFd());
        } finally {
            parcelFileDescriptorDup.close();
        }
    }

    private void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor);
    }

    @Override // tv.haima.ijk.media.player.AbstractMediaPlayer, tv.haima.ijk.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        _setDataSource(iMediaDataSource);
    }
}
