package org.webrtc.haima;

import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.hmwebrtc.DataChannel;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONObject;
import org.webrtc.haima.camera.HmCameraManager;
import org.webrtc.haima.camerarecorder.LensFacing;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.VirtualDeviceTransportType;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCCamera extends HmDCDevice {
    public static final int APPLY_PERMISSION = 1;
    public static final int LOW_OS_VERSION = 2;
    public static final int NOT_GRANTED = 0;
    private static final String TAG = "HmDCCamera";
    private static final String ZOOM = "zoom";
    private long current_device_id;
    private int mFps;
    private int mHeight;
    private LensFacing mLensFacing;
    private VirtualDeviceTransportType mVdTransportType;
    private int mWidth;

    public HmDCCamera(DataChannel dataChannel) {
        super(dataChannel);
        this.mVdTransportType = VirtualDeviceTransportType.UNKNOWN;
        this.mWidth = 480;
        this.mHeight = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
        this.mFps = 15;
        this.mBitrate = 800000;
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_DC_DEVICE_CREATED, this.mDeviceName);
    }

    private void closeCamera() {
        Logging.d(TAG, "Got close camera request");
        VirtualDeviceTransportType virtualDeviceTransportType = this.mVdTransportType;
        if (virtualDeviceTransportType == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
            HmCameraManager.getInstance().stopVideoSource();
        } else if (virtualDeviceTransportType == VirtualDeviceTransportType.RTC_DATA_CHANNEL) {
            HmCameraWrapper.getInstance().stopRecord();
        }
    }

    private void openCamera(JSONObject jSONObject) {
        Logging.d(TAG, "Got open camera request: " + jSONObject);
        this.mWidth = jSONObject.optInt("width", this.mWidth);
        this.mHeight = jSONObject.optInt("height", this.mHeight);
        this.mFps = jSONObject.optInt("fps", this.mFps);
        this.mLensFacing = "front".equalsIgnoreCase(jSONObject.optString("type")) ? LensFacing.FRONT : LensFacing.BACK;
        Logging.d(TAG, "openCamera res: " + this.mWidth + "x" + this.mHeight + ", fps: " + this.mFps + ", camera: " + this.mLensFacing);
        VirtualDeviceTransportType virtualDeviceTransportType = this.mVdTransportType;
        if (virtualDeviceTransportType == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
            this.mWidth = jSONObject.optInt("height", this.mWidth);
            this.mHeight = jSONObject.optInt("width", this.mHeight);
            Logging.d(TAG, "FINGERPRINT: " + Build.FINGERPRINT);
            HmCameraWrapper.getInstance().startRecord(this);
        } else if (virtualDeviceTransportType == VirtualDeviceTransportType.RTC_DATA_CHANNEL) {
            HmCameraWrapper.getInstance().stopRecord();
            HmCameraWrapper.getInstance().startRecord(this);
        }
        Logging.e(TAG, "openCamera over channel: " + this.mVdTransportType);
    }

    private void zoomCamera(JSONObject jSONObject) {
        Logging.d(TAG, "Got zoom camera request: " + jSONObject);
    }

    public int getBitrate() {
        return this.mBitrate;
    }

    public int getFps() {
        return this.mFps;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public LensFacing getLensFacing() {
        return this.mLensFacing;
    }

    public VirtualDeviceTransportType getVdTransportType() {
        return this.mVdTransportType;
    }

    public int getWidth() {
        return this.mWidth;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // org.webrtc.haima.HmDCDevice
    public boolean onText(String str) {
        byte b10;
        super.onText(str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString(HmDataChannelManager.BEHAVIOR);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onText: ");
            sb2.append(str);
            sb2.append(", with camera receive remote behavior: ");
            sb2.append(strOptString);
            if (!strOptString.equals("")) {
                switch (strOptString.hashCode()) {
                    case 3417674:
                        if (!strOptString.equals("open")) {
                            b10 = -1;
                        } else {
                            b10 = 0;
                        }
                        break;
                    case 3744723:
                        if (!strOptString.equals(ZOOM)) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    case 94756344:
                        if (!strOptString.equals("close")) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 1671767583:
                        if (!strOptString.equals("dispose")) {
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
                    this.current_device_id = jSONObject.optLong(HmDataChannelManager.SPECIAL_DEVICE_ID);
                    openCamera(jSONObject);
                } else if (b10 == 1) {
                    closeCamera();
                } else if (b10 == 2) {
                    zoomCamera(jSONObject.getJSONObject(HmDataChannelManager.BEHAVIOR_VALUE));
                } else if (b10 != 3) {
                    Logging.e(TAG, "Unknown camera behavior: " + strOptString);
                } else {
                    long jOptLong = jSONObject.optLong(HmDataChannelManager.SPECIAL_DEVICE_ID);
                    if (jOptLong == 0 || jOptLong != this.current_device_id) {
                        Logging.d(TAG, "ignore dispose for deviceID: " + jOptLong);
                    } else {
                        closeCamera();
                        HmDataChannelManager.getInstance().destroyDCDevice(this.mDeviceName);
                    }
                }
            }
            return true;
        } catch (Exception e10) {
            Logging.e(TAG, "Parse signal message error: ", e10);
            return false;
        }
    }

    public void openACK(boolean z10, int i10, String str) {
        try {
            JSONObject jSONObjectGenSignalJson = genSignalJson();
            jSONObjectGenSignalJson.put("open_ack", z10);
            jSONObjectGenSignalJson.put("code", i10);
            jSONObjectGenSignalJson.put("message", str);
            send(jSONObjectGenSignalJson.toString());
        } catch (Exception unused) {
            HmDataChannelManager.getInstance().destroyDCDevice(this.mDeviceName);
        }
    }

    public void setVdTransportType(VirtualDeviceTransportType virtualDeviceTransportType) {
        this.mVdTransportType = virtualDeviceTransportType;
    }

    public void startRecordOverRtcChannel() {
        HmCameraManager.getInstance().startVideoSource(this.mWidth, this.mHeight, this.mFps, this.mLensFacing == LensFacing.FRONT);
    }
}
