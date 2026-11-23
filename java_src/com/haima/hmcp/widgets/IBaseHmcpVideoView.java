package com.haima.hmcp.widgets;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
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
public interface IBaseHmcpVideoView {
    void backToGame();

    void batchUpload(List<CloudFile> list, BatchCloudOperationListener batchCloudOperationListener);

    void cancelDownload();

    void cancelDownload(CloudFile cloudFile, CancelCallback cancelCallback);

    void cancelUpload();

    void changeStreamType(int i10, PlayStreamPayloadData playStreamPayloadData);

    int checkBitmap(Bitmap bitmap, float f10);

    void connectAccProxy(String str, int i10, String str2, String str3);

    void controlPlay(Control control, OnContronListener onContronListener);

    void disableGyroscope();

    void disableVibrator(boolean z10);

    void disconnectAccProxy();

    void disconnectWSTest();

    void distributeControlPermit(List<ControlInfo> list, OnContronListener onContronListener);

    void download(CloudFile cloudFile);

    void download(CloudFile cloudFile, CloudOperationListener cloudOperationListener);

    void download(List<CloudFile> list, DownloadMode downloadMode, DownloadCallback downloadCallback);

    void enableGyroscope(GyroscopeActivateMode gyroscopeActivateMode);

    void enableHighBitrate(boolean z10, OnEnableHighBitrateListener onEnableHighBitrateListener);

    void enableVirtualKeyBoardView(boolean z10);

    void enterVirDeviceEditMode(VirtualOperateType virtualOperateType, boolean z10);

    void entryQueue();

    void exitQueue();

    String getAppName();

    int getBitRate();

    int getButtonMappingMode();

    List getButtonMappings();

    VideoDelayInfo getClockDiffVideoLatencyInfo();

    int getCloudFileStatus(CloudOperation cloudOperation, CloudFileProtocol cloudFileProtocol);

    void getCloudImeType(GetCloudIMECallback getCloudIMECallback);

    CloudPlayInfo getCloudPlayInfo();

    String getCloudPlayStatusCode();

    ResolutionInfo getCurResolution();

    int getCurrentInputMode();

    float getFunctionSensitivity();

    GameArchitectureType getGameArchitectureType();

    HmcpPlayerListener getHmcpPlayerListener();

    IMediaPlayer getIMediaPlayer(boolean z10);

    String getInputUrl();

    String getInstanceAccessUrl();

    IntroImageInfo getIntroImageInfo();

    long getLastUserOperationTimestamp();

    ELivingCapabilityStatus getLivingCapabilityStatus();

    HashMap<String, String> getMetaInfos();

    float getMouseSensitivity();

    void getMouseSensitivity(float f10);

    ArrayList getNetText();

    VirtualOperateType getOperateType();

    void getPinCode(OnContronListener onContronListener);

    String getQRCodeData();

    VideoDelayInfo getReportDelayInfo();

    ResolutionInfo getResolution(List<ResolutionInfo> list, String str, String str2);

    ResolutionInfo getResolutionInfo();

    List<ResolutionInfo> getResolutionList();

    int getScreenHeight();

    ScreenOrientation getScreenOrientation();

    int getScreenWidth();

    ResolutionInfo getSetResolution();

    Bitmap getShortcut();

    String getStreamUrl();

    String getStreamingDomain();

    List<TipsInfo> getTipsInfo();

    TouchMode getTouchMode();

    TransferHelper getTransferDelegate();

    int getVideoLatency();

    float getVirtualDeviceAlpha();

    boolean getVirtualKeyVibrate();

    void getWorkingFile(CloudOperation cloudOperation, WorkingFileCallback workingFileCallback);

    void handlePermissionResult(String str, boolean z10);

    void hideKeyboard();

    void imageEnhancement(boolean z10, float f10);

    boolean inputText(String str);

    boolean isHandleInputEvent();

    boolean isLoadingShow();

    boolean isNativeDpadGame();

    boolean isNetworkOk();

    boolean isOnSound();

    boolean isSwitchAuto();

    boolean isTurnOffVideo();

    boolean isVirtualKeyBoardViewVisible();

    boolean isVirtualStickShow();

    boolean isX86Game();

    void joinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener);

    boolean loadKeyboardConfigFromJson(String str, boolean z10);

    void loadSwitchStreamTypeData(SwitchStreamTypeData switchStreamTypeData);

    void onDestroy();

    void onExitGame();

    void onPause();

    void onRestart(int i10);

    void onResume();

    void onStart();

    void onStop();

    void onSwitchResolution(String str);

    boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11);

    boolean onSwitchResolution(int i10, ResolutionInfo resolutionInfo, int i11, ResolutionInfoExtra resolutionInfoExtra);

    void pauseGame();

    void play();

    void play(Bundle bundle);

    void playForTesting(PlayTestData playTestData);

    void queryCloudFile(QueryCallback queryCallback);

    void queryControlUsers(OnContronListener onContronListener);

    void reconnection();

    void refreshTransferToken(int i10, String str);

    void relaunchGame(OnRelaunchGameListener onRelaunchGameListener);

    void release();

    void release(String str);

    void releaseNotStop();

    void remoteCapture(RemoteCaptureParameters remoteCaptureParameters, RemoteCaptureListener remoteCaptureListener);

    void reportFinishInfo(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7);

    void requestKeepAlive(long j10, OnRequestAliveListener onRequestAliveListener);

    void requestKeyFrame();

    boolean requestRemoteImageList(int i10, int i11, OnCloudImageListListener onCloudImageListListener);

    void requestStopKeepAlive(OnRequestAliveListener onRequestAliveListener);

    int resetInputTimer();

    int resetInputTimer(boolean z10);

    void restartGame(int i10);

    void searchCloudFile(SearchCallback searchCallback);

    void sendAudioData(byte[] bArr);

    boolean sendCustomKeycode(HMInputOpData hMInputOpData);

    void sendGamepadKeyEvent(int i10, int i11, float f10, float f11, float f12, float f13);

    void sendInputOp(ArrayList<HmInputOp> arrayList, HmInputOpListener hmInputOpListener);

    void sendKeyEvent(KeyType keyType);

    void sendKeyboardEvent(String str, int i10);

    boolean sendMessage(String str, MessageType messageType, OnSendMessageListener onSendMessageListener);

    void sendMotionEvent(int i10, FPoint fPoint);

    void sendSceneStopMessage(long j10, String str);

    boolean sendWsMessage(String str, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener);

    void setAttachContext(Context context);

    void setAudioMute(boolean z10);

    void setAudioRecordCallback(AudioRecordSourceCallback audioRecordSourceCallback);

    void setAutoShowIME(boolean z10);

    void setButtonMapping(ButtonMappings buttonMappings);

    boolean setButtonMappingMode(int i10);

    void setChangeStreamStatus(boolean z10);

    void setCloseStream(boolean z10);

    void setCloudOperationListener(CloudOperationListener cloudOperationListener);

    void setColorMode(ColorMode colorMode, ColorModeListener colorModeListener);

    void setConfigInfo(String str);

    void setControlListener(OnContronListener onContronListener);

    void setCursorSize(int i10, int i11);

    void setCustomVideoView(IHmcpIJKVideoView iHmcpIJKVideoView);

    void setDevicePixelRatio(int i10);

    void setDpadMouseMoveStep(float f10);

    void setDpadMouseMoveStep(Float f10, Float f11);

    void setExtraData(IntentExtraData intentExtraData);

    void setFixedGamepadType(GamepadType gamepadType);

    void setFunctionSensitivity(float f10);

    void setGyroToMouseXSensitivity(int i10);

    void setGyroToMouseYSensitivity(int i10);

    boolean setHandleInputEvent(boolean z10);

    void setHmFrameCallback(HmFrameCallback hmFrameCallback);

    void setHmStreamerIPCallback(HmStreamerIPCallback hmStreamerIPCallback);

    void setHmcpPlayerListener(HmcpPlayerListener hmcpPlayerListener);

    void setImageSize();

    boolean setInitMousePoint(float f10, float f11);

    void setKeyPressedVibrator(boolean z10);

    void setKeyboardMapperGamepadEnable(boolean z10);

    void setLoadingShow(boolean z10);

    void setMouseBitmap(Bitmap bitmap);

    void setMouseIcon(String str, int i10);

    boolean setMouseMoveStep(int i10);

    void setMouseOffSet(int i10, int i11);

    void setMouseOffSetRatio(float f10, float f11);

    void setMouseSensitivity(float f10);

    void setOperationDelayCallback(IOperationDelayCallback iOperationDelayCallback);

    void setPCMouseMode(boolean z10);

    void setPhysicalMouseViewOnSensitivity(float f10);

    void setPlayerState(int i10);

    void setScreenHeight(int i10);

    void setScreenOrientation(ScreenOrientation screenOrientation);

    void setScreenWidth(int i10);

    void setSeiListener(ISeiListener iSeiListener);

    void setShowVirtualRawKey(boolean z10);

    void setStreamTypeChangeListener(OnStreamTypeChangeListener onStreamTypeChangeListener);

    void setStreamingCallback(StreamingCallback streamingCallback);

    void setStreamingMode(StreamingMode streamingMode, IStreamingModeCallback iStreamingModeCallback);

    boolean setTouchMode(TouchMode touchMode);

    void setTouchesMoveMapperRockerEnable(boolean z10);

    void setUIListener(HmcpUIListener hmcpUIListener);

    void setUserInfo(UserInfo userInfo);

    void setVideoDelayCallback(IVideoDelayCallback iVideoDelayCallback);

    void setVirtualBaseScale(float f10);

    void setVirtualKeyboardSurfaceView(VirtualKeyboardSurfaceView virtualKeyboardSurfaceView);

    void setVirtualStickAlpha(float f10);

    void setWsMessageListener(OnSendWsMessageListener onSendWsMessageListener);

    void setXAxisReverse(boolean z10);

    void setYAxisReverse(boolean z10);

    boolean showVirtualKeyboard(boolean z10);

    boolean showVirtualStick(boolean z10);

    void startLiving(String str, String str2, OnLivingListener onLivingListener);

    void startPlay();

    void startPlay(boolean z10);

    void startRecord();

    void startRecordStream(StartRecordStreamListener startRecordStreamListener);

    boolean startStreaming();

    void stopAndDismiss(Activity activity, int i10);

    void stopLiving(String str, OnLivingListener onLivingListener);

    void stopRecord();

    void stopRecordStream(StopRecordStreamListener stopRecordStreamListener);

    boolean switchBandWidthDetection(boolean z10);

    void switchIME(SwitchIMECallback switchIMECallback);

    void switchInputMode();

    boolean switchKeyboard(boolean z10);

    boolean switchLocalKeyboard(boolean z10);

    void switchMobileNetworkTransport(boolean z10);

    void switchStreamType(StreamType streamType, OnSwitchStreamTypeListener onSwitchStreamTypeListener);

    void turnOffSound();

    void turnOnSound();

    boolean updateCTokenTimeStamp(String str, Long l10);

    void updateCloudFile(CloudOperation cloudOperation, List<CloudFile> list, UpdateCallback updateCallback);

    void updateGameUID(Bundle bundle, OnUpdataGameUIDListener onUpdataGameUIDListener);

    void updateInstanceTime(int i10, int i11, OnUpdateInstanceTimeListener onUpdateInstanceTimeListener);

    void upload(CloudFile cloudFile);

    void upload(CloudFile cloudFile, CloudOperationListener cloudOperationListener);
}
