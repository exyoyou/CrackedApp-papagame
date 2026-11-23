package com.haima.hmcp.model;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.HmInputMappings;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.listeners.EventMappingModelListener;
import com.haima.hmcp.utils.ButtonMappingUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class EventMappingModel {
    public static final float MOVE_SPEED_DEFAULT = 0.04f;
    private static final String TAG = "EventMappingModel";
    private ButtonMappingUtil buttonMappingUtil;
    private ConcurrentHashMap<Integer, PointCoord> keyboardEventMap;
    private EventMappingModelListener listener;
    protected ButtonMappings mCurrentButtonMappings;
    private String mappingVersion;
    protected boolean nativeDpadGame;
    private ConcurrentHashMap<Integer, PointCoord> mappingEventMap = new ConcurrentHashMap<>();
    private HashMap<String, String> mMetaMap = new HashMap<>();

    private void initButtonMappings(String str) {
        if (!TextUtils.isEmpty(str) || isNativeDpadGame()) {
            setInputMode(4);
            ButtonMappingUtil buttonMappingUtil = new ButtonMappingUtil();
            this.buttonMappingUtil = buttonMappingUtil;
            buttonMappingUtil.initButtonMappings(str);
            this.mappingVersion = this.buttonMappingUtil.getVersion();
            if (this.buttonMappingUtil.isJoypad2Dpad() || this.buttonMappingUtil.isKeyoard2Dpad() || isNativeDpadGame()) {
                setInputMode(5);
            } else {
                setInputMode(4);
            }
            if (TextUtils.isEmpty(this.mappingVersion) && !TextUtils.isEmpty(str)) {
                setButtonMapping(this.buttonMappingUtil.getButtonMapping());
                return;
            }
            this.mappingEventMap.clear();
            String str2 = TAG;
            LogUtils.d(str2, "onReceiveMetaInfos initButtonMappings isKeyoard2Dpad:" + this.buttonMappingUtil.isKeyoard2Dpad() + " isJoypad2Dpad:" + this.buttonMappingUtil.isJoypad2Dpad());
            if (this.buttonMappingUtil.isKeyoard2Dpad() && this.buttonMappingUtil.isJoypad2Dpad()) {
                this.mappingEventMap = this.buttonMappingUtil.getMappingEventMap();
            } else {
                if (!this.buttonMappingUtil.isJoypad2Dpad()) {
                    this.mappingEventMap.putAll(new ButtonMappingUtil().initButtonMappings(this.mMetaMap.get(Constants.DEFAULT_GAMEPAD_DPAD_MAP_CONTENT)).getMappingEventMap());
                }
                if (!this.buttonMappingUtil.isKeyoard2Dpad()) {
                    this.mappingEventMap.putAll(new ButtonMappingUtil().initButtonMappings(this.mMetaMap.get(Constants.DEFAULT_KEYBOARD_DPAD_MAP_CONTENT)).getMappingEventMap());
                }
                if (this.buttonMappingUtil.isKeyoard2Dpad() || this.buttonMappingUtil.isJoypad2Dpad()) {
                    this.mappingEventMap.putAll(this.buttonMappingUtil.getMappingEventMap());
                }
            }
            if (this.mappingEventMap.isEmpty()) {
                this.mappingEventMap = this.buttonMappingUtil.getMappingEventMap();
            }
            LogUtils.d(str2, "onReceiveMetaInfos: mappingEventMap size:" + this.mappingEventMap.size());
            PointCoord pointCoord = this.mappingEventMap.get(999);
            if (pointCoord != null) {
                if (pointCoord.rx == 0.0f) {
                    LogUtils.d(str2, "init mTrackBallL.rx");
                    pointCoord.rx = 0.1f;
                }
                if (pointCoord.ry == 0.0f) {
                    LogUtils.d(str2, "init mTrackBallL.ry");
                    pointCoord.ry = 0.18f;
                }
            }
        }
    }

    private boolean isNativeDpadGame() {
        return this.nativeDpadGame;
    }

    private void setInputMode(int i10) {
        EventMappingModelListener eventMappingModelListener = this.listener;
        if (eventMappingModelListener != null) {
            eventMappingModelListener.onInputMode(i10);
        } else {
            LogUtils.d(TAG, "setInputMode fail");
        }
    }

    public PointCoord getButtonDirection() {
        ButtonMappings buttonMappings = this.mCurrentButtonMappings;
        if (buttonMappings != null) {
            return buttonMappings.buttonDirection;
        }
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(993);
        }
        return null;
    }

    public ButtonMappingUtil getButtonMappingUtil() {
        return this.buttonMappingUtil;
    }

    public List getButtonMappings() {
        String str = this.mMetaMap.get(Constants.BUTTON_MAP_CONTENT);
        String str2 = this.mMetaMap.get(Constants.KEYBOARD_MAP_CONTENT);
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            LogUtils.e(TAG, "getButtonMappings:mButtonMappingsList数据为空");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        LogUtils.e(TAG, "getButtonMappings:" + str);
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject2 = new JSONObject(StringUtils.replaceSpecialStr(str)).getJSONArray("buttonMappingsList").getJSONObject(0);
                jSONObject.put(HmInputMappings.FIELD_MAPPING_NAME, jSONObject2.getString(HmInputMappings.FIELD_MAPPING_NAME));
                if (TextUtils.isEmpty(this.mappingVersion)) {
                    jSONObject.put("joyKeymappingList", this.buttonMappingUtil.getKeymappingList(jSONObject2, 0));
                    jSONObject.put("dpadKeymappingList", this.buttonMappingUtil.getKeymappingList(jSONObject2, 1));
                } else {
                    jSONObject.put("joyKeymappingList", jSONObject2.getJSONArray(HmInputMappings.FIELD_MAPPING));
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("keyboardKeymappingList", this.buttonMappingUtil.getKeymappingList(null, 2));
            }
            arrayList.add(jSONObject);
        } catch (JSONException e10) {
            LogUtils.e(TAG, e10.toString());
        }
        return arrayList;
    }

    public ButtonMappings getCurrentButtonMapping() {
        return this.mCurrentButtonMappings;
    }

    public PointCoord getCurrentButtonMappingsPointCoord(int i10) {
        ButtonMappings currentButtonMapping = getCurrentButtonMapping();
        if (currentButtonMapping == null) {
            return null;
        }
        if (i10 == 96) {
            return currentButtonMapping.buttonA;
        }
        if (i10 == 97) {
            return currentButtonMapping.buttonB;
        }
        if (i10 == 99) {
            return currentButtonMapping.buttonX;
        }
        if (i10 == 100) {
            return currentButtonMapping.buttonY;
        }
        switch (i10) {
            case 102:
                return currentButtonMapping.buttonL1;
            case 103:
                return currentButtonMapping.buttonR1;
            case 104:
                return currentButtonMapping.buttonL2;
            case 105:
                return currentButtonMapping.buttonR2;
            default:
                switch (i10) {
                    case 994:
                        return currentButtonMapping.buttonRight;
                    case 995:
                        return currentButtonMapping.buttonLeft;
                    case 996:
                        return currentButtonMapping.buttonDown;
                    case 997:
                        return currentButtonMapping.buttonUp;
                    default:
                        return null;
                }
        }
    }

    public PointCoord getKeyboardDirection() {
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.keyboardEventMap;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(Integer.valueOf(ButtonMappingUtil.KEYBOARD_DIRECTION));
        }
        return null;
    }

    public ConcurrentHashMap<Integer, PointCoord> getKeyboardEventMap() {
        return this.keyboardEventMap;
    }

    public PointCoord getMappingEvent(int i10) {
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(Integer.valueOf(i10));
        }
        return null;
    }

    public ConcurrentHashMap<Integer, PointCoord> getMappingEventMap() {
        return this.mappingEventMap;
    }

    public PointCoord getMappingKeyboardEvent(int i10) {
        if (getKeyboardEventMap() != null) {
            return getKeyboardEventMap().get(Integer.valueOf(i10));
        }
        return null;
    }

    public String getMappingVersion() {
        return this.mappingVersion;
    }

    public float getMoveSpeed() {
        PointCoord trackBallR = getTrackBallR();
        if (trackBallR == null) {
            return 0.04f;
        }
        float f10 = trackBallR.sp;
        if (f10 > 0.0f) {
            return f10;
        }
        return 0.04f;
    }

    public PointCoord getTrackBallL() {
        ButtonMappings buttonMappings = this.mCurrentButtonMappings;
        if (buttonMappings != null) {
            return buttonMappings.trackBallL;
        }
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(999);
        }
        return null;
    }

    public PointCoord getTrackBallR() {
        ButtonMappings buttonMappings = this.mCurrentButtonMappings;
        if (buttonMappings != null) {
            return buttonMappings.trackBallR;
        }
        ConcurrentHashMap<Integer, PointCoord> concurrentHashMap = this.mappingEventMap;
        if (concurrentHashMap != null) {
            return concurrentHashMap.get(998);
        }
        return null;
    }

    public boolean getTrackBallRMove() {
        PointCoord trackBallR = getTrackBallR();
        return (trackBallR == null || trackBallR.sp == 0.0f) ? false : true;
    }

    public boolean hasKeyboardMappingEvent() {
        return (getKeyboardEventMap() == null || getKeyboardEventMap().isEmpty()) ? false : true;
    }

    public boolean hasMappingEvent() {
        return (getMappingEventMap() == null || getMappingEventMap().isEmpty()) ? false : true;
    }

    public void setButtonMapping(ButtonMappings buttonMappings) {
        if (buttonMappings != null) {
            this.mCurrentButtonMappings = buttonMappings;
            PointCoord pointCoord = buttonMappings.trackBallL;
            if (pointCoord != null) {
                if (pointCoord.rx == 0.0f) {
                    LogUtils.d(TAG, "init mTrackBallL.rx");
                    pointCoord.rx = 0.1f;
                }
                if (pointCoord.ry == 0.0f) {
                    LogUtils.d(TAG, "init mTrackBallL.ry");
                    pointCoord.ry = 0.18f;
                }
            }
        }
    }

    public void setConfig(HashMap<String, String> map) {
        this.mMetaMap.clear();
        this.mMetaMap.putAll(map);
        initButtonMappings(this.mMetaMap.get(Constants.BUTTON_MAP_CONTENT));
        String str = this.mMetaMap.get(Constants.KEYBOARD_MAP_CONTENT);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.buttonMappingUtil == null) {
            this.buttonMappingUtil = new ButtonMappingUtil();
        }
        this.buttonMappingUtil.initKeyboardMappings(str);
        LogUtils.d(TAG, "initKeyboardMappings: " + str);
        setInputMode(4);
        this.keyboardEventMap = this.buttonMappingUtil.getKeyboardEventMap();
        this.mappingEventMap = this.buttonMappingUtil.getMappingEventMap();
    }

    public void setListener(EventMappingModelListener eventMappingModelListener) {
        this.listener = eventMappingModelListener;
    }

    public void setNativeDpadGame(boolean z10) {
        this.nativeDpadGame = z10;
    }
}
