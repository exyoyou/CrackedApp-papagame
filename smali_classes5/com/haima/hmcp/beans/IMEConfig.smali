.class public Lcom/haima/hmcp/beans/IMEConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IME_SWITCH_NOT_SUPPORT:I = 0x0

.field public static final IME_SWITCH_OFF:I = 0x0

.field public static final IME_SWITCH_ON:I = 0x1

.field public static final IME_SWITCH_SUPPORT:I = 0x1

.field public static final IME_SWITCH_TIME_OUT:I = 0x5

.field public static final IME_TYPE_INSTANCE:I = 0x0

.field public static final IME_TYPE_LOCAL:I = 0x1

.field public static final LOCAL_IME:Ljava/lang/String; = "com.heshle.holderime/.HMHolderKeyboard"


# instance fields
.field private clientImeType:I

.field private currentIMEType:I

.field private enableSwitchIME:Z

.field private instanceIMEConfig:Ljava/lang/String;

.field private mIMEList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/IMEBean;",
            ">;"
        }
    .end annotation
.end field

.field private switchIMEAckTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.sohu.inputmethod.sogou/.SogouIME"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->instanceIMEConfig:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->clientImeType:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getCurrentIMEType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->currentIMEType:I

    .line 2
    .line 3
    return v0
.end method

.method public getIMEList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/IMEBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstanceDefaultIMEConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->instanceIMEConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstanceIMEName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/haima/hmcp/beans/IMEBean;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget v3, v2, Lcom/haima/hmcp/beans/IMEBean;->isDefault:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v0, v2, Lcom/haima/hmcp/beans/IMEBean;->name:Ljava/lang/String;

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getLocalIMEName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.heshle.holderime/.HMHolderKeyboard"

    return-object v0
.end method

.method public getSwitchIMEAckTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public isEnableSwitchIME()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupportSwitchIME()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->clientImeType:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "client_ime_type-> check ime switch support, app set ime type: "

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v4, p0, Lcom/haima/hmcp/beans/IMEConfig;->clientImeType:I

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " and support ime switch"

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget v0, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 40
    .line 41
    if-ne v0, v3, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "client_ime_type-> check ime switch support\uff0c108 config is: "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget v5, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, " and is support: "

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v1, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v1, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_2

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const/4 v1, 0x0

    .line 91
    :goto_2
    if-eqz v0, :cond_3

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    :cond_3
    return v2
.end method

.method public parseConfig(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget v1, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 8
    .line 9
    iput v1, p0, Lcom/haima/hmcp/beans/IMEConfig;->currentIMEType:I

    .line 10
    .line 11
    const-string v1, "ime_switch_enable"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lt v1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    iput-boolean v2, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 38
    .line 39
    :cond_1
    :goto_1
    const-string v0, "ime_switch_ack_timeout"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "parse act timeout error and set default value: 5"

    .line 70
    .line 71
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput v1, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 75
    .line 76
    :cond_2
    :goto_2
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "config->ime_type: "

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "; enable: "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "; ack_time_out: "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v2, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    .line 121
    .line 122
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .line 124
    .line 125
    :try_start_2
    const-string v1, "ime_type"

    .line 126
    .line 127
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_IME_TYPE:I

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "enable"

    .line 133
    .line 134
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "ack_time_out"

    .line 140
    .line 141
    iget v2, p0, Lcom/haima/hmcp/beans/IMEConfig;->switchIMEAckTimeout:I

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catch_2
    nop

    .line 148
    :goto_3
    const-string v1, "12704"

    .line 149
    .line 150
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "instance_ime_default"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_3

    .line 170
    .line 171
    iput-object p1, p0, Lcom/haima/hmcp/beans/IMEConfig;->instanceIMEConfig:Ljava/lang/String;

    .line 172
    .line 173
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v2, "config->instance_ime_default =>"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_3
    sget-object p1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v1, "config->instance_ime_default is null! Use default ime:"

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/haima/hmcp/beans/IMEConfig;->instanceIMEConfig:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_4
    return-void
.end method

.method public setClientImeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/IMEConfig;->clientImeType:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentIMEType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/IMEConfig;->currentIMEType:I

    .line 2
    .line 3
    return-void
.end method

.method public setIMEList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/IMEBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/IMEConfig;->mIMEList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/IMEConfig;->enableSwitchIME:Z

    .line 13
    .line 14
    :cond_1
    return-void
.end method
