package com.haima.hmcp.business;

import android.content.Context;
import android.hardware.input.InputManager;
import android.text.TextUtils;
import android.view.InputDevice;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.device.input.send.DeviceInputSend;
import com.haima.hmcp.utils.HmInputDeviceManager;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GamePadManager {
    public static final String GAMEPAD_CONNECTED = "startGamePad%s:";
    public static final String GAMEPAD_DISCONNECTED = "stopGamePad%s:";
    public static final String GAMEPAD_STATUS_CONNECTED = "1";
    public static final String GAMEPAD_STATUS_DISCONNECTED = "0";
    private static final int NOT_SUPPORT = -1;
    public static final int SUPPORT_MAX_COUNT = 2;
    private static final String TAG = "GamePadManager";
    private static volatile GamePadManager sGamePadManager;
    private boolean isInited;
    private InputDevice mExternalDevice;
    private InputManager mInputManager;
    private List<InputChangeListener> mListeners;
    private InputDevice[] mGamePadDevices = new InputDevice[2];
    protected boolean[] gamepadEventDetected = new boolean[2];
    private List<InputDevice> shareDefaultIndexGamePadList = new ArrayList();
    InputManager.InputDeviceListener inputDeviceListener = new InputManager.InputDeviceListener() { // from class: com.haima.hmcp.business.GamePadManager.1
        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceAdded(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("=== onInputDeviceAdded === ");
            sb2.append(i10);
            InputDevice device = InputDevice.getDevice(i10);
            if (!GamePadManager.this.isJoyStick(device)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("=== onInputDeviceAdded === ");
                sb3.append(i10);
                sb3.append(" is not joy stick: ");
                sb3.append(device);
                return;
            }
            GamePadManager.this.addGamePadDevice(device);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("=== onInputDeviceAdded === ");
            sb4.append(i10);
            sb4.append("  ");
            sb4.append(device.getDescriptor());
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceChanged(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("=== onInputDeviceChanged === ");
            sb2.append(i10);
            InputDevice inputDeviceFindGamePadDevice = GamePadManager.this.findGamePadDevice(i10);
            if (inputDeviceFindGamePadDevice == null && (inputDeviceFindGamePadDevice = GamePadManager.this.findDeviceFromShareDefaultIndexList(i10)) != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("=== onInputDeviceRemoved === find ");
                sb3.append(i10);
                sb3.append(" from share index list");
            }
            if (inputDeviceFindGamePadDevice == null) {
                InputDevice device = InputDevice.getDevice(i10);
                if (!GamePadManager.this.isJoyStick(device)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("=== onInputDeviceChanged === ");
                    sb4.append(i10);
                    sb4.append(" is not joy stick: ");
                    sb4.append(device);
                    return;
                }
                StringBuilder sb5 = new StringBuilder();
                sb5.append("=== onInputDeviceChanged === ");
                sb5.append(i10);
                sb5.append(",  ");
                sb5.append(device);
                GamePadManager.this.addGamePadDevice(device);
            }
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceRemoved(int i10) {
            InputDevice inputDeviceFindGamePadDevice = GamePadManager.this.findGamePadDevice(i10);
            if (inputDeviceFindGamePadDevice == null && (inputDeviceFindGamePadDevice = GamePadManager.this.findDeviceFromShareDefaultIndexList(i10)) != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("=== onInputDeviceRemoved === find ");
                sb2.append(i10);
                sb2.append(" from share index list");
            }
            if (inputDeviceFindGamePadDevice == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("=== onInputDeviceRemoved === ");
                sb3.append(i10);
                sb3.append(" not find");
                return;
            }
            GamePadManager.this.removeGamePadDevice(i10);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("=== onInputDeviceRemoved === ");
            sb4.append(i10);
            sb4.append("  ");
            sb4.append(inputDeviceFindGamePadDevice.getDescriptor());
        }
    };

    public interface InputChangeListener {
        void onDeviceAdded(InputDevice inputDevice);

        void onDeviceRemoved(InputDevice inputDevice);

        boolean onEvent(String str, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void addGamePadDevice(InputDevice inputDevice) {
        Integer numValueOf;
        if (isContainsDevice(inputDevice.getId())) {
            return;
        }
        if (isJiaJiaDevice(inputDevice)) {
            if (this.mExternalDevice != null) {
                LogUtils.d(TAG, "addGamePadDevice:isConnectedJiaJiaDevice return");
                return;
            }
            this.mExternalDevice = inputDevice;
        }
        int i10 = 0;
        while (true) {
            InputDevice[] inputDeviceArr = this.mGamePadDevices;
            if (i10 >= inputDeviceArr.length) {
                numValueOf = null;
                break;
            }
            if (inputDeviceArr[i10] == null) {
                inputDeviceArr[i10] = inputDevice;
                numValueOf = Integer.valueOf(i10);
                if (i10 > 0 || getShareDefaultIndexListSize() == 0) {
                    notifyDeviceAdd(inputDevice);
                }
                LogUtils.d(TAG, "addJoyDevice === setValueAt " + i10 + "  " + inputDevice.getName() + " id:" + inputDevice.getId());
                break;
            }
            i10++;
        }
        if (numValueOf == null) {
            LogUtils.d(TAG, "addJoyDevice === " + inputDevice.getName() + " id:" + inputDevice.getId() + " add to share index list");
            addToShareDefaultIndexList(inputDevice);
        }
    }

    private void addToShareDefaultIndexList(InputDevice inputDevice) {
        if (inputDevice == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (InputDevice inputDevice2 : this.shareDefaultIndexGamePadList) {
            if (inputDevice2 != null && inputDevice2.getId() == inputDevice.getId()) {
                arrayList.add(inputDevice);
            }
        }
        if (arrayList.isEmpty()) {
            this.shareDefaultIndexGamePadList.add(inputDevice);
        }
    }

    private void checkInited() {
    }

    private int convertNum2Index(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return Integer.parseInt(str) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputDevice findDeviceFromShareDefaultIndexList(int i10) {
        for (InputDevice inputDevice : this.shareDefaultIndexGamePadList) {
            if (inputDevice != null && inputDevice.getId() == i10) {
                return inputDevice;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputDevice findGamePadDevice(int i10) {
        for (int i11 = 0; i11 < this.mGamePadDevices.length; i11++) {
            if (isContainsDeviceAtIndex(i10, i11)) {
                return this.mGamePadDevices[i11];
            }
        }
        return null;
    }

    public static GamePadManager getInstance() {
        if (sGamePadManager == null) {
            synchronized (GamePadManager.class) {
                if (sGamePadManager == null) {
                    sGamePadManager = new GamePadManager();
                }
            }
        }
        return sGamePadManager;
    }

    private int getShareDefaultIndexListSize() {
        return this.shareDefaultIndexGamePadList.size();
    }

    private void handleRemoveDevice(int i10) {
        InputDevice inputDeviceFindGamePadDevice = findGamePadDevice(i10);
        if (inputDeviceFindGamePadDevice == null) {
            InputDevice inputDeviceFindDeviceFromShareDefaultIndexList = findDeviceFromShareDefaultIndexList(i10);
            if (inputDeviceFindDeviceFromShareDefaultIndexList != null) {
                if (getShareDefaultIndexListSize() == 1 && this.mGamePadDevices[0] == null) {
                    notifyDeviceRemove(inputDeviceFindDeviceFromShareDefaultIndexList);
                }
                removeFromShareDefaultIndexList(inputDeviceFindDeviceFromShareDefaultIndexList.getId());
                return;
            }
            return;
        }
        if (getGamePadIndex(inputDeviceFindGamePadDevice) != 0) {
            LogUtils.d(TAG, "removeGamePadDevice, remove other index device");
            notifyDeviceRemove(inputDeviceFindGamePadDevice);
        } else if (getShareDefaultIndexListSize() == 0) {
            LogUtils.d(TAG, "removeGamePadDevice, remove 0 index");
            notifyDeviceRemove(inputDeviceFindGamePadDevice);
        }
    }

    private void initGamePad() {
        Arrays.fill(this.mGamePadDevices, (Object) null);
        int[] inputDeviceIds = this.mInputManager.getInputDeviceIds();
        LogUtils.d(TAG, "initGamePad: " + inputDeviceIds.length);
        for (int i10 : inputDeviceIds) {
            InputDevice inputDevice = this.mInputManager.getInputDevice(i10);
            if (isJoyStick(inputDevice)) {
                addGamePadDevice(inputDevice);
                LogUtils.d(TAG, "getInputDevices === " + inputDevice.getName() + " id:" + inputDevice.getId());
            }
        }
    }

    private boolean isContainsDevice(int i10) {
        for (int i11 = 0; i11 < this.mGamePadDevices.length; i11++) {
            if (isContainsDeviceAtIndex(i10, i11)) {
                return true;
            }
        }
        return false;
    }

    private boolean isContainsDeviceAtIndex(int i10, int i11) {
        InputDevice inputDevice;
        InputDevice[] inputDeviceArr = this.mGamePadDevices;
        return inputDeviceArr != null && inputDeviceArr.length >= i11 + 1 && (inputDevice = inputDeviceArr[i11]) != null && inputDevice.getId() == i10;
    }

    private static boolean isJiaJiaDevice(InputDevice inputDevice) {
        if (inputDevice == null) {
            return false;
        }
        try {
            if (inputDevice.getProductId() == 4096 && inputDevice.getVendorId() == 1552) {
                return true;
            }
            if (inputDevice.getProductId() == 4147 && inputDevice.getVendorId() == 1555) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isJoyStick(InputDevice inputDevice) {
        return HmInputDeviceManager.isJoyStick(inputDevice);
    }

    private void notifyDeviceAdd(InputDevice inputDevice) {
        List<InputChangeListener> list = this.mListeners;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (InputChangeListener inputChangeListener : this.mListeners) {
            if (inputChangeListener != null) {
                inputChangeListener.onDeviceAdded(inputDevice);
            }
        }
    }

    private void notifyDeviceRemove(InputDevice inputDevice) {
        List<InputChangeListener> list = this.mListeners;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (InputChangeListener inputChangeListener : this.mListeners) {
            if (inputChangeListener != null) {
                inputChangeListener.onDeviceRemoved(inputDevice);
            }
        }
    }

    private void removeFromShareDefaultIndexList(int i10) {
        InputDevice next;
        if (this.shareDefaultIndexGamePadList.isEmpty()) {
            return;
        }
        Iterator<InputDevice> it2 = this.shareDefaultIndexGamePadList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            if (next != null && next.getId() == i10) {
                break;
            }
        }
        if (next != null) {
            this.shareDefaultIndexGamePadList.remove(next);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void removeGamePadDevice(int i10) {
        handleRemoveDevice(i10);
        for (int i11 = 0; i11 < this.mGamePadDevices.length; i11++) {
            if (isContainsDeviceAtIndex(i10, i11)) {
                LogUtils.d(TAG, "removeJoyDevice === removeAt " + i11 + "  " + this.mGamePadDevices[i11].getName());
                if (isJiaJiaDevice(this.mGamePadDevices[i11])) {
                    this.mExternalDevice = null;
                }
                this.mGamePadDevices[i11] = null;
                break;
            }
        }
    }

    private void sendStartAllGamepad(IWebSocket iWebSocket) {
        for (InputDevice inputDevice : this.mGamePadDevices) {
            if (inputDevice != null) {
                sendStartGamepad(iWebSocket, inputDevice);
            }
        }
    }

    public Integer findIndexFromShareDefaultIndexList(InputDevice inputDevice) {
        if (inputDevice == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.shareDefaultIndexGamePadList.size(); i10++) {
            InputDevice inputDevice2 = this.shareDefaultIndexGamePadList.get(i10);
            if (inputDevice2 != null && inputDevice2.getId() == inputDevice.getId()) {
                return Integer.valueOf(i10);
            }
        }
        return null;
    }

    public int getGamePadIndex(InputDevice inputDevice) {
        for (int i10 = 0; i10 < this.mGamePadDevices.length; i10++) {
            if (isContainsDeviceAtIndex(inputDevice.getId(), i10)) {
                return i10;
            }
        }
        return -1;
    }

    public String getGamePadNum(InputDevice inputDevice) {
        checkInited();
        if (inputDevice == null) {
            return "";
        }
        int gamePadIndex = getGamePadIndex(inputDevice);
        LogUtils.d(TAG, "getGamePadNum index: " + gamePadIndex + " getDescriptor:" + inputDevice.getDescriptor());
        String strValueOf = gamePadIndex > 0 ? String.valueOf(gamePadIndex + 1) : "";
        LogUtils.d(TAG, "gamePadNum: " + strValueOf + " getDescriptor:" + inputDevice.getDescriptor());
        return strValueOf;
    }

    public InputDevice getmExternalDevice() {
        return this.mExternalDevice;
    }

    public GamePadManager init(Context context) {
        LogUtils.d(TAG, "init called");
        if (context == null) {
            throw new IllegalArgumentException("context must not be null!");
        }
        if (this.isInited) {
            LogUtils.d(TAG, "init already called");
            return this;
        }
        this.mInputManager = (InputManager) context.getSystemService("input");
        initGamePad();
        registerDeviceChangeListener(context, null);
        this.isInited = true;
        return this;
    }

    public void registerDeviceChangeListener(Context context, InputChangeListener inputChangeListener) {
        if (this.mInputManager == null) {
            if (context != null) {
                this.mInputManager = (InputManager) context.getSystemService("input");
            } else {
                CountlyUtil.recordErrorEvent("new mInputManager is failed when registerDeviceChangeListener, cause Context is null");
            }
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (inputChangeListener != null) {
            this.mListeners.add(inputChangeListener);
        }
        InputManager inputManager = this.mInputManager;
        if (inputManager != null) {
            inputManager.registerInputDeviceListener(this.inputDeviceListener, null);
        } else {
            CountlyUtil.recordErrorEvent("Register device listener is failed, case mInputManager is null");
        }
    }

    public boolean sendMessageToInstance(String str, boolean z10) {
        return DeviceInputSend.getInstance().sendData(str, z10);
    }

    public void sendStartGamepad(IWebSocket iWebSocket, InputDevice inputDevice) {
        String gamePadNum = getGamePadNum(inputDevice);
        int iConvertNum2Index = convertNum2Index(gamePadNum);
        if (this.gamepadEventDetected[iConvertNum2Index]) {
            return;
        }
        String str = String.format(GAMEPAD_CONNECTED, gamePadNum);
        LogUtils.d(TAG, "sendStartGamepad: " + str);
        boolean zSendData = DeviceInputSend.getInstance().sendData(str);
        CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "1,msg:" + str + ",sendResult:" + zSendData);
        if (zSendData) {
            this.gamepadEventDetected[iConvertNum2Index] = true;
        }
    }

    public void sendStopAllGamePad(IWebSocket iWebSocket, boolean z10) {
        for (InputDevice inputDevice : this.mGamePadDevices) {
            if (inputDevice != null) {
                sendStopGamePad(iWebSocket, inputDevice, z10);
            }
        }
        this.isInited = false;
        unregisterAllDeviceChangeListener();
        this.mExternalDevice = null;
        this.mInputManager = null;
    }

    public void sendStopGamePad(IWebSocket iWebSocket, InputDevice inputDevice, boolean z10) {
        String gamePadNum = getGamePadNum(inputDevice);
        int iConvertNum2Index = convertNum2Index(gamePadNum);
        if (!z10) {
            this.gamepadEventDetected[iConvertNum2Index] = false;
            LogUtils.d(TAG, "tv_battle->do not send stop GamePad" + gamePadNum);
        }
        String str = String.format(GAMEPAD_DISCONNECTED, gamePadNum);
        if (this.gamepadEventDetected[iConvertNum2Index]) {
            LogUtils.d(TAG, "sendStopGamePad: " + str);
            boolean zSendMessageToInstance = sendMessageToInstance(str, false);
            CountlyUtil.recordEvent(Constants.COUNTYLY_GAMEPAD_STATUS, "0,msg:" + str + ",sendResult:" + zSendMessageToInstance);
            if (zSendMessageToInstance) {
                this.gamepadEventDetected[iConvertNum2Index] = false;
            }
        }
    }

    public void unregisterAllDeviceChangeListener() {
        InputManager inputManager = this.mInputManager;
        if (inputManager != null) {
            inputManager.unregisterInputDeviceListener(this.inputDeviceListener);
        }
        List<InputChangeListener> list = this.mListeners;
        if (list != null) {
            list.clear();
        }
        this.mListeners = null;
    }

    public void unregisterDeviceChangeListener(InputChangeListener inputChangeListener) {
        List<InputChangeListener> list = this.mListeners;
        if (list != null) {
            list.remove(inputChangeListener);
        }
    }

    public void sendStartAllGamepad(IWebSocket iWebSocket, Context context) {
        LogUtils.d(TAG, "sendStartAllGamepad called");
        if (!this.isInited) {
            init(context);
        }
        sendStartAllGamepad(iWebSocket);
    }
}
