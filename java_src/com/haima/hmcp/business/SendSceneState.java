package com.haima.hmcp.business;

import android.content.Context;
import com.alibaba.fastjson.JSONObject;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.R;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.EditStatus;
import com.haima.hmcp.enums.NetWorkState;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.proto.GSSDK;
import com.sigmob.sdk.base.models.ClickCommon;

/* JADX INFO: loaded from: classes5.dex */
public class SendSceneState {
    public static void applyCloudInstance(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_apply_cloud_instance), null);
    }

    public static void applyCloudInstanceFail(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_apply_cloud_instance_fail), null);
    }

    public static void completePlayingTitles(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_complete_play_titles), null);
    }

    public static void editKeyboardConfigNotify(Context context, HmcpPlayerListener hmcpPlayerListener, String str, EditStatus editStatus) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("keyboardConfig", (Object) str);
        jSONObject.put("editStatus", (Object) editStatus.toString());
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_extra_info_edit_keyboard_config_notify), jSONObject.toJSONString());
    }

    public static void exchangeControlFail(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_exchange_control_fail), null);
    }

    public static void exchangeControlOtherFail(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_exchange_control_other_error), null);
    }

    public static void exchangeControlRestoreFail(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_exchange_control_restore_fail), null);
    }

    public static void exchangeControlRestoreSuccess(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_exchange_control_restore_success), null);
    }

    public static void exchangeControlSuccess(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_exchange_control_success), null);
    }

    public static void firstFrameArrival(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_first_frame_arrival), null);
    }

    public static void gameMaintenance(Context context, HmcpPlayerListener hmcpPlayerListener, boolean z10, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ConstantsInternal.KEY_GAME_MAINTENANCE_START, (Object) str);
        jSONObject.put(ConstantsInternal.KEY_GAME_MAINTENANCE_END, (Object) str2);
        jSONObject.put(ConstantsInternal.KEY_IN_QUEUED, (Object) Boolean.valueOf(z10));
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_game_maintenance), jSONObject.toJSONString());
    }

    public static void gameState(Context context, HmcpPlayerListener hmcpPlayerListener, GSSDK.GameState gameState) {
        JSONObject jSONObject = new JSONObject();
        if (gameState != null) {
            jSONObject.put(ConstantsInternal.KEY_STATE_TYPE, (Object) Integer.valueOf(gameState.getStateType()));
            jSONObject.put("game_id", (Object) Integer.valueOf(gameState.getGameId()));
            jSONObject.put(ConstantsInternal.KEY_EXE_NAME, (Object) gameState.getExeName());
            jSONObject.put("error_code", (Object) Integer.valueOf(gameState.getErrorCode()));
            jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, (Object) gameState.getErrorMsg());
            jSONObject.put(ConstantsInternal.KEY_EXT_INFO, (Object) gameState.getExtInfo());
        }
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, context.getString(R.string.haima_hmcp_scene_game_state), jSONObject.toJSONString());
    }

    public static void hmSysConfigNotify(Context context, HmcpPlayerListener hmcpPlayerListener, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("status", (Object) str);
        jSONObject.put("type", (Object) str2);
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_sys_config_notify), jSONObject.toJSONString());
    }

    public static void inTvRtcBlackList(Context context, HmcpPlayerListener hmcpPlayerListener, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_extra_info_in_tv_rtc_black_list), (Object) Boolean.valueOf(z10));
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_device_support_info), jSONObject.toJSONString());
    }

    public static void inputModeNotify(Context context, HmcpPlayerListener hmcpPlayerListener, int i10) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mode", (Object) Integer.valueOf(i10));
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_extra_info_input_mode_notify), jSONObject.toJSONString());
    }

    public static void longTouchBtnNotify(Context context, HmcpPlayerListener hmcpPlayerListener, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", (Object) str2);
        jSONObject.put(ClickCommon.CLICK_AREA_BTN, (Object) str);
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_long_touch_btn_notify), jSONObject.toJSONString());
    }

    public static void needWait(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_need_wait), null);
    }

    public static void networkCuts(HmcpPlayerListener hmcpPlayerListener, NetWorkState netWorkState) {
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onNetworkChanged(netWorkState);
        }
    }

    public static void noRemainingTime(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_no_remaining_time), null);
    }

    private static void sendhaima_hmcp_sceneChangedMessage(Context context, HmcpPlayerListener hmcpPlayerListener, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_id), (Object) str);
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_extra_info), (Object) str2);
        String jSONString = jSONObject.toJSONString();
        CountlyUtil.recordEvent(Constants.COUNTYLY_CALL_BACK_SCENE_TO_APP, jSONString);
        if (hmcpPlayerListener != null) {
            hmcpPlayerListener.onSceneChanged(jSONString);
        }
    }

    public static void speedTestCompleted(Context context, HmcpPlayerListener hmcpPlayerListener, float f10) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ResourceManager.getString(R.string.haima_hmcp_scene_extra_info_speed), (Object) Float.valueOf(f10));
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_speed_test_completed), jSONObject.toJSONString());
    }

    public static void speedTestStart(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_speed_test_start), null);
    }

    public static void startPlayingTitles(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_start_playing_titles), null);
    }

    public static void startStreamingFailed(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_start_streaming_failed), null);
    }

    public static void startWait(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_start_wait), null);
    }

    public static void waitStreamingConfirm(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_wait_streaming_confirm), null);
    }

    public static void waitStreamingTimeout(Context context, HmcpPlayerListener hmcpPlayerListener) {
        sendhaima_hmcp_sceneChangedMessage(context, hmcpPlayerListener, ResourceManager.getString(R.string.haima_hmcp_scene_wait_streaming_timeout), null);
    }
}
