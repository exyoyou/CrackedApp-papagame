package com.haima.hmcp.business.display;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes5.dex */
public class HmScreenMonitor implements HmScreenOrientationListener {
    public static final String TAG = "HmScreenMonitor";
    private static final int UNKNOW_OS_ROTATION = -1;
    private static Handler mHandler;
    private DataProcessor dataProcessor;
    private HmScreenMonitorConfig mConfig;
    private Context mContext;
    private HmScreenOrientationListener mHmScreenOrientationListener;
    private HmDisplayListenerImp mSysDisplayListener;
    private IWebSocket mWebSocket;
    private WindowManager mWindowManager;

    @RequiresApi(api = 17)
    public static class HmDisplayListenerImp implements DisplayManager.DisplayListener {
        private HmScreenOrientationListener listener;
        private WindowManager windowManager;

        public HmDisplayListenerImp(WindowManager windowManager, HmScreenOrientationListener hmScreenOrientationListener) {
            this.windowManager = windowManager;
            this.listener = hmScreenOrientationListener;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            WindowManager windowManager = this.windowManager;
            if (windowManager == null) {
                return;
            }
            int rotation = windowManager.getDefaultDisplay().getRotation();
            LogUtils.d(HmScreenMonitor.TAG, "onDisplayChanged: " + rotation);
            HmScreenOrientationListener hmScreenOrientationListener = this.listener;
            if (hmScreenOrientationListener != null) {
                hmScreenOrientationListener.onScreenOrientationChanged(rotation);
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }

        public void release() {
            this.windowManager = null;
            this.listener = null;
        }
    }

    public HmScreenMonitor(Context context, IWebSocket iWebSocket) {
        this.mContext = context;
        this.mWebSocket = iWebSocket;
        mHandler = new Handler(Looper.getMainLooper());
        if (context != null) {
            this.mWindowManager = (WindowManager) context.getSystemService("window");
        }
        this.mConfig = new HmScreenMonitorConfig();
        this.dataProcessor = new DataProcessor(this.mWebSocket);
    }

    private int getOSVersion() {
        return Build.VERSION.SDK_INT;
    }

    private int getScreenRotation(Context context) {
        if (context == null) {
            return -1;
        }
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @TargetApi(17)
    private void internalRegister() {
        if (this.mContext == null) {
            LogUtils.e(TAG, "not register, cause Context is null");
            return;
        }
        if (this.mWebSocket == null) {
            LogUtils.e(TAG, "not register, cause IWebSocket is null");
            return;
        }
        String str = TAG;
        LogUtils.d(str, "config: " + this.mConfig);
        DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService(HmDataChannelManager.DISPLAY);
        HmDisplayListenerImp hmDisplayListenerImp = this.mSysDisplayListener;
        if (hmDisplayListenerImp == null) {
            this.mSysDisplayListener = new HmDisplayListenerImp(this.mWindowManager, this);
        } else {
            displayManager.unregisterDisplayListener(hmDisplayListenerImp);
        }
        displayManager.registerDisplayListener(this.mSysDisplayListener, mHandler);
        LogUtils.d(str, "register...");
        CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_MONITOR_REGISTER);
    }

    @TargetApi(17)
    private void internalUnregister() {
        DataProcessor dataProcessor = this.dataProcessor;
        if (dataProcessor != null) {
            dataProcessor.stop();
        }
        if (this.mSysDisplayListener != null) {
            Context context = this.mContext;
            if (context != null) {
                ((DisplayManager) context.getSystemService(HmDataChannelManager.DISPLAY)).unregisterDisplayListener(this.mSysDisplayListener);
            }
            this.mSysDisplayListener.release();
        }
        this.mSysDisplayListener = null;
        LogUtils.d(TAG, "unregister...");
        CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_MONITOR_UNREGISTER);
    }

    public boolean isEnable() {
        return this.mConfig.isEnable();
    }

    @Override // com.haima.hmcp.business.display.HmScreenOrientationListener
    public void onScreenOrientationChanged(int i10) {
        String str = TAG;
        LogUtils.d(str, "android os screen orientation changed, orientation = " + i10);
        HmScreenOrientationListener hmScreenOrientationListener = this.mHmScreenOrientationListener;
        if (hmScreenOrientationListener != null) {
            hmScreenOrientationListener.onScreenOrientationChanged(i10);
        }
        if (this.dataProcessor == null) {
            CountlyUtil.recordErrorEvent("send data fail when screen orientation changed");
            LogUtils.d(str, "data processor is null, send data fail");
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_CHANGED, "OS rotation: " + i10);
        this.dataProcessor.sendData(i10);
    }

    public void parseMessage(String str) {
        DataProcessor dataProcessor = this.dataProcessor;
        if (dataProcessor == null) {
            LogUtils.d(TAG, "data processor is null, parse message fail");
        } else {
            dataProcessor.receivePayload(str);
        }
    }

    @TargetApi(17)
    public void register() {
        if (getOSVersion() > 16) {
            internalRegister();
            return;
        }
        LogUtils.e(TAG, "not register, cause android version is too low, version: " + getOSVersion());
    }

    public void release() {
        LogUtils.d(TAG, "release...");
        Handler handler = mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            mHandler = null;
        }
        DataProcessor dataProcessor = this.dataProcessor;
        if (dataProcessor != null) {
            dataProcessor.release();
            this.dataProcessor = null;
        }
        this.mContext = null;
        this.mWebSocket = null;
        this.mWindowManager = null;
    }

    public void sendScreenOrientation() {
        Context context = this.mContext;
        if (context == null) {
            LogUtils.e(TAG, "not send screen orientation, cause Context is null");
            return;
        }
        int screenRotation = getScreenRotation(context);
        String str = TAG;
        LogUtils.d(str, "Android OS rotation = " + screenRotation);
        DataProcessor dataProcessor = this.dataProcessor;
        if (dataProcessor == null) {
            LogUtils.d(str, "data processor is null, send data fail");
        } else {
            dataProcessor.sendData(screenRotation);
        }
    }

    public void setConfig(HmScreenMonitorConfig hmScreenMonitorConfig) {
        this.mConfig = hmScreenMonitorConfig;
        if (hmScreenMonitorConfig == null) {
            this.mConfig = new HmScreenMonitorConfig();
        }
        DataProcessor dataProcessor = this.dataProcessor;
        if (dataProcessor == null) {
            LogUtils.d(TAG, "data processor is null, set config fail");
        } else {
            dataProcessor.setConfig(this.mConfig);
        }
    }

    public void setHmScreenOrientationListener(HmScreenOrientationListener hmScreenOrientationListener) {
        this.mHmScreenOrientationListener = hmScreenOrientationListener;
    }

    public void unregister() {
        if (getOSVersion() > 16) {
            internalUnregister();
            return;
        }
        LogUtils.e(TAG, "not unregister, cause android version is too low, version: " + getOSVersion());
    }
}
