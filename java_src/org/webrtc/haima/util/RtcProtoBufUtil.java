package org.webrtc.haima.util;

import androidx.core.view.MotionEventCompat;
import org.hmwebrtc.Logging;
import org.webrtc.haima.listeners.HmProtoCallback;

/* JADX INFO: loaded from: classes10.dex */
public class RtcProtoBufUtil {
    public static final String GSPROXY_SDP = "gsproxy_sdp";
    public static final String MSG_BITRATEMODIFIEDTO = "BitrateModifiedTo:";
    public static final String MSG_PONG = "pong:";
    private static final String TAG = "RtcProtoBufUtil";
    private static HmProtoCallback mProtoCallback;
    public static final byte[] PROTO_COMM_HEADER = {67, 85, 80, 75, 1, 0};
    public static final byte[] PROTO_BUSINESS_CODE_KEYBOARD_KEY = {6, 1, 0, 0};
    public static final byte[] PROTO_BUSINESS_CODE_KEYBOARD_INPUT = {6, 1, 2, 0};
    public static final byte[] PROTO_BUSINESS_CODE_INPUT_MI_IME = {6, 1, 1, 0};
    public static final byte[] PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY = {6, 1, 3, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6350 = {6, 3, 5, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6480 = {6, 4, 8, 0};
    public static final byte[] PROTO_BUSINESS_CODE_64B0 = {6, 4, 11, 0};

    public enum StatusType {
        STATUS_HIDE,
        STATUS_SHOW
    }

    private RtcProtoBufUtil() {
    }

    private static byte[] getBufferSize(int i10) {
        return little_intToByte(i10, 4);
    }

    private static byte[] getContent(byte[] bArr, byte[] bArr2) {
        int length = bArr2.length + 14;
        byte[] bArr3 = new byte[length];
        byte[] bufferSize = getBufferSize(length);
        System.arraycopy(PROTO_COMM_HEADER, 0, bArr3, 0, 6);
        System.arraycopy(bufferSize, 0, bArr3, 6, 4);
        System.arraycopy(bArr, 0, bArr3, 10, 4);
        System.arraycopy(bArr2, 0, bArr3, 14, bArr2.length);
        return bArr3;
    }

    public static byte[] getIMStatusData(StatusType statusType) {
        String str = TAG;
        Logging.d(str, "statusType:" + statusType);
        HmProtoCallback hmProtoCallback = mProtoCallback;
        if (hmProtoCallback == null) {
            Logging.e(str, "mProtoCallback is null, getIMStatusData Failed.");
            return null;
        }
        return getContent(PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY, hmProtoCallback.handleProtoResult(statusType));
    }

    static byte[] little_intToByte(int i10, int i11) {
        byte[] bArr = new byte[i11];
        if (i11 == 1) {
            bArr[0] = (byte) (i10 & 255);
        } else if (i11 == 2) {
            bArr[0] = (byte) (i10 & 255);
            bArr[1] = (byte) ((i10 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
        } else {
            bArr[0] = (byte) (i10 & 255);
            bArr[1] = (byte) ((i10 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
            bArr[2] = (byte) ((16711680 & i10) >> 16);
            bArr[3] = (byte) ((i10 & (-16777216)) >> 24);
        }
        return bArr;
    }

    public static void registerCallback(HmProtoCallback hmProtoCallback) {
        mProtoCallback = hmProtoCallback;
    }
}
