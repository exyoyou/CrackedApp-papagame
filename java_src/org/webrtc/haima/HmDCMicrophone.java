package org.webrtc.haima;

import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONObject;
import org.webrtc.haima.audio.HmAudioManager;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.VirtualDeviceTransportType;
import org.webrtc.haima.listeners.HmPermissionCallback;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCMicrophone extends HmDCDevice {
    private static final String CMD = "cmd";
    private static final int CMD_CLOSE = 2;
    private static final int CMD_OPEN = 1;
    private static final String TAG = "HmDCMicrophone";
    private VirtualDeviceTransportType mVdTransportType;

    public HmDCMicrophone(DataChannel dataChannel) {
        super(dataChannel);
        this.mVdTransportType = VirtualDeviceTransportType.UNKNOWN;
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_DEVICE_CREATED, this.mDeviceName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onText$0(boolean z10) {
        if (!z10) {
            Logging.d(TAG, "audio record peremission NOT_GRANTED");
        } else {
            Logging.d(TAG, "audio record permission GRANTED");
            HmAudioManager.getInstance().startRecord();
        }
    }

    @Override // org.webrtc.haima.HmDCDevice
    public boolean onText(String str) {
        super.onText(str);
        try {
            Logging.d(TAG, "remote text: " + str);
            if (this.mVdTransportType == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
                int iOptInt = new JSONObject(str).optInt(CMD);
                Logging.d(TAG, "remote cmd: " + iOptInt);
                if (iOptInt != 0) {
                    if (iOptInt == 1) {
                        Logging.d(TAG, "cmd: " + iOptInt + " remote request open microphone.");
                        if (HmCameraWrapper.getInstance().checkAudioRecordPermission()) {
                            Logging.d(TAG, "cmd: " + iOptInt + " has audio record permission.");
                            HmAudioManager.getInstance().startRecord();
                        } else {
                            Logging.d(TAG, "cmd: " + iOptInt + " request audio record permission.");
                            HmCameraWrapper.getInstance().requestAudioRecordPermission(new HmPermissionCallback() { // from class: org.webrtc.haima.f
                                @Override // org.webrtc.haima.listeners.HmPermissionCallback
                                public final void handlePermissionResult(boolean z10) {
                                    HmDCMicrophone.lambda$onText$0(z10);
                                }
                            });
                        }
                    } else if (iOptInt != 2) {
                        Logging.e(TAG, "Unknown microphone cmd: " + iOptInt);
                    } else {
                        Logging.d(TAG, "cmd: " + iOptInt + " remote request close microphone.");
                        HmAudioManager.getInstance().stopRecord();
                    }
                }
            } else {
                Logging.d(TAG, "Microphone transport type is " + this.mVdTransportType + ", rtc media channel is not available.");
            }
            return true;
        } catch (Exception e10) {
            Logging.e(TAG, "Parse signal message error: ", e10);
            return false;
        }
    }

    public void setVdTransportType(VirtualDeviceTransportType virtualDeviceTransportType) {
        this.mVdTransportType = virtualDeviceTransportType;
    }
}
