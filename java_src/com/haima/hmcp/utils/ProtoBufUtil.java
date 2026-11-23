package com.haima.hmcp.utils;

import android.graphics.Point;
import android.text.TextUtils;
import androidx.core.view.MotionEventCompat;
import com.google.protobuf.ByteString;
import com.haima.hmcp.beans.FileUploadBean;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.proto.GSSDK;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ProtoBufUtil {
    public static final String GSPROXY_SDP = "gsproxy_sdp";
    public static final String MSG_BITRATEMODIFIEDTO = "BitrateModifiedTo:";
    public static final String MSG_PONG = "pong:";
    private static final String TAG = "ProtoBufUtil";
    public static final byte[] PROTO_COMM_HEADER = {67, 85, 80, 75, 1, 0};
    public static final byte[] PROTO_BUSINESS_CODE_KEYBOARD_KEY = {6, 1, 0, 0};
    public static final byte[] PROTO_BUSINESS_CODE_KEYBOARD_INPUT = {6, 1, 2, 0};
    public static final byte[] PROTO_BUSINESS_CODE_INPUT_MI_IME = {6, 1, 1, 0};
    public static final byte[] PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY = {6, 1, 3, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6350 = {6, 3, 5, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6480 = {6, 4, 8, 0};
    public static final byte[] PROTO_BUSINESS_CODE_64B0 = {6, 4, 11, 0};
    public static final byte[] PROTO_BUSINESS_CODE_64C0 = {6, 4, 12, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6170 = {6, 1, 7, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6160 = {6, 1, 6, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6700 = {6, 7, 0, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6710 = {6, 7, 1, 0};
    public static final byte[] PROTO_BUSINESS_CODE_64G0 = {6, 4, 16, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6_4_19_0 = {6, 4, BinaryMemcacheOpcodes.REPLACEQ, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6720 = {6, 7, 2, 0};
    public static final byte[] PROTO_BUSINESS_CODE_6090 = {6, 0, 9, 0};
    public static final byte[] PROTO_BUSINESS_CODE_60400 = {6, 0, 40, 0};

    private ProtoBufUtil() {
    }

    public static byte[] gamePadToMouse(boolean z10) {
        GSSDK.GamepadMouse.Builder builderNewBuilder = GSSDK.GamepadMouse.newBuilder();
        builderNewBuilder.setModeSwitch(z10);
        return getContent(PROTO_BUSINESS_CODE_60400, builderNewBuilder.build().toByteArray());
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

    public static byte[] getCustomInputOPData(ArrayList<HMInputOpData.HMOneInputOPData> arrayList) {
        GSSDK.OneInputOPData customOneInputOP;
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        GSSDK.InputOPData.Builder builderNewBuilder = GSSDK.InputOPData.newBuilder();
        for (HMInputOpData.HMOneInputOPData hMOneInputOPData : arrayList) {
            if (hMOneInputOPData != null && (customOneInputOP = getCustomOneInputOP(hMOneInputOPData)) != null) {
                builderNewBuilder.addOpList(customOneInputOP);
            }
        }
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder.build().toByteArray());
    }

    private static GSSDK.OneInputOPData getCustomOneInputOP(HMInputOpData.HMOneInputOPData hMOneInputOPData) {
        if (hMOneInputOPData == null) {
            return null;
        }
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        HMInputOpData.HMOneInputOPData_InputOP hMOneInputOPData_InputOP = hMOneInputOPData.inputOp;
        if (hMOneInputOPData_InputOP != null) {
            builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.forNumber(hMOneInputOPData_InputOP.getValue()));
        }
        builderNewBuilder.setValue(hMOneInputOPData.value);
        HMInputOpData.HMOneInputOPData_InputState hMOneInputOPData_InputState = hMOneInputOPData.inputState;
        if (hMOneInputOPData_InputState != null) {
            builderNewBuilder.setInputState(GSSDK.OneInputOPData.InputState.forNumber(hMOneInputOPData_InputState.getSate()));
        }
        if (hMOneInputOPData.mousePosition != null) {
            GSSDK.CoordinatePos.Builder builderNewBuilder2 = GSSDK.CoordinatePos.newBuilder();
            builderNewBuilder2.setX(hMOneInputOPData.mousePosition.x);
            builderNewBuilder2.setY(hMOneInputOPData.mousePosition.y);
            builderNewBuilder.setPosMouse(builderNewBuilder2);
        }
        if (hMOneInputOPData.cursorPosition != null) {
            GSSDK.CoordinatePos.Builder builderNewBuilder3 = GSSDK.CoordinatePos.newBuilder();
            builderNewBuilder3.setX(hMOneInputOPData.cursorPosition.x);
            builderNewBuilder3.setY(hMOneInputOPData.cursorPosition.y);
            builderNewBuilder.setPosCursor(builderNewBuilder3);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        return builderNewBuilder.build();
    }

    public static byte[] getFileDownloadData(String str, String str2, int i10) {
        GSSDK.FileDownload.Builder builderNewBuilder = GSSDK.FileDownload.newBuilder();
        builderNewBuilder.setName(str);
        if (!TextUtils.isEmpty(str2)) {
            builderNewBuilder.setPath(str2);
        }
        builderNewBuilder.setType(i10);
        return getContent(PROTO_BUSINESS_CODE_6710, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getFileUploadData(FileUploadBean fileUploadBean) {
        GSSDK.FileUpload.Builder builderNewBuilder = GSSDK.FileUpload.newBuilder();
        builderNewBuilder.setName(fileUploadBean.name);
        builderNewBuilder.setType(fileUploadBean.type);
        if (!TextUtils.isEmpty(fileUploadBean.md5)) {
            builderNewBuilder.setMd5(fileUploadBean.md5);
        }
        builderNewBuilder.setSize((int) fileUploadBean.size);
        builderNewBuilder.setTotalBlocks((int) fileUploadBean.totalBlocks);
        builderNewBuilder.setBlockIndex((int) fileUploadBean.blockIndex);
        builderNewBuilder.setBlockSize(fileUploadBean.blockSize);
        if (!TextUtils.isEmpty(fileUploadBean.md5)) {
            builderNewBuilder.setBlockMd5(fileUploadBean.blockMd5);
        }
        builderNewBuilder.setBlockData(ByteString.copyFrom(fileUploadBean.blockData));
        if (!TextUtils.isEmpty(fileUploadBean.cloudPath)) {
            builderNewBuilder.setPath(fileUploadBean.cloudPath);
        }
        return getContent(PROTO_BUSINESS_CODE_6700, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getGamePadData(int i10, String str, int i11) {
        LogUtils.i(TAG, "getGamePadData:" + i10);
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_BUTTONS);
        builderNewBuilder.setValue(i10);
        if (i11 >= 0) {
            builderNewBuilder.setXinputUserIndex(i11);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder2.build().toByteArray());
    }

    public static byte[] getGamePadLTData(int i10, String str, int i11) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_LEFT_TRIGGER);
        builderNewBuilder.setValue(i10);
        if (i11 >= 0) {
            builderNewBuilder.setXinputUserIndex(i11);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        byte[] byteArray = builderNewBuilder2.build().toByteArray();
        String string = builderNewBuilder2.build().toString();
        LogUtils.d(TAG, "getGamePadLTData bodyStr:" + StringUtils.replaceSpecialStr(string));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, byteArray);
    }

    public static byte[] getGamePadRTData(int i10, String str, int i11) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_RIGHT_TRIGGER);
        builderNewBuilder.setValue(i10);
        if (i11 >= 0) {
            builderNewBuilder.setXinputUserIndex(i11);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        byte[] byteArray = builderNewBuilder2.build().toByteArray();
        String string = builderNewBuilder2.build().toString();
        LogUtils.i(TAG, "getGamePadRTData:" + StringUtils.replaceSpecialStr(string));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, byteArray);
    }

    public static byte[] getGamePadStickData(Point point, String str, int i10) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LX);
        builderNewBuilder.setValue(point.x);
        if (i10 >= 0) {
            builderNewBuilder.setXinputUserIndex(i10);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        GSSDK.OneInputOPData.Builder builderNewBuilder3 = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder3.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY);
        builderNewBuilder3.setValue(point.y);
        if (i10 >= 0) {
            builderNewBuilder3.setXinputUserIndex(i10);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder3.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder3);
        builderNewBuilder2.addOpList(builderNewBuilder3.build());
        byte[] byteArray = builderNewBuilder2.build().toByteArray();
        String string = builderNewBuilder2.build().toString();
        LogUtils.i(TAG, "getGamePadStickData:" + StringUtils.replaceSpecialStr(string));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, byteArray);
    }

    public static byte[] getGamepadStatusData(String str, int i10, GSSDK.GamepadState.State state) {
        String str2 = TAG;
        LogUtils.d(str2, "getGamepadStatusData=inputDevice= state:" + state + " verdorId:" + str + " index:" + i10);
        GSSDK.IMEStatusNotify.Builder builderNewBuilder = GSSDK.IMEStatusNotify.newBuilder();
        builderNewBuilder.setTerminalType(GSSDK.ClientType.ANDROID);
        GSSDK.GamepadState.Builder builderNewBuilder2 = GSSDK.GamepadState.newBuilder();
        builderNewBuilder2.setVendor(str);
        builderNewBuilder2.setIndex(i10);
        builderNewBuilder2.setState(state);
        builderNewBuilder.setGamepadState(builderNewBuilder2.build());
        LogUtils.d(str2, "inputDevice: " + builderNewBuilder.build());
        return getContent(PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getGamepadThumbRData(Point point, String str, int i10) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_RX);
        builderNewBuilder.setValue(point.x);
        if (i10 >= 0) {
            builderNewBuilder.setXinputUserIndex(i10);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        GSSDK.OneInputOPData.Builder builderNewBuilder3 = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder3.setInputOp(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_RY);
        builderNewBuilder3.setValue(point.y);
        if (i10 >= 0) {
            builderNewBuilder3.setXinputUserIndex(i10);
        }
        if (!TextUtils.isEmpty(str)) {
            builderNewBuilder3.setVendor(str);
        }
        setSerialNumberAndTimestamp(builderNewBuilder3);
        builderNewBuilder2.addOpList(builderNewBuilder3.build());
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder2.build().toByteArray());
    }

    public static byte[] getIMStatusData(GSSDK.StatusType statusType) {
        LogUtils.d(TAG, "statusType:" + statusType);
        GSSDK.IMEStatusNotify.Builder builderNewBuilder = GSSDK.IMEStatusNotify.newBuilder();
        builderNewBuilder.setTerminalType(GSSDK.ClientType.ANDROID);
        builderNewBuilder.setStatusType(statusType);
        return getContent(PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getMouseWheelData(int i10) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.OP_MOUSE_WHEEL);
        builderNewBuilder.setValue(i10);
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        byte[] byteArray = builderNewBuilder2.build().toByteArray();
        String string = builderNewBuilder2.build().toString();
        LogUtils.i(TAG, "getMouseWheelData:" + StringUtils.replaceSpecialStr(string));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, byteArray);
    }

    public static byte[] getPrivateData(String str, String str2, String str3) {
        GSSDK.GameSDKData.Builder builderNewBuilder = GSSDK.GameSDKData.newBuilder();
        builderNewBuilder.setUserId(str2);
        builderNewBuilder.setSdkData(str3);
        return getContent(PROTO_BUSINESS_CODE_64C0, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getResetInputTimerData(int i10) {
        LogUtils.d(TAG, "getResetInputTimerData:" + i10);
        GSSDK.ResetNoInputTimer.Builder builderNewBuilder = GSSDK.ResetNoInputTimer.newBuilder();
        builderNewBuilder.setValue(i10);
        return getContent(PROTO_BUSINESS_CODE_6170, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getSendMouseData(int i10, int i11, int i12, int i13, GSSDK.OneInputOPData.PositionMode positionMode, GSSDK.OneInputOPData.InputOP inputOP, GSSDK.OneInputOPData.InputState inputState) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setPosMode(positionMode);
        builderNewBuilder.setInputOp(inputOP);
        builderNewBuilder.setValue(0);
        builderNewBuilder.setInputState(inputState);
        GSSDK.CoordinatePos.Builder builderNewBuilder2 = GSSDK.CoordinatePos.newBuilder();
        builderNewBuilder2.setX(i10);
        builderNewBuilder2.setY(i11);
        builderNewBuilder.setPosMouse(builderNewBuilder2);
        builderNewBuilder2.setX(i12);
        builderNewBuilder2.setY(i13);
        builderNewBuilder.setPosCursor(builderNewBuilder2);
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder3 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder3.addOpList(oneInputOPDataBuild);
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder3.build().toByteArray());
    }

    public static byte[] getShellCommandData(String str) {
        GSSDK.ShellCommands.Builder builderNewBuilder = GSSDK.ShellCommands.newBuilder();
        builderNewBuilder.setContent(str);
        return getContent(PROTO_BUSINESS_CODE_6720, builderNewBuilder.build().toByteArray());
    }

    public static byte[] getTouchData(List<GSSDK.OneInputOPData.PointerProperties> list, GSSDK.OneInputOPData.InputOP inputOP, int i10) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        if (list != null && !list.isEmpty()) {
            GSSDK.OneInputOPData.PointerProperties pointerProperties = list.get(0);
            int xPos = pointerProperties.getXPos();
            int yPos = pointerProperties.getYPos();
            GSSDK.CoordinatePos.Builder builderNewBuilder2 = GSSDK.CoordinatePos.newBuilder();
            builderNewBuilder2.setX(xPos);
            builderNewBuilder2.setY(yPos);
            builderNewBuilder.setPosCursor(builderNewBuilder2);
            builderNewBuilder.setPosMouse(builderNewBuilder2);
        }
        builderNewBuilder.setInputOp(inputOP);
        GSSDK.OneInputOPData.TouchEvent.Builder builderNewBuilder3 = GSSDK.OneInputOPData.TouchEvent.newBuilder();
        builderNewBuilder3.setPointerCount(i10);
        builderNewBuilder3.addAllPointerProperties(list);
        builderNewBuilder.setTouchEvent(builderNewBuilder3);
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.InputOPData.Builder builderNewBuilder4 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder4.addOpList(builderNewBuilder);
        byte[] byteArray = builderNewBuilder4.build().toByteArray();
        String string = builderNewBuilder4.build().toString();
        LogUtils.i(TAG, "getTouchData:" + StringUtils.replaceSpecialStr(string));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, byteArray);
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

    public static byte[] sendCapLockStatus(GSSDK.OneInputOPData.InputState inputState) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(GSSDK.OneInputOPData.InputOP.forNumber(20));
        builderNewBuilder.setValue(0);
        builderNewBuilder.setInputState(inputState);
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder2.build().toByteArray());
    }

    public static byte[] sendClipBoardText(String str) {
        GSSDK.ClipBoardData.Builder builderNewBuilder = GSSDK.ClipBoardData.newBuilder();
        builderNewBuilder.setData(ByteString.copyFrom(str.getBytes()));
        return getContent(PROTO_BUSINESS_CODE_64G0, builderNewBuilder.build().toByteArray());
    }

    public static byte[] sendContent(String str) {
        GSSDK.InputMethodChData.Builder builderNewBuilder = GSSDK.InputMethodChData.newBuilder();
        builderNewBuilder.setInputBuf(ByteString.copyFrom(str.getBytes()));
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_INPUT, builderNewBuilder.build().toByteArray());
    }

    public static byte[] sendKeyboard(GSSDK.OneInputOPData.InputOP inputOP, GSSDK.OneInputOPData.InputState inputState) {
        GSSDK.OneInputOPData.Builder builderNewBuilder = GSSDK.OneInputOPData.newBuilder();
        builderNewBuilder.setInputOp(inputOP);
        builderNewBuilder.setValue(0);
        builderNewBuilder.setInputState(inputState);
        setSerialNumberAndTimestamp(builderNewBuilder);
        GSSDK.OneInputOPData oneInputOPDataBuild = builderNewBuilder.build();
        GSSDK.InputOPData.Builder builderNewBuilder2 = GSSDK.InputOPData.newBuilder();
        builderNewBuilder2.addOpList(oneInputOPDataBuild);
        return getContent(PROTO_BUSINESS_CODE_KEYBOARD_KEY, builderNewBuilder2.build().toByteArray());
    }

    private static void setSerialNumberAndTimestamp(GSSDK.OneInputOPData.Builder builder) {
    }
}
