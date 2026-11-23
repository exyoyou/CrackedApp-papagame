package com.bykv.vk.component.ttvideo.player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.RemoteException;
import android.view.Surface;
import com.byazt.bzd.sp;
import com.byazt.nr.m;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class TTPlayer {
    private static final String TAG = "TTPlayer";
    private static String mAppPath;
    private static String mCachePath;
    private static String mCrashPath;
    private static ILibraryLoader mDebugLibLoader = new DefaultLibraryLoader(true);
    private static boolean mIsIPCPlayer;
    private static boolean mSetLibraryLoader;
    private static int mSupportSampleRateNB;
    private static int[] mSupportSampleRates;
    private Context mContext;
    private FrameMetadataListener mFrameMetadataListener;
    private long mHandle;
    private long mId;

    @Keep
    private long mMediaDataSource;
    private IPlayerNotifyer mNotifyer;
    private MediaPlayer.OnScreenshotListener mScreenshotListener;
    private long mNotifyerState = Long.MAX_VALUE;
    private int mTracker = 0;

    private static class DefaultLibraryLoader implements ILibraryLoader {
        boolean mLoadLibraryPath;

        public DefaultLibraryLoader(boolean z10) {
            this.mLoadLibraryPath = z10;
        }

        @Override // com.bykv.vk.component.ttvideo.player.ILibraryLoader
        @SuppressLint({"UnsafeDynamicallyLoadedCode"})
        public boolean onLoadNativeLibs(List<String> list) {
            for (String str : list) {
                try {
                    if (this.mLoadLibraryPath) {
                        System.load(str);
                    } else {
                        sp.c(str);
                    }
                } catch (Throwable th) {
                    m.uj(TTPlayer.TAG, "load lib failed = " + th.getMessage());
                    return false;
                }
            }
            return true;
        }
    }

    static {
        synchronized (TTPlayer.class) {
            TTPlayerLibLoader.loadLibrary();
            try {
                detectAudioFormat();
            } catch (UnsatisfiedLinkError e10) {
                String errorInfo = TTPlayerLibLoader.getErrorInfo();
                if (errorInfo == null) {
                    throw e10;
                }
                throw new UnsatisfiedLinkError(errorInfo);
            }
        }
    }

    public TTPlayer(Context context, long j10) throws Exception {
        this.mContext = context;
        create(j10);
    }

    private static final native void _close(long j10);

    private final native long _create(Context context, int i10, String str);

    private static final native String _getAppPath();

    private static final native int _getCurrentPosition(long j10);

    private static final native double _getDoubleValue(long j10, int i10, double d10);

    private static final native int _getDuration(long j10);

    private static final native float _getFloatValue(long j10, int i10, float f10);

    private static final native int _getIntValue(long j10, int i10, int i11);

    private static final native Object _getJObjectValue(long j10, int i10);

    private static final native long _getLongValue(long j10, int i10, long j11);

    private static final native String _getStringValue(long j10, int i10);

    private static final native int _getVideoHeight(long j10);

    private static final native int _getVideoWidth(long j10);

    private static final native int _isLooping(long j10);

    private static final native int _isPlaying(long j10);

    private static final native void _mouseEvent(long j10, int i10, int i11, int i12);

    private static final native int _pause(long j10);

    private static final native int _prepare(long j10);

    private static final native void _prevClose(long j10);

    private static final native void _registerPlayerInfo();

    private static final native void _release(long j10);

    private static final native int _reset(long j10);

    private static final native void _rotateCamera(long j10, float f10, float f11);

    private static final native int _seek(long j10, int i10);

    private static final native void _setAudioProcessor(long j10, AudioProcessor audioProcessor);

    private static final native void _setCacheFile(long j10, String str, int i10);

    private static final native void _setDataSource(long j10, IMediaDataSource iMediaDataSource);

    private static final native void _setDataSource(long j10, String str);

    private static final native void _setDataSourceFd(long j10, int i10);

    private static final native int _setDoubleValue(long j10, int i10, double d10);

    private static final native int _setFloatValue(long j10, int i10, float f10);

    private static final native int _setIntValue(long j10, int i10, int i11);

    private static final native void _setLoadControl(long j10, LoadControl loadControl);

    private static final native int _setLongValue(long j10, int i10, long j11);

    private static final native void _setLooping(long j10, int i10);

    private static final native void _setMaskInfo(long j10, MaskInfo maskInfo);

    private static final native void _setMediaTransport(long j10, MediaTransport mediaTransport);

    private static final native int _setStringValue(long j10, int i10, String str);

    private static final native void _setSubInfo(long j10, SubInfo subInfo);

    private static final native void _setSupportFormatNB(int i10);

    private static final native void _setSupprotSampleRates(int[] iArr, int i10);

    private static final native int _setSurfaceValue(long j10, long j11);

    private static final native int _setVideoSurface(long j10, Surface surface);

    private static final native void _setVolume(long j10, float f10, float f11);

    private static final native int _start(long j10);

    private static final native void _stop(long j10);

    private static final native void _switchStream(long j10, int i10, int i11);

    private static final native void _takeScreenshot(long j10);

    private static final void checkPlayerModel() {
    }

    private void create(long j10) throws Exception {
        this.mNotifyer = null;
        Context context = this.mContext;
        boolean z10 = mIsIPCPlayer;
        long j_create = _create(context, z10 ? 1 : 0, mAppPath);
        this.mHandle = j_create;
        this.mId = j10;
        if (j_create == 0) {
            throw new Exception("create native player is fail.");
        }
    }

    private static void detectAudioFormat() {
        if (mSupportSampleRateNB == 0) {
            int[] iArr = new int[AudioFormats.getDefaultSampleRatesNB()];
            mSupportSampleRates = iArr;
            int maxSupportedSampleRates = AudioFormats.getMaxSupportedSampleRates(iArr);
            mSupportSampleRateNB = maxSupportedSampleRates;
            _setSupprotSampleRates(mSupportSampleRates, maxSupportedSampleRates);
        }
    }

    public static final String getAppPath() {
        return mAppPath;
    }

    public static final String getCachePath() {
        return mCachePath;
    }

    @CalledByNative
    public static final String getCrashPath() {
        return mCrashPath;
    }

    @CalledByNative
    public static int getThreadPoolStackSize() {
        return TTPlayerConfiger.getValue(25, 32);
    }

    @CalledByNative
    public static boolean isIPPlayer() {
        return mIsIPCPlayer;
    }

    @CalledByNative
    public static int isUsedThreadPool() {
        return TTPlayerConfiger.getValue(24, false) ? 1 : 0;
    }

    public static void registerPlayerInfo() {
        _registerPlayerInfo();
    }

    public static final void setCachePath(String str) {
        mCachePath = str;
    }

    public static final void setCrashPath(String str) {
        mCrashPath = str;
    }

    public static void setIsIPPlayer(boolean z10) {
        mIsIPCPlayer = z10;
    }

    public static final void setTempFileDir(String str) {
        mAppPath = str;
    }

    public int close() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        _close(j10);
        return 0;
    }

    @CalledByNative
    public void frameDTSNotify(int i10, long j10, long j11) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.frameDTSNotify(i10, j11, j10);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public double getDoubleOption(int i10, double d10) {
        return _getDoubleValue(this.mHandle, i10, d10);
    }

    public float getFloatOption(int i10, float f10) {
        return _getFloatValue(this.mHandle, i10, f10);
    }

    public final long getHandle() {
        return this.mHandle;
    }

    public int getIntOption(int i10, int i11) {
        if (i10 == 11) {
            return _getIntValue(this.mHandle, i10, i11);
        }
        if (i10 == 51) {
            return this.mTracker;
        }
        switch (i10) {
            case 1:
                return _getDuration(this.mHandle);
            case 2:
                return _getCurrentPosition(this.mHandle);
            case 3:
                return _getVideoWidth(this.mHandle);
            case 4:
                return _getVideoHeight(this.mHandle);
            case 5:
                return _isLooping(this.mHandle);
            case 6:
                return _isPlaying(this.mHandle);
            default:
                return _getIntValue(this.mHandle, i10, i11);
        }
    }

    public long getLongOption(int i10, long j10) {
        return i10 == 50 ? this.mHandle : _getLongValue(this.mHandle, i10, j10);
    }

    public long getNativePlayer() {
        return this.mHandle;
    }

    public Object getObjectValue(int i10) {
        return _getJObjectValue(this.mHandle, i10);
    }

    public String getStringOption(int i10) {
        return _getStringValue(this.mHandle, i10);
    }

    public void mouseEvent(int i10, int i11, int i12) {
        _mouseEvent(this.mHandle, i10, i11, i12);
    }

    @CalledByNative
    public void onFrameAboutToBeRendered(int i10, long j10, long j11, Map<Integer, String> map) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.onFrameAboutToBeRendered(i10, j10, j11, map);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @CalledByNative
    public final void onLogInfo(int i10, int i11, String str) {
        IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
        if (iPlayerNotifyer != null) {
            try {
                iPlayerNotifyer.handleErrorNotify(this.mId, i10, i11, str);
            } catch (Throwable unused) {
            }
        }
    }

    @CalledByNative
    public void onNotify(int i10, int i11, int i12, String str) {
        if (((this.mNotifyerState >> i11) & 1) != 1) {
            return;
        }
        try {
            IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
            if (iPlayerNotifyer != null) {
                iPlayerNotifyer.handlePlayerNotify(this.mId, i10, i11, i12, str);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    protected int pause() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _pause(j10);
    }

    protected int prepare() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _prepare(j10);
    }

    public int prevClose() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        _setVideoSurface(j10, null);
        return 0;
    }

    protected void release() {
        this.mNotifyerState = 0L;
        long j10 = this.mHandle;
        if (j10 != 0) {
            _release(j10);
            this.mHandle = 0L;
        }
        this.mNotifyer = null;
        this.mScreenshotListener = null;
    }

    protected int reset() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _reset(j10);
    }

    public void rotateCamera(float f10, float f11) {
        _rotateCamera(this.mHandle, f10, f11);
    }

    public void seekTo(int i10) {
        _seek(this.mHandle, i10);
    }

    public void setAudioProcessor(AudioProcessor audioProcessor) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setAudioProcessor(j10, audioProcessor);
        }
    }

    public void setCacheFile(String str, int i10) {
        _setCacheFile(this.mHandle, str, i10);
    }

    public void setDataSource(String str) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSource(j10, str);
        }
    }

    public void setDataSourceFd(int i10) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSourceFd(j10, i10);
        }
    }

    public int setDoubleOption(int i10, double d10) {
        return _setDoubleValue(this.mHandle, i10, d10);
    }

    public int setFloatOption(int i10, float f10) {
        return _setFloatValue(this.mHandle, i10, f10);
    }

    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mFrameMetadataListener = frameMetadataListener;
    }

    public int setIntOption(int i10, int i11) throws RemoteException {
        if (i10 == 22) {
            if (i11 == 0) {
                m.c(TTPlayerConfiger.TAG, "will occur anr crash");
            } else if (i11 == 2) {
                m.c(TTPlayerConfiger.TAG, "will occur native crash");
            } else if (i11 == 1) {
                Process.killProcess(Process.myPid());
                System.exit(0);
                m.c(TTPlayerConfiger.TAG, "will occur java crash");
                throw null;
            }
        }
        if (i10 != 111) {
            return _setIntValue(this.mHandle, i10, i11);
        }
        int[] iArr = TTPlayerKeys.SupportSampleRates;
        int length = iArr.length;
        int[] iArr2 = new int[iArr.length];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            if (((1 << i13) & i11) == 0) {
                iArr2[i12] = TTPlayerKeys.SupportSampleRates[i13];
                i12++;
            }
        }
        _setSupprotSampleRates(iArr2, i12);
        return 0;
    }

    public void setLoadControl(LoadControl loadControl) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setLoadControl(j10, loadControl);
        }
    }

    public int setLongOption(int i10, long j10) {
        return _setLongValue(this.mHandle, i10, j10);
    }

    public void setLooping(int i10) {
        _setLooping(this.mHandle, i10);
    }

    public void setMaskInfo(MaskInfo maskInfo) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setMaskInfo(j10, maskInfo);
        }
    }

    public void setMediaTransport(MediaTransport mediaTransport) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setMediaTransport(j10, mediaTransport);
        }
    }

    public void setNotifyer(IPlayerNotifyer iPlayerNotifyer) {
        this.mNotifyer = iPlayerNotifyer;
    }

    public void setNotifyerState(long j10) {
        this.mNotifyerState = j10;
        _setIntValue(this.mHandle, 16, (int) j10);
        _setLongValue(this.mHandle, 16, j10);
    }

    public void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        this.mScreenshotListener = onScreenshotListener;
    }

    public int setStringOption(int i10, String str) {
        return _setStringValue(this.mHandle, i10, str);
    }

    public void setSubInfo(SubInfo subInfo) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setSubInfo(j10, subInfo);
        }
    }

    public int setSurfaceValue(long j10) {
        return _setSurfaceValue(this.mHandle, j10);
    }

    protected int setVideoSurface(Surface surface) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            return _setVideoSurface(j10, surface);
        }
        return -1;
    }

    public void setVolume(float f10, float f11) {
        _setVolume(this.mHandle, f10, f11);
    }

    protected int start() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _start(j10);
    }

    protected int stop() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        _stop(j10);
        return 0;
    }

    public void switchStream(int i10, int i11) {
        _switchStream(this.mHandle, i10, i11);
    }

    public void takeScreenshot() {
        _takeScreenshot(this.mHandle);
    }

    @CalledByNative
    public final void takeScreenshotComplete(Bitmap bitmap) {
        MediaPlayer.OnScreenshotListener onScreenshotListener = this.mScreenshotListener;
        if (onScreenshotListener != null) {
            onScreenshotListener.onTakeScreenShotCompletion(bitmap);
        }
    }

    @CalledByNative
    public void updateFrameTerminatedDTS(int i10, long j10, long j11) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.updateFrameTerminatedDTS(i10, j11, j10);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSource(j10, iMediaDataSource);
        }
    }
}
