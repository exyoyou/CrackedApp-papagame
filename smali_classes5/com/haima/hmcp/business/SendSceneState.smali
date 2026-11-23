.class public Lcom/haima/hmcp/business/SendSceneState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static applyCloudInstance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_apply_cloud_instance:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static applyCloudInstanceFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_apply_cloud_instance_fail:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static completePlayingTitles(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_complete_play_titles:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static editKeyboardConfigNotify(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "keyboardConfig"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p2, "editStatus"

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_extra_info_edit_keyboard_config_notify:I

    .line 21
    .line 22
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static exchangeControlFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_exchange_control_fail:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static exchangeControlOtherFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_exchange_control_other_error:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static exchangeControlRestoreFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_exchange_control_restore_fail:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static exchangeControlRestoreSuccess(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_exchange_control_restore_success:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static exchangeControlSuccess(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_exchange_control_success:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static firstFrameArrival(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_first_frame_arrival:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static gameMaintenance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "gameMaintenanceStart"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p3, "gameMaintenanceEnd"

    .line 12
    .line 13
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p3, "inQueued"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_game_maintenance:I

    .line 26
    .line 27
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static gameState(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/proto/GSSDK$GameState;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getStateType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "state_type"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getGameId()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "game_id"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "exe_name"

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getExeName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getErrorCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "error_code"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "error_msg"

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getErrorMsg()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v1, "ext_info"

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$GameState;->getExtInfo()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_0
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_game_state:I

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static hmSysConfigNotify(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "status"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p2, "type"

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_sys_config_notify:I

    .line 17
    .line 18
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static inTvRtcBlackList(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_extra_info_in_tv_rtc_black_list:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_device_support_info:I

    .line 20
    .line 21
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static inputModeNotify(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mode"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_extra_info_input_mode_notify:I

    .line 16
    .line 17
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static longTouchBtnNotify(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p3, "btn"

    .line 12
    .line 13
    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_long_touch_btn_notify:I

    .line 17
    .line 18
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static needWait(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_need_wait:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static networkCuts(Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/enums/NetWorkState;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onNetworkChanged(Lcom/haima/hmcp/enums/NetWorkState;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static noRemainingTime(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_no_remaining_time:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_id:I

    .line 7
    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_extra_info:I

    .line 16
    .line 17
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p2, "13505"

    .line 29
    .line 30
    invoke-static {p2, p0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onSceneChanged(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public static speedTestCompleted(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;F)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_extra_info_speed:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_speed_test_completed:I

    .line 20
    .line 21
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static speedTestStart(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_speed_test_start:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static startPlayingTitles(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_start_playing_titles:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static startStreamingFailed(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_start_streaming_failed:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static startWait(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_start_wait:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static waitStreamingConfirm(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_wait_streaming_confirm:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static waitStreamingTimeout(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 2

    .line 1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_wait_streaming_timeout:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->sendhaima_hmcp_sceneChangedMessage(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
