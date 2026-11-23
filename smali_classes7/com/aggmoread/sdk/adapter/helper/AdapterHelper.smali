.class public Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_HANDLE_CODE:I = -0x7a120

.field public static final ERROR_VIDEO_CODD:I = 0x7a129

.field public static final NO_AD_CODD:I = 0x7a125


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

.method public static getLocalCustomController(Ljava/util/Map;)Lcom/aggmoread/sdk/client/AMCustomController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/aggmoread/sdk/client/AMCustomController;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "AM_key_init_privacy_control"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "KEY_AM_INIT_PRIVACY_CONTROL "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    instance-of v0, p0, Lcom/aggmoread/sdk/client/AMCustomController;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast p0, Lcom/aggmoread/sdk/client/AMCustomController;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static getNativeAdLogoParams(Lcom/bytedance/sdk/openadsdk/AdSlot;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;->getExtraObject()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const-string v1, "AM_key_native_logo_params"

    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "KEY_AM_NATIVE_LOGO_PARAMS "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    instance-of v1, p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    return-object v0
.end method

.method public static getPrice(Lcom/aggmoread/sdk/client/AMAdExtras;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "EXTRA_KEY_ad_ecpm"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/client/AMAdExtras;->getData(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public static getVideoOptions(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/aggmoread/sdk/client/AMVideoConfigs;
    .locals 4

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;->isMuted()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setAutoPlayMuted(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;->getExtraObject()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    const-string v1, "AM_key_auto_play_muted"

    .line 36
    .line 37
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "KEY_AM_AUTO_PLAY_MUTED "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setAutoPlayMuted(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 72
    .line 73
    .line 74
    :cond_0
    const-string v1, "AM_key_detail_page_muted"

    .line 75
    .line 76
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "KEY_AM_DETAIL_PAGE_MUTED "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 101
    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    check-cast v1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setDetailPageMuted(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 111
    .line 112
    .line 113
    :cond_1
    const-string v1, "AM_key_enable_user_control"

    .line 114
    .line 115
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "KEY_AM_ENABLE_USER_CONTROL "

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    check-cast v1, Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setEnableUserControl(Z)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;

    .line 150
    .line 151
    .line 152
    :cond_2
    const-string v1, "AM_key_auto_play_policy"

    .line 153
    .line 154
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v2, "KEY_AM_AUTO_PLAY_POLICY "

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    instance-of v1, p0, Ljava/lang/Integer;

    .line 179
    .line 180
    if-eqz v1, :cond_3

    .line 181
    .line 182
    check-cast p0, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->setAutoPlayPolicy(I)Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMVideoConfigs$Builder;->build()Lcom/aggmoread/sdk/client/AMVideoConfigs;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0
.end method

.method public static notifyBidResult(Lcom/aggmoread/sdk/client/AMAdInterface;ZDI)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->sendBidSuccess(Lcom/aggmoread/sdk/client/AMAdInterface;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->sendBidFailed(Lcom/aggmoread/sdk/client/AMAdInterface;DI)V

    .line 10
    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static sendBidFailed(Lcom/aggmoread/sdk/client/AMAdInterface;DI)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    if-ne p3, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v1, 0x2711

    .line 13
    .line 14
    if-ne p3, v1, :cond_2

    .line 15
    .line 16
    const/16 v0, 0x2711

    .line 17
    .line 18
    :cond_2
    :goto_0
    double-to-int p1, p1

    .line 19
    const/4 p2, 0x0

    .line 20
    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Lcom/aggmoread/sdk/client/AMAdInterface;->notifyBidFail(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_3
    return-void
.end method

.method public static sendBidSuccess(Lcom/aggmoread/sdk/client/AMAdInterface;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/aggmoread/sdk/client/AMAdInterface;->getAdExtras()Lcom/aggmoread/sdk/client/AMAdExtras;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p0}, Lcom/aggmoread/sdk/client/AMAdInterface;->getAdExtras()Lcom/aggmoread/sdk/client/AMAdExtras;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "EXTRA_KEY_ad_ecpm"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/client/AMAdExtras;->getData(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p0, v0}, Lcom/aggmoread/sdk/client/AMAdInterface;->notifyBidSuccess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :cond_0
    return-void
.end method
