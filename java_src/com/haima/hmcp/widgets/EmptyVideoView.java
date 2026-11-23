package com.haima.hmcp.widgets;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.ColorMode;
import com.haima.hmcp.beans.Control;
import com.haima.hmcp.beans.ControlInfo;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.HmInputOp;
import com.haima.hmcp.beans.IntentExtraData;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.IntroImageInfo;
import com.haima.hmcp.beans.PlayStreamPayloadData;
import com.haima.hmcp.beans.PlayTestData;
import com.haima.hmcp.beans.RemoteCaptureParameters;
import com.haima.hmcp.beans.ResolutionInfo;
import com.haima.hmcp.beans.ResolutionInfoExtra;
import com.haima.hmcp.beans.SwitchStreamTypeData;
import com.haima.hmcp.beans.TipsInfo;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.business.TransferHelper;
import com.haima.hmcp.device.input.enums.KeyType;
import com.haima.hmcp.enums.CloudFileProtocol;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.enums.ELivingCapabilityStatus;
import com.haima.hmcp.enums.GamepadType;
import com.haima.hmcp.enums.GyroscopeActivateMode;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.StreamingMode;
import com.haima.hmcp.enums.TouchMode;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.listeners.AudioRecordSourceCallback;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.CloudOperationListener;
import com.haima.hmcp.listeners.ColorModeListener;
import com.haima.hmcp.listeners.DownloadCallback;
import com.haima.hmcp.listeners.GetCloudIMECallback;
import com.haima.hmcp.listeners.HmFrameCallback;
import com.haima.hmcp.listeners.HmInputOpListener;
import com.haima.hmcp.listeners.HmStreamerIPCallback;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.HmcpUIListener;
import com.haima.hmcp.listeners.IOperationDelayCallback;
import com.haima.hmcp.listeners.ISeiListener;
import com.haima.hmcp.listeners.IStreamingModeCallback;
import com.haima.hmcp.listeners.IVideoDelayCallback;
import com.haima.hmcp.listeners.OnCloudImageListListener;
import com.haima.hmcp.listeners.OnContronListener;
import com.haima.hmcp.listeners.OnEnableHighBitrateListener;
import com.haima.hmcp.listeners.OnJoinBattleListener;
import com.haima.hmcp.listeners.OnLivingListener;
import com.haima.hmcp.listeners.OnRelaunchGameListener;
import com.haima.hmcp.listeners.OnRequestAliveListener;
import com.haima.hmcp.listeners.OnSendMessageListener;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.listeners.OnStreamTypeChangeListener;
import com.haima.hmcp.listeners.OnSwitchStreamTypeListener;
import com.haima.hmcp.listeners.OnUpdataGameUIDListener;
import com.haima.hmcp.listeners.OnUpdateInstanceTimeListener;
import com.haima.hmcp.listeners.QueryCallback;
import com.haima.hmcp.listeners.RemoteCaptureListener;
import com.haima.hmcp.listeners.SearchCallback;
import com.haima.hmcp.listeners.StartRecordStreamListener;
import com.haima.hmcp.listeners.StopRecordStreamListener;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.listeners.SwitchIMECallback;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WorkingFileCallback;
import com.haima.hmcp.rtmp.widgets.IHmcpIJKVideoView;
import com.haima.hmcp.widgets.beans.VirtualOperateType;
import com.haima.hmcp.widgets.virtualkey.VirtualKeyboardSurfaceView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import tv.haima.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class EmptyVideoView implements IHmcpVideoView {
    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void backToGame() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void batchUpload(List<CloudFile> list, BatchCloudOperationListener batchCloudOperationListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelDownload() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelUpload() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void changeStreamType(int i10, PlayStreamPayloadData playStreamPayloadData) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int checkBitmap(Bitmap bitmap, float f10) {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void connectAccProxy(String str, int i10, String str2, String str3) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void controlPlay(Control control, OnContronListener onContronListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void disableGyroscope() {
        b0.a(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disableVibrator(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disconnectAccProxy() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void disconnectWSTest() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void distributeControlPermit(List<ControlInfo> list, OnContronListener onContronListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(CloudFile cloudFile) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void enableGyroscope(GyroscopeActivateMode gyroscopeActivateMode) {
        b0.b(this, gyroscopeActivateMode);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enableHighBitrate(boolean z10, OnEnableHighBitrateListener onEnableHighBitrateListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void enableVirtualKeyBoardView(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void enterVirDeviceEditMode(VirtualOperateType virtualOperateType, boolean z10) {
        b0.c(this, virtualOperateType, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void entryQueue() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void exitQueue() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getAppName() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getBitRate() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getButtonMappingMode() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List getButtonMappings() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VideoDelayInfo getClockDiffVideoLatencyInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getCloudFileStatus(CloudOperation cloudOperation, CloudFileProtocol cloudFileProtocol) {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getCloudImeType(GetCloudIMECallback getCloudIMECallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public CloudPlayInfo getCloudPlayInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getCloudPlayStatusCode() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getCurResolution() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getCurrentInputMode() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ float getFunctionSensitivity() {
        return b0.d(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ GameArchitectureType getGameArchitectureType() {
        return b0.e(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public HmcpPlayerListener getHmcpPlayerListener() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public IMediaPlayer getIMediaPlayer(boolean z10) {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getInputUrl() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getInstanceAccessUrl() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public IntroImageInfo getIntroImageInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public long getLastUserOperationTimestamp() {
        return 0L;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ELivingCapabilityStatus getLivingCapabilityStatus() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public HashMap<String, String> getMetaInfos() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ float getMouseSensitivity() {
        return b0.f(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ArrayList getNetText() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ VirtualOperateType getOperateType() {
        return b0.h(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getPinCode(OnContronListener onContronListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getQRCodeData() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public VideoDelayInfo getReportDelayInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2) {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getResolutionInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List<ResolutionInfo> getResolutionList() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getScreenHeight() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ScreenOrientation getScreenOrientation() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getScreenWidth() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public ResolutionInfo getSetResolution() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public Bitmap getShortcut() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getStreamUrl() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public String getStreamingDomain() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public List<TipsInfo> getTipsInfo() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ TouchMode getTouchMode() {
        return b0.i(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public TransferHelper getTransferDelegate() {
        return null;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int getVideoLatency() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ float getVirtualDeviceAlpha() {
        return b0.j(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean getVirtualKeyVibrate() {
        return b0.k(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void getWorkingFile(CloudOperation cloudOperation, WorkingFileCallback workingFileCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void handlePermissionResult(String str, boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void hideKeyboard() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void imageEnhancement(boolean z10, float f10) {
        b0.l(this, z10, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean inputText(String str) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isHandleInputEvent() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isLoadingShow() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isNativeDpadGame() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isNetworkOk() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isOnSound() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isSwitchAuto() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isTurnOffVideo() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isVirtualKeyBoardViewVisible() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean isVirtualStickShow() {
        return b0.m(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean isX86Game() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void joinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean loadKeyboardConfigFromJson(String str, boolean z10) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void loadSwitchStreamTypeData(SwitchStreamTypeData switchStreamTypeData) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onDestroy() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onExitGame() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onPause() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onRestart(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onResume() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onStart() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onStop() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void onSwitchResolution(String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void pauseGame() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void play() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void playForTesting(PlayTestData playTestData) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void queryCloudFile(QueryCallback queryCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void queryControlUsers(OnContronListener onContronListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void reconnection() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void refreshTransferToken(int i10, String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void relaunchGame(OnRelaunchGameListener onRelaunchGameListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void release() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void releaseNotStop() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void remoteCapture(RemoteCaptureParameters remoteCaptureParameters, RemoteCaptureListener remoteCaptureListener) {
        b0.n(this, remoteCaptureParameters, remoteCaptureListener);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void reportFinishInfo(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void requestKeepAlive(long j10, OnRequestAliveListener onRequestAliveListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void requestKeyFrame() {
        b0.o(this);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean requestRemoteImageList(int i10, int i11, OnCloudImageListListener onCloudImageListListener) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void requestStopKeepAlive(OnRequestAliveListener onRequestAliveListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int resetInputTimer() {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void restartGame(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void searchCloudFile(SearchCallback searchCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendAudioData(byte[] bArr) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendCustomKeycode(HMInputOpData hMInputOpData) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendInputOp(ArrayList<HmInputOp> arrayList, HmInputOpListener hmInputOpListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendKeyEvent(KeyType keyType) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendKeyboardEvent(String str, int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendMessage(String str, MessageType messageType, OnSendMessageListener onSendMessageListener) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendMotionEvent(int i10, FPoint fPoint) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void sendSceneStopMessage(long j10, String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean sendWsMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAttachContext(Context context) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAudioMute(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setAudioRecordCallback(AudioRecordSourceCallback audioRecordSourceCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setAutoShowIME(boolean z10) {
        b0.p(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setButtonMapping(ButtonMappings buttonMappings) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setButtonMappingMode(int i10) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setChangeStreamStatus(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCloseStream(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCloudOperationListener(CloudOperationListener cloudOperationListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setConfigInfo(String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setControlListener(OnContronListener onContronListener) {
        b0.q(this, onContronListener);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCursorSize(int i10, int i11) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setCustomVideoView(IHmcpIJKVideoView iHmcpIJKVideoView) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setDevicePixelRatio(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setDpadMouseMoveStep(float f10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setExtraData(IntentExtraData intentExtraData) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setFixedGamepadType(GamepadType gamepadType) {
        b0.s(this, gamepadType);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setFunctionSensitivity(float f10) {
        b0.t(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setGyroToMouseXSensitivity(int i10) {
        b0.u(this, i10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setGyroToMouseYSensitivity(int i10) {
        b0.v(this, i10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setHandleInputEvent(boolean z10) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmFrameCallback(HmFrameCallback hmFrameCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setHmcpPlayerListener(HmcpPlayerListener hmcpPlayerListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setImageSize() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setInitMousePoint(float f10, float f11) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setKeyPressedVibrator(boolean z10) {
        b0.w(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setKeyboardMapperGamepadEnable(boolean z10) {
        b0.x(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setLoadingShow(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseBitmap(Bitmap bitmap) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseIcon(String str, int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean setMouseMoveStep(int i10) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseOffSet(int i10, int i11) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setMouseOffSetRatio(float f10, float f11) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setMouseSensitivity(float f10) {
        b0.y(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setPCMouseMode(boolean z10) {
        b0.z(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setPhysicalMouseViewOnSensitivity(float f10) {
        b0.A(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setPlayerState(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenHeight(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenOrientation(ScreenOrientation screenOrientation) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setScreenWidth(int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setSeiListener(ISeiListener iSeiListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setShowVirtualRawKey(boolean z10) {
        b0.B(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setStreamTypeChangeListener(OnStreamTypeChangeListener onStreamTypeChangeListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setStreamingCallback(StreamingCallback streamingCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setStreamingMode(StreamingMode streamingMode, IStreamingModeCallback iStreamingModeCallback) {
        b0.C(this, streamingMode, iStreamingModeCallback);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean setTouchMode(TouchMode touchMode) {
        return b0.D(this, touchMode);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setTouchesMoveMapperRockerEnable(boolean z10) {
        b0.E(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setUIListener(HmcpUIListener hmcpUIListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setUserInfo(UserInfo userInfo) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVideoDelayCallback(IVideoDelayCallback iVideoDelayCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVirtualBaseScale(float f10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setVirtualKeyboardSurfaceView(VirtualKeyboardSurfaceView virtualKeyboardSurfaceView) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setVirtualStickAlpha(float f10) {
        b0.G(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void setWsMessageListener(OnSendWsMessageListener onSendWsMessageListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setXAxisReverse(boolean z10) {
        b0.H(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setYAxisReverse(boolean z10) {
        b0.I(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean showVirtualKeyboard(boolean z10) {
        return b0.J(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean showVirtualStick(boolean z10) {
        return b0.K(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startLiving(String str, String str2, OnLivingListener onLivingListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startPlay() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startRecord() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startRecordStream(StartRecordStreamListener startRecordStreamListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean startStreaming() {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopAndDismiss(Activity activity, int i10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopLiving(String str, OnLivingListener onLivingListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopRecord() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void stopRecordStream(StopRecordStreamListener stopRecordStreamListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean switchBandWidthDetection(boolean z10) {
        return b0.L(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchIME(SwitchIMECallback switchIMECallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchInputMode() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean switchKeyboard(boolean z10) {
        return b0.M(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ boolean switchLocalKeyboard(boolean z10) {
        return b0.N(this, z10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchMobileNetworkTransport(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void switchStreamType(StreamType streamType, OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void turnOffSound() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void turnOnSound() {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean updateCTokenTimeStamp(String str, Long l10) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateCloudFile(CloudOperation cloudOperation, List<CloudFile> list, UpdateCallback updateCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateGameUID(Bundle bundle, OnUpdataGameUIDListener onUpdataGameUIDListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void updateInstanceTime(int i10, int i11, OnUpdateInstanceTimeListener onUpdateInstanceTimeListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void upload(CloudFile cloudFile) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void cancelDownload(CloudFile cloudFile, CancelCallback cancelCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void getMouseSensitivity(float f10) {
        b0.g(this, f10);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11) {
        return false;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void play(Bundle bundle) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void release(String str) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public int resetInputTimer(boolean z10) {
        return 0;
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public /* synthetic */ void setDpadMouseMoveStep(Float f10, Float f11) {
        b0.r(this, f10, f11);
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void startPlay(boolean z10) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void upload(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public void download(List<CloudFile> list, DownloadMode downloadMode, DownloadCallback downloadCallback) {
    }

    @Override // com.haima.hmcp.widgets.IBaseHmcpVideoView
    public boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11, ResolutionInfoExtra resolutionInfoExtra) {
        return false;
    }
}
