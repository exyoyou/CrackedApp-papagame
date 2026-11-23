package com.haima.hmcp.model;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.Battle;
import com.haima.hmcp.beans.BattleMode;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.JoinBattle;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.business.GamePadManager;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.OnJoinBattleListener;
import com.haima.hmcp.listeners.TvBattleModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.BaseVideoView;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class TvBattleModel {
    private static final String TAG = "TvBattleModel";
    private ButtonMappingUtil buttonMappingUtil;
    private TvBattleModelListener listener;
    private BattleMode mBattleMode = new BattleMode();
    private ConcurrentHashMap<Integer, PointCoord> mappingEventMap = new ConcurrentHashMap<>();

    private String[] getMappingContents(int i10, PointCoord pointCoord, int i11) {
        ButtonMappingUtil buttonMappingUtil = this.buttonMappingUtil;
        if (buttonMappingUtil == null) {
            return null;
        }
        return buttonMappingUtil.getDpad2JoypadMappingData(i10, pointCoord, i11);
    }

    private boolean hasUserinfo() {
        TvBattleModelListener tvBattleModelListener = this.listener;
        return tvBattleModelListener != null && tvBattleModelListener.hasUserInfo();
    }

    private void initDpadBattleMappingData(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "tv_battle->init dpad battle mapping data fail, cause contents is empty or null");
            return;
        }
        if (!str.contains("isDpad2JoypadInBattle")) {
            LogUtils.d(TAG, "tv_battle->init dpad battle mapping data fail, not found isDpad2JoypadInBattle");
            return;
        }
        ButtonMappingUtil buttonMappingUtil = new ButtonMappingUtil();
        this.buttonMappingUtil = buttonMappingUtil;
        buttonMappingUtil.initButtonMappings(str);
        if (TextUtils.isEmpty(this.buttonMappingUtil.getVersion())) {
            LogUtils.d(TAG, "tv_battle->init dpad battle mapping data fail, not found version");
        } else {
            if (!this.buttonMappingUtil.isDpad2JoypadInBattle()) {
                LogUtils.d(TAG, "tv_battle->init dpad battle mapping data fail, cause isDpad2JoypadInBattle is false");
                return;
            }
            this.mappingEventMap = this.buttonMappingUtil.getMappingEventMap();
            LogUtils.d(TAG, "tv_battle->init dpad battle mapping data success");
            setInputType(1);
        }
    }

    private void initJoinBattleData(JoinBattle joinBattle) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.onInitData(joinBattle);
        } else {
            LogUtils.d(TAG, "tv_battle->initJoinBattleData fail");
        }
    }

    private boolean isBackground() {
        TvBattleModelListener tvBattleModelListener = this.listener;
        return tvBattleModelListener != null && tvBattleModelListener.isBackground();
    }

    private boolean isKeyboardInputState() {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            return tvBattleModelListener.onKeyboardInputState();
        }
        LogUtils.d(TAG, "tv_battle->isKeyboardInputState fail");
        return false;
    }

    private boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!((keyEvent.getSource() & 513) == 513) || isKeyboardInputState()) {
            return false;
        }
        PointCoord mappingEvent = getMappingEvent(i10);
        int battlePlayer = getBattlePlayer();
        String[] mappingContents = getMappingContents(2, mappingEvent, battlePlayer);
        String[] mappingContents2 = getMappingContents(1, mappingEvent, battlePlayer);
        boolean z10 = mappingContents != null && mappingContents.length > 0 && mappingContents2 != null && mappingContents2.length > 0;
        LogUtils.d(TAG, "tv_battle->mapping data validation is: " + z10 + "， when key down event");
        if (z10) {
            String gamePadNumInBattle = getGamePadNumInBattle("");
            for (String str : mappingContents2) {
                sendMappingEvent(String.format(Locale.ENGLISH, "gamePad%s:%s", gamePadNumInBattle, str));
            }
            if (mappingContents2.length == 1) {
                putDownEventMap(mappingEvent.joypad.keyCodeEvent, mappingContents2[0]);
            } else {
                putDownEventMap(JoystickInputModel.GAME_PAD_EVENT_ABS, "");
            }
        }
        return z10;
    }

    private boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (!((keyEvent.getSource() & 513) == 513) || isKeyboardInputState()) {
            return false;
        }
        PointCoord mappingEvent = getMappingEvent(i10);
        int battlePlayer = getBattlePlayer();
        String[] mappingContents = getMappingContents(1, mappingEvent, battlePlayer);
        String[] mappingContents2 = getMappingContents(2, mappingEvent, battlePlayer);
        boolean z10 = mappingContents2 != null && mappingContents2.length > 0 && mappingContents != null && mappingContents.length > 0;
        LogUtils.d(TAG, "tv_battle->mapping data validation is: " + z10 + "， when key up event");
        if (z10) {
            String gamePadNumInBattle = getGamePadNumInBattle("");
            for (String str : mappingContents2) {
                sendMappingEvent(String.format(Locale.ENGLISH, "gamePad%s:%s", gamePadNumInBattle, str));
            }
            if (mappingContents2.length != 1 || mappingEvent == null) {
                removeDownEventMap(JoystickInputModel.GAME_PAD_EVENT_ABS, "");
            } else {
                removeDownEventMap(mappingEvent.joypad.keyCodeEvent, mappingContents2[0]);
            }
        }
        return z10;
    }

    private int processBattleOperation(int i10, BattleMode battleMode) {
        if (i10 != 46 && i10 != 47 && i10 != 48) {
            return 0;
        }
        if (battleMode == null) {
            LogUtils.d(TAG, "tv_battle->handle op, BattleMode is null");
            return 0;
        }
        Battle battle = battleMode.battle;
        if (battle == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "handle op, BattleMode.battle is null");
            CountlyUtil.recordErrorEvent("handle op, BattleMode.battle is null");
            return 0;
        }
        if (battle.mode != 1) {
            String str = "handle op, battle is not NETWORK_BATTLE: " + battleMode.battle.mode;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str);
            CountlyUtil.recordErrorEvent(str);
            return 0;
        }
        int i11 = battleMode.player;
        if (i11 != 1 && i11 != 2) {
            String str2 = "handle op, not battle player: " + battleMode.player;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str2);
            CountlyUtil.recordErrorEvent(str2);
            return 0;
        }
        if (i10 == 46 && i11 == 1) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "handle op, receive master out message when player is master");
            CountlyUtil.recordErrorEvent("handle op, receive master out message when player is master");
            return 0;
        }
        if (i11 == 2 && (i10 == 47 || i10 == 48)) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "handle op, receive joiner out message when player is joiner");
            CountlyUtil.recordErrorEvent("handle op, receive joiner out message when player is joiner");
            return 0;
        }
        switch (i10) {
            case 46:
            case 47:
                if (i10 == 46) {
                    return 1;
                }
            case 48:
                return 2;
            default:
                return 0;
        }
    }

    private void putDownEventMap(String str, String str2) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.onPutDownEventMap(str, str2);
        } else {
            LogUtils.i(TAG, "tv_battle->putDownEventMap fail");
        }
    }

    private void release(String str) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.onRelease(str);
        } else {
            LogUtils.d(TAG, "tv_battle->release fail");
        }
    }

    private void removeDownEventMap(String str, String str2) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.onRemoveDownEventMap(str, str2);
        } else {
            LogUtils.i(TAG, "tv_battle->removeDownEventMap fail");
        }
    }

    private boolean sendGamePadStart(String str) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            return tvBattleModelListener.onEvent(str);
        }
        LogUtils.d(TAG, "tv_battle->sendGamePadStart fail");
        return false;
    }

    private boolean sendMappingEvent(String str) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            return tvBattleModelListener.onEvent(str);
        }
        LogUtils.i(TAG, "tv_battle->sendMappingEvent fail");
        return false;
    }

    private void sendSceneChangedMessage(String str, String str2) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.onSceneChangedMessage(str, str2);
        } else {
            LogUtils.d(TAG, "tv_battle->sendSceneChangedMessage fail");
        }
    }

    private void setInputType(int i10) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.setInputType(i10);
        } else {
            LogUtils.d(TAG, "tv_battle->configData fail");
        }
    }

    private void toJoinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener) {
        TvBattleModelListener tvBattleModelListener = this.listener;
        if (tvBattleModelListener != null) {
            tvBattleModelListener.requestJoinBattle(internalJoinBattle, onJoinBattleListener);
        } else {
            LogUtils.d(TAG, "tv_battle->toJoinBattle fail");
        }
    }

    public BattleMode getBattleMode() {
        return this.mBattleMode;
    }

    public int getBattlePlayer() {
        BattleMode battleMode = this.mBattleMode;
        if (battleMode != null) {
            return battleMode.player;
        }
        return 0;
    }

    public ButtonMappingUtil getButtonMappingUtil() {
        return this.buttonMappingUtil;
    }

    public int getGamePadForQRCode(BattleMode battleMode) {
        Battle battle;
        if (battleMode == null) {
            return -1;
        }
        int i10 = battleMode.player;
        if ((i10 != 1 && i10 != 2) || (battle = battleMode.battle) == null || battle.mode != 1) {
            return -1;
        }
        int i11 = battle.gamePad;
        if (i11 == 1 || i11 == 2) {
            return i11;
        }
        return -1;
    }

    public String getGamePadNumInBattle(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "tv_battle->convert game pad number, gamePadNum=" + str + "; BattleMode=" + this.mBattleMode);
        if (!"".equals(str) && !"2".equals(str)) {
            return str;
        }
        BattleMode battleMode = this.mBattleMode;
        if (battleMode == null) {
            LogUtils.d(str2, "tv_battle->convert game pad number, BattleMode is null");
            return str;
        }
        Battle battle = battleMode.battle;
        if (battle == null || battle.mode != 1) {
            LogUtils.d(str2, "tv_battle->local battle do not convert game pad number");
            return str;
        }
        int i10 = battleMode.player;
        if (i10 != 1 && i10 != 2) {
            LogUtils.d(str2, "tv_battle->convert game pad number, player is not in battle");
            return str;
        }
        int i11 = battle.gamePad;
        if (i11 == 1 || i11 == 2) {
            LogUtils.d(str2, "tv_battle->after convert game pad number: gamePadNum=" + str);
            return this.mBattleMode.battle.gamePad == 1 ? "" : "2";
        }
        LogUtils.d(str2, "tv_battle->convert game pad number, game pad is not validate: " + this.mBattleMode.battle.gamePad);
        return this.mBattleMode.player == 1 ? "" : "2";
    }

    public PointCoord getMappingEvent(int i10) {
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(Integer.valueOf(i10));
    }

    public void handBattleBundle(Bundle bundle) {
        this.mBattleMode.reset();
        if (bundle == null) {
            LogUtils.d(TAG, "tv_battle->the bundle is null");
            return;
        }
        if (!bundle.containsKey("battle")) {
            LogUtils.d(TAG, "tv_battle->do not have battle date");
            return;
        }
        Serializable serializable = bundle.getSerializable("battle");
        if (!(serializable instanceof Battle)) {
            LogUtils.d(TAG, "tv_battle->the BATTLE`s value is not match class type");
            return;
        }
        Battle battle = (Battle) serializable;
        int i10 = battle.mode;
        if (i10 != 1 && i10 != 2) {
            LogUtils.d(TAG, "tv_battle->Battle.mode is not validate: " + battle.mode);
            return;
        }
        if (i10 == 2) {
            LogUtils.d(TAG, "tv_battle->do not need handle local battle");
            return;
        }
        BattleMode battleMode = this.mBattleMode;
        battleMode.battle = battle;
        battleMode.player = 1;
        int i11 = battle.gamePad;
        if (i11 < 1 || i11 > 2) {
            battle.gamePad = 1;
        }
        LogUtils.d(TAG, "tv_battle->play(bundle) init battle info: " + this.mBattleMode);
        CountlyUtil.recordEvent(Constants.COUNTLY_CREATE_BATTLE);
    }

    public boolean handleKeyEvent(int i10, KeyEvent keyEvent) {
        LogUtils.i(TAG, "tv_battle->handleKeyEvent called: keyCode = " + i10 + ", event = " + keyEvent);
        return keyEvent.getAction() == 0 ? onKeyDown(i10, keyEvent) : onKeyUp(i10, keyEvent);
    }

    public void handleSaasOperation(int i10, String str) {
        int iProcessBattleOperation = processBattleOperation(i10, this.mBattleMode);
        if (iProcessBattleOperation == 0) {
            CountlyUtil.recordErrorEvent("handle battle op error, cause bad battle play: 0");
            LogUtils.e(TAG, BattleMode.LOG_KEY + "handle battle op error, cause bad battle play: 0");
            return;
        }
        CountlyUtil.recordEvent(iProcessBattleOperation == 1 ? Constants.COUNTLY_BATTLE_MASTER_OUT : Constants.COUNTLY_BATTLE_JOINER_OUT);
        String string = ResourceManager.getString(R.string.haima_hmcp_scene_battle);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BaseVideoView.SCENE_BATTLE_EXTRA_INFO_PLAYER, iProcessBattleOperation);
            jSONObject.put("action", i10 == 48 ? 2 : 4);
        } catch (JSONException unused) {
            LogUtils.e(TAG, "tv_battle->handle op, json data error");
        }
        sendSceneChangedMessage(string, jSONObject.toString());
        if (i10 == 46) {
            release("master out of battle");
        }
    }

    public boolean handleSaasResponse(int i10, String str) {
        int i11;
        int i12;
        int i13 = 2;
        if (i10 == 2) {
            return false;
        }
        String str2 = TAG;
        LogUtils.d(str2, "tv_battle->handle battle info: " + str);
        if (i10 != 7) {
            if (i10 == 6) {
                if (TextUtils.isEmpty(str)) {
                    LogUtils.d(str2, "tv_battle->handle instance apply status, data is empty");
                    return false;
                }
                boolean zEquals = str.equals("0");
                BattleMode battleMode = this.mBattleMode;
                if (battleMode != null && (i11 = battleMode.player) != 0) {
                    if (!zEquals) {
                        i13 = 3;
                    } else if (i11 == 1) {
                        i13 = 1;
                    }
                    String string = ResourceManager.getString(R.string.haima_hmcp_scene_battle);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(BaseVideoView.SCENE_BATTLE_EXTRA_INFO_PLAYER, this.mBattleMode.player);
                        jSONObject.put("action", i13);
                    } catch (JSONException unused) {
                        LogUtils.e(TAG, "tv_battle->handle instance apply status data, json data error");
                    }
                    String string2 = jSONObject.toString();
                    LogUtils.d(TAG, "tv_battle->handle instance apply status data, battle scene: " + string2);
                    sendSceneChangedMessage(string, string2);
                    return true;
                }
                LogUtils.d(str2, "tv_battle->handle instance apply status data, is not in battle");
            }
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(str2, "tv_battle->can`t handle battle info, cause errorInfo is null or empty");
            return false;
        }
        String[] strArrSplit = str.split(",");
        if (TextUtils.isEmpty(strArrSplit[0])) {
            LogUtils.e(str2, "tv_battle->can`t handle battle info, cause player data is empty");
            return false;
        }
        try {
            this.mBattleMode.player = Integer.parseInt(strArrSplit[0]);
            if (strArrSplit.length <= 1 || TextUtils.isEmpty(strArrSplit[1])) {
                i12 = 0;
            } else {
                try {
                    i12 = Integer.parseInt(strArrSplit[1]);
                } catch (NumberFormatException unused2) {
                    LogUtils.e(TAG, "tv_battle->battle`s game pad is not number: " + strArrSplit[1]);
                    i12 = 0;
                }
            }
            BattleMode battleMode2 = this.mBattleMode;
            int i14 = battleMode2.player;
            if (i14 != 1 && i14 != 2) {
                LogUtils.d(TAG, "tv_battle->handle battle info, player type is not validate: " + this.mBattleMode.player);
                this.mBattleMode.reset();
                return false;
            }
            Battle battle = battleMode2.battle;
            battle.mode = 1;
            int i15 = battle.gamePad;
            if (i15 == 0 && i12 != 0) {
                battle.gamePad = i12;
                LogUtils.d(TAG, "tv_battle->handle battle info, game pad is from server set");
            } else if (i15 == 0) {
                battle.gamePad = i14 == 1 ? 1 : 2;
                LogUtils.d(TAG, "tv_battle->handle battle info, game pad is default set");
            } else {
                LogUtils.d(TAG, "tv_battle->handle battle info, game pad is already set");
            }
            LogUtils.d(TAG, "tv_battle->after handle battle info: " + this.mBattleMode);
            return true;
        } catch (NumberFormatException unused3) {
            LogUtils.e(TAG, "tv_battle->battle`s type is not number: " + strArrSplit[0]);
            return false;
        }
    }

    public boolean isBattle() {
        BattleMode battleMode = this.mBattleMode;
        if (battleMode == null) {
            return false;
        }
        int i10 = battleMode.player;
        return i10 == 1 || i10 == 2;
    }

    public void joinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener) {
        String str = TAG;
        LogUtils.d(str, "tv_battle->join battle api called");
        if (onJoinBattleListener == null) {
            LogUtils.d(str, BattleMode.LOG_KEY + "OnJoinBattleListener is null when api called");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "OnJoinBattleListener is null when api called");
            return;
        }
        if (isBackground()) {
            LogUtils.d(str, BattleMode.LOG_KEY + "join battle fail, cause in background when api called");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "join battle fail, cause in background when api called");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_in_background));
            return;
        }
        if (!HmcpManager.INIT_SUCCESS) {
            LogUtils.d(str, BattleMode.LOG_KEY + "join battle fail, cause not init when api called");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "join battle fail, cause not init when api called");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.Error_000003));
            return;
        }
        if (internalJoinBattle == null || internalJoinBattle.joinBattle == null) {
            LogUtils.d(str, BattleMode.LOG_KEY + "join battle fail, cause JoinBattle is null when api called");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "join battle fail, cause JoinBattle is null when api called");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        if (!hasUserinfo()) {
            LogUtils.d(str, BattleMode.LOG_KEY + "join battle fail, cause UserInfo is null when api called");
            CountlyUtil.recordEvent(Constants.COUNTLY_JOIN_BATTLE_FAIL, "join battle fail, cause UserInfo is null when api called");
            onJoinBattleListener.onJoinBattle(false, ResourceManager.getString(R.string.haima_hmcp_sdk_params_error));
            return;
        }
        JoinBattle joinBattle = internalJoinBattle.joinBattle;
        initJoinBattleData(joinBattle);
        int i10 = joinBattle.gamePad;
        if (i10 != 1 && i10 != 2) {
            joinBattle.gamePad = 2;
        }
        Battle battle = new Battle();
        battle.mode = 1;
        battle.gamePad = joinBattle.gamePad;
        BattleMode battleMode = this.mBattleMode;
        battleMode.player = 2;
        battleMode.battle = battle;
        toJoinBattle(internalJoinBattle, onJoinBattleListener);
    }

    public boolean needStopWhenRelease() {
        BattleMode battleMode = this.mBattleMode;
        return battleMode == null || battleMode.player != 2;
    }

    public boolean needStopWhenRemoved() {
        BattleMode battleMode = this.mBattleMode;
        if (battleMode == null) {
            return true;
        }
        int i10 = battleMode.player;
        return (i10 == 1 || i10 == 2) ? false : true;
    }

    public boolean sendBattleGamePadStart(BattleMode battleMode) {
        if (battleMode == null) {
            LogUtils.d(TAG, "tv_battle->send battle game pad start fail, cause BattleMode is null");
            return false;
        }
        int i10 = battleMode.player;
        if (i10 != 1 && i10 != 2) {
            LogUtils.d(TAG, "tv_battle->send battle game pad start fail, cause play is not validate: " + battleMode.player);
            return false;
        }
        Battle battle = battleMode.battle;
        if (battle == null) {
            LogUtils.d(TAG, "tv_battle->send battle game pad start fail, cause BattleMode.battle is null");
            return false;
        }
        int i11 = battle.gamePad;
        if (i11 == 1 || i11 == 2) {
            int i12 = this.mBattleMode.battle.gamePad;
            if (sendGamePadStart(String.format(GamePadManager.GAMEPAD_CONNECTED, i12 == 1 ? "" : String.valueOf(i12)))) {
                LogUtils.d(TAG, "tv_battle->battle game pad start send");
            }
            return true;
        }
        LogUtils.d(TAG, "tv_battle->send battle game pad start fail, cause game pad is not validate: " + battleMode.battle.gamePad);
        return false;
    }

    public void setBattleMode(BattleMode battleMode) {
        this.mBattleMode = battleMode;
    }

    public void setConfig(HashMap<String, String> map) {
        initDpadBattleMappingData(map.get(Constants.DPAD_BATTLE_MAP_CONTENT));
    }

    public void setListener(TvBattleModelListener tvBattleModelListener) {
        this.listener = tvBattleModelListener;
    }

    public void specialPlayRequest(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        BattleMode battleMode = this.mBattleMode;
        boolean z10 = false;
        boolean z11 = battleMode.player == 1;
        Battle battle = battleMode.battle;
        if (battle != null && battle.mode == 1) {
            z10 = true;
        }
        if (!z11 || !z10) {
            LogUtils.d(TAG, "tv_battle->playRequest battle info fail");
            return;
        }
        bundle.putSerializable("battle", battle);
        LogUtils.d(TAG, "tv_battle->playRequest battle info: " + this.mBattleMode);
    }
}
