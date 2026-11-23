package org.webrtc.haima;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.PeerConnection;
import org.hmwebrtc.RtcCountlyConstants;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.VirtualDeviceTransportType;

/* JADX INFO: loaded from: classes10.dex */
public class HmDataChannelManager {
    public static final String BEHAVIOR = "behavior";
    public static final String BEHAVIOR_VALUE = "values";
    public static final String CAMERA = "camera";
    public static final String DEVICE = "device";
    public static final String DISPLAY = "display";
    public static final String GALLERY = "gallery";
    public static final String HAIMA_DATA_CHANNEL_CAMERA = "HaimaCamera";
    public static final String HAIMA_DATA_CHANNEL_INPUT = "HaimaInput";
    public static final String HAIMA_DATA_CHANNEL_MICROPHONE = "HmMicrophone";
    private static final String HAIMA_DATA_CHANNEL_SIGNAL = "HaimaRTCSignal";
    public static final String INPUT = "input";
    public static final String MESSAGE = "message";
    private static final String QOS_DATA_CHANNEL_TAG = "HaimaQos";
    public static final String SIGNAL = "signal";
    public static final String SPECIAL_DEVICE_ID = "deviceID";
    private static final String TAG = "HmDataChannelManager";
    public static final String VIBRATE = "vibrate";
    private static HmDataChannelManager mInstance;
    private HmOnDCDeviceStateChangeListener hmOnDCDeviceStateChangeListener;
    private VirtualDeviceTransportType mAudioVirtualDeviceTransportType;
    private VirtualDeviceTransportType mVideoVirtualDeviceTransportType;
    private HashMap<String, HmDCDevice> hmDataChannels = new HashMap<>();
    public AtomicBoolean disposed = new AtomicBoolean(false);

    public interface HmOnDCDeviceStateChangeListener {
        void onAdd(HmDCDevice hmDCDevice);

        void onRemove(HmDCDevice hmDCDevice);
    }

    private HmDataChannelManager() {
    }

    public static HmDataChannelManager getInstance() {
        if (mInstance == null) {
            mInstance = new HmDataChannelManager();
        }
        return mInstance;
    }

    public static void release() {
        HmDataChannelManager hmDataChannelManager = mInstance;
        if (hmDataChannelManager != null) {
            hmDataChannelManager.disposeAllDataChannel();
            mInstance.setHmOnDCDeviceStateChangeListener(null);
            mInstance = null;
        }
    }

    @Nullable
    public HmDCDevice createDataChannel(PeerConnection peerConnection, String str) {
        synchronized (this.hmDataChannels) {
            HmDCDevice hmDCDevice = this.hmDataChannels.get(str);
            if (hmDCDevice != null) {
                Logging.e(TAG, "data channel already created, reuse it: " + str);
                this.hmDataChannels.remove(str);
                HmDCDevice hmDCDevice2 = new HmDCDevice(hmDCDevice.mDataChannel);
                hmDCDevice2.mDataChannel.registerObserver(hmDCDevice2);
                this.hmDataChannels.put(str, hmDCDevice2);
            }
            Logging.d(TAG, "create data channel: " + str);
            DataChannel.Init init = new DataChannel.Init();
            init.ordered = true;
            init.protocol = "SCTP";
            init.negotiated = false;
            init.maxRetransmits = -1;
            DataChannel dataChannelCreateDataChannel = peerConnection.createDataChannel(str, init);
            if (dataChannelCreateDataChannel != null) {
                HmDCDevice hmDCDevice3 = new HmDCDevice(dataChannelCreateDataChannel);
                hmDCDevice3.mDataChannel.registerObserver(hmDCDevice3);
                this.hmDataChannels.put(str, hmDCDevice3);
                return hmDCDevice3;
            }
            Logging.e(TAG, "fatal error: create data channel failed: " + str);
            return null;
        }
    }

    public boolean destroyDCDevice(String str) {
        synchronized (this.hmDataChannels) {
            HmDCDevice hmDCDevice = this.hmDataChannels.get(str);
            if (hmDCDevice != null) {
                hmDCDevice.dispose(false);
                return true;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("not found DC device: ");
            sb2.append(str);
            return false;
        }
    }

    public void disposeAllDataChannel() {
        Logging.d(TAG, "dispose all data channel");
        synchronized (this.hmDataChannels) {
            this.disposed.set(true);
            Iterator<HmDCDevice> it2 = this.hmDataChannels.values().iterator();
            while (it2.hasNext()) {
                it2.next().dispose(true);
            }
            this.hmDataChannels.clear();
        }
    }

    @Nullable
    public HmDCDevice getHmDCDeviceByName(String str) {
        if (str != null) {
            return this.hmDataChannels.get(str);
        }
        return null;
    }

    public HmOnDCDeviceStateChangeListener getHmOnDCDeviceStateChangeListener() {
        return this.hmOnDCDeviceStateChangeListener;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00cb  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void onDataChannel(DataChannel dataChannel) {
        byte b10;
        Logging.d(TAG, "new Data channel from remote: " + dataChannel.label());
        synchronized (this.hmDataChannels) {
            if (this.disposed.get()) {
                Logging.w(TAG, " peerConnection has releasing: " + dataChannel.label());
                return;
            }
            HmDCDevice hmDCDevice = this.hmDataChannels.get(dataChannel.label());
            if (hmDCDevice != null) {
                Logging.d(TAG, "fatal error: device: " + dataChannel.label() + " already exist, renew it, maybe didn't work.");
                this.hmDataChannels.remove(dataChannel.label());
                hmDCDevice.dispose(true);
            }
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_ON_DATACHANNEL_IS_CALLED, "datachannel:onDataChannel dc.label:" + dataChannel.label());
            String strLabel = dataChannel.label();
            switch (strLabel.hashCode()) {
                case -68467855:
                    if (!strLabel.equals(QOS_DATA_CHANNEL_TAG)) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case -30218167:
                    if (!strLabel.equals(HAIMA_DATA_CHANNEL_CAMERA)) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 46210245:
                    if (!strLabel.equals(HAIMA_DATA_CHANNEL_SIGNAL)) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                case 1474237487:
                    if (!strLabel.equals(HAIMA_DATA_CHANNEL_MICROPHONE)) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                HmDCSignal hmDCSignal = new HmDCSignal(dataChannel);
                dataChannel.registerObserver(hmDCSignal);
                this.hmDataChannels.put(dataChannel.label(), hmDCSignal);
            } else if (b10 == 1) {
                Logging.e(TAG, "Merge feature-KUAISHOU-03 please.");
            } else if (b10 == 2) {
                HmDCCamera hmDCCamera = new HmDCCamera(dataChannel);
                hmDCCamera.setVdTransportType(this.mVideoVirtualDeviceTransportType);
                Logging.d(TAG, "camera setVdTransportType: " + this.mVideoVirtualDeviceTransportType);
                dataChannel.registerObserver(hmDCCamera);
                this.hmDataChannels.put(dataChannel.label(), hmDCCamera);
            } else if (b10 != 3) {
                Logging.e(TAG, "recv unknown data channel req: " + dataChannel.label());
            } else {
                HmDCMicrophone hmDCMicrophone = new HmDCMicrophone(dataChannel);
                hmDCMicrophone.setVdTransportType(this.mAudioVirtualDeviceTransportType);
                Logging.d(TAG, "microphone setVdTransportType: " + this.mAudioVirtualDeviceTransportType);
                dataChannel.registerObserver(hmDCMicrophone);
                this.hmDataChannels.put(dataChannel.label(), hmDCMicrophone);
            }
        }
    }

    public void setAudioVirtualDeviceTransportType(VirtualDeviceTransportType virtualDeviceTransportType) {
        Logging.d(TAG, "setAudioVirtualDeviceTransportType: " + virtualDeviceTransportType);
        this.mAudioVirtualDeviceTransportType = virtualDeviceTransportType;
        HmDCDevice hmDCDevice = this.hmDataChannels.get(HAIMA_DATA_CHANNEL_MICROPHONE);
        if (hmDCDevice != null) {
            ((HmDCMicrophone) hmDCDevice).setVdTransportType(virtualDeviceTransportType);
            Logging.d(TAG, "microphone setVdTransportType: " + virtualDeviceTransportType);
        }
    }

    public void setHmOnDCDeviceStateChangeListener(HmOnDCDeviceStateChangeListener hmOnDCDeviceStateChangeListener) {
        this.hmOnDCDeviceStateChangeListener = hmOnDCDeviceStateChangeListener;
    }

    public void setVideoVirtualDeviceTransportType(VirtualDeviceTransportType virtualDeviceTransportType) {
        Logging.d(TAG, "setVideoVirtualDeviceTransportType: " + virtualDeviceTransportType);
        this.mVideoVirtualDeviceTransportType = virtualDeviceTransportType;
        HmDCDevice hmDCDevice = this.hmDataChannels.get(HAIMA_DATA_CHANNEL_CAMERA);
        if (hmDCDevice != null) {
            ((HmDCCamera) hmDCDevice).setVdTransportType(virtualDeviceTransportType);
            Logging.d(TAG, "camera setVdTransportType: " + virtualDeviceTransportType);
        }
    }

    @Nullable
    public HmDCDevice createDataChannel(PeerConnection peerConnection, String str, int i10) {
        synchronized (this.hmDataChannels) {
            HmDCDevice hmDCDevice = this.hmDataChannels.get(str);
            if (hmDCDevice != null) {
                Logging.e(TAG, "data channel already created, reuse it: " + str);
                this.hmDataChannels.remove(str);
                HmDCDevice hmDCDevice2 = new HmDCDevice(hmDCDevice.mDataChannel);
                hmDCDevice2.mDataChannel.registerObserver(hmDCDevice2);
                this.hmDataChannels.put(str, hmDCDevice2);
            }
            Logging.d(TAG, "create data channel: " + str);
            DataChannel.Init init = new DataChannel.Init();
            init.ordered = false;
            init.protocol = "SCTP";
            init.negotiated = false;
            init.maxRetransmits = i10;
            DataChannel dataChannelCreateDataChannel = peerConnection.createDataChannel(str, init);
            if (dataChannelCreateDataChannel == null) {
                Logging.e(TAG, "fatal error: create data channel failed: " + str);
                return null;
            }
            HmDCDevice hmDCDevice3 = new HmDCDevice(dataChannelCreateDataChannel);
            hmDCDevice3.mDataChannel.registerObserver(hmDCDevice3);
            this.hmDataChannels.put(str, hmDCDevice3);
            return hmDCDevice3;
        }
    }
}
