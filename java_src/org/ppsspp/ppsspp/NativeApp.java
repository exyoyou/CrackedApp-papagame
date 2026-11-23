package org.ppsspp.ppsspp;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public class NativeApp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f95851a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f95852b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f95853c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f95854d = 10;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f95855e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f95856f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f95857g = 2;

    public static native void ChangeDisk(String str);

    public static native boolean IsEmuExitFinish();

    public static native boolean IsHapticFeedbackEnable();

    public static native boolean IsSoundEnable();

    public static native boolean NeedChangeDisk();

    public static native void RecreateMsg();

    public static native boolean accelerometer(float f10, float f11, float f12);

    public static native void addEditCheat(EditCheatInfo editCheatInfo);

    public static native void applyGameSettingConfig(int i10);

    public static native void audioConfig(int i10, int i11);

    public static native void audioInit();

    public static native void audioShutdown();

    public static native void backbufferResize(int i10, int i11, int i12);

    public static native void beginJoystickEvent();

    public static native void cheatEnable(int i10, int i11);

    public static native boolean checkCheatCode(String str);

    public static native void computeDesiredBackbufferDimensions();

    public static native void deleteEditCheat(int i10);

    public static native void emuRestart();

    public static native void enableEidtCheat(int i10);

    public static native void enableHapticFeedback(boolean z10);

    public static native void enableSound(boolean z10);

    public static native void endJoystickEvent();

    public static native void enterGameSettings(int i10);

    public static native ArrayList<CheatInfo> getCheatList();

    public static native int getDesiredBackbufferHeight();

    public static native int getDesiredBackbufferWidth();

    public static native ArrayList<EditCheatInfo> getEditCheatList();

    public static native void httpPostMemberInfo();

    public static native void init(String str, int i10, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, String str9);

    public static native boolean isAtTopLevel();

    public static native boolean isLandscape();

    public static native void joystickAxis(int i10, int i11, float f10);

    public static native boolean keyDown(int i10, int i11, boolean z10);

    public static native boolean keyUp(int i10, int i11);

    public static native void loadPspDBCheat();

    public static native void loadState(String str);

    public static native void modifyEditCheat(int i10, EditCheatInfo editCheatInfo);

    public static native boolean mouseWheelEvent(float f10, float f11);

    public static native void pause();

    public static native void pauseGame();

    public static native void pushCameraImage(byte[] bArr);

    public static native void pushNewGpsData(float f10, float f11, float f12, float f13, float f14, long j10);

    public static native String queryConfig(String str);

    public static native void resume();

    public static native void resumeGame();

    public static native void saveGameConfig();

    public static native void saveScreenShot(String str);

    public static native void saveState(String str);

    public static native void sendMessage(String str, String str2);

    public static native void setDisplayParameters(int i10, int i11, int i12, float f10);

    public static native void setJson(String str);

    public static native void shutdown();

    public static native boolean touch(float f10, float f11, int i10, int i11);
}
