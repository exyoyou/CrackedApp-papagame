.class public Lm6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/r;


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


# virtual methods
.method public onActivityDismiss(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onActivityShow(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "event",
            "jsonParams"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lm6/b;

    .line 18
    .line 19
    invoke-direct {p3}, Lm6/b;-><init>()V

    .line 20
    .line 21
    .line 22
    const-class v0, Lcom/join/mgps/activity/BindAccountActivity_;

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x5

    .line 30
    if-ne p2, v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s0()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    const-string p1, "\u4f1a\u5458\u5f00\u901a\u6210\u529f\uff0c\u6b63\u5728\u5207\u6362\u81f3\u4f1a\u5458\u9ad8\u901f\u901a\u9053"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x6

    .line 56
    if-ne p2, v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    const-string p1, "\u79d2\u8fdb\u5361\u4f7f\u7528\u6210\u529f\uff0c\u6b63\u5728\u5207\u6362\u81f3\u79d2\u8fdb\u901a\u9053"

    .line 62
    .line 63
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s0()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->T()V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->N0()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/4 v0, 0x7

    .line 92
    if-ne p2, v0, :cond_5

    .line 93
    .line 94
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    const-string v0, "position"

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-string p3, "parentScene"

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-eqz p3, :cond_4

    .line 123
    .line 124
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-class v3, Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    invoke-virtual {p3, p2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Lcom/join/mgps/dto/ExtBean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    move-object v1, p2

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception p2

    .line 139
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    new-instance p3, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v3, "parentExtBean"

    .line 152
    .line 153
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    const-class v0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 162
    .line 163
    invoke-virtual {p2, p1, v0, p3}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_1
    return-void
.end method
