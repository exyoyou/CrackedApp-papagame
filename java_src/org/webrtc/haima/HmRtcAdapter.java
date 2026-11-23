package org.webrtc.haima;

import android.content.Context;
import android.media.AudioAttributes;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.hmwebrtc.ContextUtils;
import org.hmwebrtc.Logging;
import org.hmwebrtc.NetworkMonitorAutoDetect;
import org.hmwebrtc.SessionDescription;
import org.hmwebrtc.VideoSink;
import org.hmwebrtc.log.WebrtcLoggableHelp;
import org.webrtc.haima.beans.CameraConfig;
import org.webrtc.haima.listeners.HmGSCallback;
import org.webrtc.haima.listeners.HmPermissionHandler;
import org.webrtc.haima.listeners.HmProtoCallback;

/* JADX INFO: loaded from: classes10.dex */
public class HmRtcAdapter {
    private static final String TAG = "HmRtcAdapter";
    public static AudioAttributes externalAudioAttributes;
    private static HmRtcAdapterImpl impl;
    private static WebrtcLoggableHelp loggable;
    private static boolean loggableInited;

    public static class Configuration {
        public String mCoturnServer;
        public String mDeviceBrand;
        public String mDeviceId;
        public String mDeviceModel;
        public String mDeviceOs;
        public String mDeviceResolution;
        public EnvVariableReader mEnvVariableReader;
        public boolean mGameTypeIsArm;
        public String mRoomId;
        public String mSignalServer;
        public TurnIceServer[] mTurnIceServers;
        public String mUserId;

        boolean isVaild() {
            return true;
        }
    }

    public interface EnvVariableReader {
        String getStringValue(String str, String str2);
    }

    private static class HmRtcEnvironmentImpl extends HmRtcEnvironment {
        private final Configuration mConfig;

        HmRtcEnvironmentImpl(Configuration configuration) {
            this.mConfig = configuration;
        }

        @Override // org.webrtc.haima.HmRtcEnvironment
        public String getStringValue(String str, String str2) {
            if (this.mConfig == null) {
                return str2;
            }
            if (HmRtcEnvironment.kUserId.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mUserId) ? str2 : this.mConfig.mUserId;
            }
            if (HmRtcEnvironment.kDeviceId.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mDeviceId) ? str2 : this.mConfig.mDeviceId;
            }
            if (HmRtcEnvironment.kDeviceOs.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mDeviceOs) ? str2 : this.mConfig.mDeviceOs;
            }
            if (HmRtcEnvironment.kDeviceModel.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mDeviceModel) ? str2 : this.mConfig.mDeviceModel;
            }
            if (HmRtcEnvironment.kDeviceBrand.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mDeviceBrand) ? str2 : this.mConfig.mDeviceBrand;
            }
            if (HmRtcEnvironment.kDeviceResolution.equalsIgnoreCase(str)) {
                return TextUtils.isEmpty(this.mConfig.mDeviceResolution) ? str2 : this.mConfig.mDeviceResolution;
            }
            EnvVariableReader envVariableReader = this.mConfig.mEnvVariableReader;
            return envVariableReader != null ? envVariableReader.getStringValue(str, str2) : str2;
        }
    }

    public static class InputDataType {
        public static final int BINARY_DISCARDABLE = 2;
        public static final int BINARY_NON_DISCARDABLE = 1;
        public static final int TEXT_DISCARDABLE = 4;
        public static final int TEXT_NON_DISCARDABLE = 3;
    }

    public static class TurnIceServer {
        public String password;
        public String url;
        public String username;

        public TurnIceServer(String str, String str2, String str3) {
            this.url = str;
            this.username = str2;
            this.password = str3;
        }
    }

    public HmRtcAdapter() {
        HmRtcAdapterImpl hmRtcAdapterImpl = impl;
        if (hmRtcAdapterImpl != null) {
            hmRtcAdapterImpl.disconnect();
        }
        HmRtcAdapterImpl hmRtcAdapterImpl2 = new HmRtcAdapterImpl();
        impl = hmRtcAdapterImpl2;
        hmRtcAdapterImpl2.setOwner(hashCode());
    }

    private String createConcatenatedTurnIceServers(TurnIceServer[] turnIceServerArr) {
        String str = "";
        if (turnIceServerArr != null && turnIceServerArr.length > 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < turnIceServerArr.length; i11++) {
                TurnIceServer turnIceServer = turnIceServerArr[i11];
                if (turnIceServer != null && turnIceServer.url != null && turnIceServer.username != null && turnIceServer.password != null) {
                    if (i10 > 0) {
                        str = str + ",";
                    }
                    Matcher matcher = Pattern.compile("\\b(stun|turn)\\b:(.+:\\d+)").matcher(turnIceServerArr[i11].url);
                    if (matcher.find() && matcher.groupCount() == 2) {
                        str = str + "turn:" + matcher.group(2) + "?transport=tcp@" + turnIceServerArr[i11].username + ":" + turnIceServerArr[i11].password;
                        i10++;
                    }
                }
            }
        }
        Logging.d(TAG, "tcp turnIceServers: " + str);
        return str;
    }

    public static boolean enableLogging(boolean z10) {
        return Logging.setEnableLogOutput(z10);
    }

    private static void initLogging(Context context) {
        String path = null;
        try {
            path = context.getExternalFilesDir(null).getPath();
        } catch (Exception e10) {
            Logging.e(TAG, "defaultLogPath error:" + e10.toString());
        }
        if (HmRtcGlobalConfig.rtc_debug_mode) {
            HmRtcSdkDebugCfg hmRtcSdkDebugCfg = HmRtcGlobalConfig.mHmRtcSdkDebugCfg;
            WebrtcLoggableHelp.Config config = hmRtcSdkDebugCfg != null ? new WebrtcLoggableHelp.Config(hmRtcSdkDebugCfg.isEnableDebugMode(), hmRtcSdkDebugCfg.isEnableLogcatOutput(), hmRtcSdkDebugCfg.getDebugLogLevel(), hmRtcSdkDebugCfg.getDebugLogPath(), hmRtcSdkDebugCfg.isEnableSingleThread(), hmRtcSdkDebugCfg.getMaxBytes(), hmRtcSdkDebugCfg.getUploadInterval()) : new WebrtcLoggableHelp.Config(WebrtcLoggableHelp.HMRTC_LOG_DEBUGMODE_DEFAULT_CFG);
            Logging.d(TAG, "debug-mode : enableLog  {" + config.ToString() + "}");
            loggable = new WebrtcLoggableHelp(config, path, HmRtcGlobalConfig.getDebugModeTagList());
        } else {
            WebrtcLoggableHelp.Config config2 = new WebrtcLoggableHelp.Config();
            if (config2.isEnable()) {
                Logging.d(TAG, "enable loggable  {" + config2.ToString() + "}");
                loggable = new WebrtcLoggableHelp(config2, path);
            } else {
                Logging.d(TAG, "disable loggable");
            }
        }
        WebrtcLoggableHelp webrtcLoggableHelp = loggable;
        if (webrtcLoggableHelp != null) {
            Logging.injectLoggable(webrtcLoggableHelp, webrtcLoggableHelp.getLevel());
        } else {
            Logging.d(TAG, "initialized without an injected Loggable, Any existing Loggable will be deleted.");
            Logging.deleteInjectedLoggable();
        }
    }

    public static boolean isCountlyEventRecorderCallbackSet() {
        return HmRtcAdapterImpl.isCountlyEventRecorderCallbackSet();
    }

    public static void setAudioAttributes(AudioAttributes audioAttributes) {
        externalAudioAttributes = audioAttributes;
        if (impl == null) {
            Logging.d(TAG, "Not setAudioAttributes");
        } else {
            Logging.d(TAG, "setAudioAttributes");
            impl.setAudioAttributes(audioAttributes);
        }
    }

    public static void setCountlyEventRecorderCallback(HmCountlyEventRecorderCallback hmCountlyEventRecorderCallback) {
        HmRtcAdapterImpl.setCountlyEventRecorderCallback(hmCountlyEventRecorderCallback);
    }

    public static void setWifiSSIDGetOn(boolean z10) {
        NetworkMonitorAutoDetect.setGetWifiSSIDSwitchOn(z10);
    }

    public boolean ConnectAccProxy(String str, int i10, String str2, String str3) {
        if (impl.getOwner() == hashCode()) {
            return impl.ConnectAccProxy(str, i10, str2, str3);
        }
        return false;
    }

    public void SetOperationDelayEvent(IOperationDelayEvent iOperationDelayEvent) {
        if (impl.getOwner() == hashCode()) {
            impl.SetOperationDelayEvent(iOperationDelayEvent);
        }
    }

    public void SwitchToCellularConnection(boolean z10) {
        if (impl.getOwner() == hashCode()) {
            impl.SwitchToCellularConnection(z10);
        }
    }

    public void connectFailedInternal(String str) {
        if (impl.getOwner() == hashCode()) {
            impl.connectFailedInternal(str);
        }
    }

    public void createConnect() {
        if (impl.getOwner() == hashCode()) {
            impl.createConnect(loggable);
        }
    }

    public void disconnect() {
        if (impl.getOwner() == hashCode()) {
            impl.disconnect();
        }
    }

    public void enableShareStreaming(boolean z10) {
        if (impl.getOwner() == hashCode()) {
            impl.enableShareStreaming(z10);
        }
    }

    @Nullable
    public HmFrameDelayInfo getFrameDelayInfo() {
        if (impl.getOwner() == hashCode()) {
            return impl.getFrameDelayInfo();
        }
        return null;
    }

    public boolean initAdapter(Context context, VideoSink videoSink, VideoSink videoSink2, String str, String str2, String str3, SocketIORTCClient.HmSocketIOOptions hmSocketIOOptions, WebSocketSignalClient.IWebSocketSignalClientCallback iWebSocketSignalClientCallback, int i10, FrameLayout frameLayout, Configuration configuration) {
        if (!loggableInited) {
            Context applicationContext = context != null ? context.getApplicationContext() : null;
            ContextUtils.initialize(applicationContext);
            initLogging(applicationContext);
            loggableInited = true;
        }
        if (impl.getOwner() != hashCode() || configuration == null) {
            return false;
        }
        TrafficStatsHelper.getUid(context);
        impl.initAdapter(new HmRtcEnvironmentImpl(configuration), context, videoSink, videoSink2, createConcatenatedTurnIceServers(configuration.mTurnIceServers), configuration.mSignalServer, configuration.mRoomId, str, str2, str3, hmSocketIOOptions, iWebSocketSignalClientCallback, i10, frameLayout, Boolean.valueOf(configuration.mGameTypeIsArm));
        return true;
    }

    public boolean isConnected() {
        if (impl.getOwner() == hashCode()) {
            return impl.isConnected();
        }
        return false;
    }

    public boolean isInputChannelEnabled() {
        if (impl.getOwner() != hashCode()) {
            return false;
        }
        try {
            return impl.isInputChannelEnabled();
        } catch (Exception e10) {
            Logging.w(TAG, "isInputChannelEnabled " + e10.toString());
            return false;
        }
    }

    public boolean isPlaying() {
        if (impl.getOwner() == hashCode()) {
            return impl.isPlaying();
        }
        return false;
    }

    public boolean isRotationSupported() {
        if (impl.getOwner() == hashCode()) {
            return impl.isRotationSupported();
        }
        return false;
    }

    public boolean isRtcUploadAudioChannelAvailable() {
        if (impl.getOwner() == hashCode()) {
            return impl.isRtcUploadAudioChannelAvailable();
        }
        return false;
    }

    public boolean isRtcUploadAudioChannelConfigOn() {
        return HmRtcGlobalConfig.rtc_upload_audio_on;
    }

    public void onRemoteDescription(SessionDescription sessionDescription) {
        if (impl.getOwner() == hashCode()) {
            impl.onRemoteDescription(sessionDescription);
        }
    }

    public void registerGSCallback(HmGSCallback hmGSCallback) {
        if (impl.getOwner() == hashCode()) {
            impl.registerGSCallback(hmGSCallback);
        }
    }

    public void registerPermissionHandler(HmPermissionHandler hmPermissionHandler) {
        if (impl.getOwner() == hashCode()) {
            impl.registerPermissionHandler(hmPermissionHandler);
        }
    }

    public void registerProtoUtilsCallback(HmProtoCallback hmProtoCallback) {
        if (impl.getOwner() == hashCode()) {
            impl.registerProtoUtilsCallback(hmProtoCallback);
        }
    }

    public void requestKeyFrame() {
        if (impl.getOwner() == hashCode()) {
            impl.requestKeyFrame();
        } else {
            Logging.e(TAG, "Cannot request key frame - adapter ownership mismatch");
        }
    }

    public void resetStreamInfo() {
        if (impl.getOwner() == hashCode()) {
            impl.resetStreamInfo();
        }
    }

    public boolean sendData(byte[] bArr) {
        if (impl.getOwner() == hashCode()) {
            return impl.sendData(bArr);
        }
        return false;
    }

    public boolean sendText(String str) {
        if (impl.getOwner() == hashCode()) {
            return impl.sendText(str);
        }
        return false;
    }

    public int sendToRemoteInput(int i10, byte[] bArr) {
        if (i10 >= 1 && i10 <= 4 && bArr != null) {
            try {
                if (bArr.length != 0 && impl.getOwner() == hashCode()) {
                    return impl.sendToRemoteInput(i10, bArr);
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public void setCameraConfig(CameraConfig cameraConfig) {
        if (impl.getOwner() == hashCode()) {
            impl.setCameraConfig(cameraConfig);
        }
    }

    public void setGSUrl(String str) {
        if (impl.getOwner() == hashCode()) {
            impl.setGSUrl(str);
        }
    }

    public void setHmPlayerCallback(HmPlayerCallback hmPlayerCallback) {
        if (impl.getOwner() == hashCode()) {
            impl.setHmPlayerCallback(hmPlayerCallback);
        }
    }

    public void setHmStreamerCallback(HmStreamerCallback hmStreamerCallback) {
        if (impl.getOwner() == hashCode()) {
            impl.setHmStreamerCallback(hmStreamerCallback);
        }
    }

    public void setInputPingPongMs(int i10) {
        if (impl.getOwner() != hashCode()) {
            return;
        }
        try {
            impl.setInputPingPongMs(i10);
        } catch (Exception e10) {
            Logging.w(TAG, "isInputChannelEnabled " + e10.toString());
        }
    }

    public boolean setLongParameter(String str, long j10) {
        if (impl.getOwner() != hashCode()) {
            return false;
        }
        try {
            return impl.setLongParameter(str, j10);
        } catch (Exception e10) {
            Logging.w(TAG, "setLongParameter " + e10.toString());
            return false;
        }
    }

    public boolean setParameter(String str, String str2) {
        if (impl.getOwner() != hashCode()) {
            return false;
        }
        try {
            return impl.setParameter(str, str2);
        } catch (Exception e10) {
            Logging.w(TAG, "setParameter " + e10.toString());
            return false;
        }
    }

    public void setSpeakerMute(boolean z10) {
        if (impl.getOwner() == hashCode()) {
            impl.setSpeakerMute(z10);
        }
    }

    public void startAudioRecorder() {
        if (impl.getOwner() == hashCode()) {
            impl.startAudioRecorder();
        }
    }

    public void startCameraCapture() {
        if (impl.getOwner() == hashCode()) {
            impl.startCameraCapture();
        }
    }

    public void stopAudioRecorder() {
        if (impl.getOwner() == hashCode()) {
            impl.stopAudioRecorder();
        }
    }

    public void stopCameraCapture() {
        if (impl.getOwner() == hashCode()) {
            impl.stopCameraCapture();
        }
    }

    public void unRegisterPermissionHandler() {
        if (impl.getOwner() == hashCode()) {
            impl.unRegisterPermissionHandler();
        }
    }

    public int x86SendLargeDataBlcok(byte[] bArr, HaimaDataChannel.Listener listener) {
        try {
            if (impl.getOwner() == hashCode()) {
                return impl.x86SendLargeDataBlcok(bArr, listener);
            }
        } catch (Exception unused) {
        }
        return -1;
    }
}
