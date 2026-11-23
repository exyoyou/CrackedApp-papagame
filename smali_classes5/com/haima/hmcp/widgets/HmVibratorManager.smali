.class public Lcom/haima/hmcp/widgets/HmVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmVibratorManager"


# instance fields
.field private disabled:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->disabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->disabled:Z

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/haima/hmcp/widgets/HmVibratorManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/widgets/HmVibratorManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/HmVibratorManager;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public disabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "vibrator feature is "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "disabled"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "enabled"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "HmVibratorManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->disabled:Z

    .line 31
    .line 32
    return-void
.end method

.method public processVibratorOff(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start processVibratorOff : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HmVibratorManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/widgets/HmVibratorManager$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/HmVibratorManager$2;-><init>(Lcom/haima/hmcp/widgets/HmVibratorManager;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 37
    .line 38
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/haima/hmcp/beans/BaseWsMessage4JsonParse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "processVibratorOff : parse json exception : "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    :goto_0
    if-nez p1, :cond_1

    .line 68
    .line 69
    const-string p1, "processVibratorOff : content is empty!"

    .line 70
    .line 71
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseWsMessage4JsonParse;->data:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lcom/haima/hmcp/beans/VibratorMsg;

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    const-string p1, "processVibratorOff : data is empty!"

    .line 82
    .line 83
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget v0, p1, Lcom/haima/hmcp/beans/VibratorMsg;->deviceId:I

    .line 88
    .line 89
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/VibratorMsg;->isDualVibrate:Z

    .line 90
    .line 91
    iget-object v2, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/haima/hmcp/utils/VibratorUtil;->isSupportDualVibrator(Landroid/content/Context;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "processVibratorOff : isDualVibrate "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " isSystemSupportDualVibrator "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/VibratorUtil;->stopVibrate(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    if-eqz v0, :cond_4

    .line 136
    .line 137
    return-void

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/haima/hmcp/utils/VibratorUtil;->stopVibrate(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/haima/hmcp/utils/VibratorUtil;->stopVibrate(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-void
.end method

.method public processVibratorOn(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start processVibratorOn : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HmVibratorManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->disabled:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string p1, "processVibratorOn : feature is disabled"

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/widgets/HmVibratorManager$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/HmVibratorManager$1;-><init>(Lcom/haima/hmcp/widgets/HmVibratorManager;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 47
    .line 48
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/haima/hmcp/beans/BaseWsMessage4JsonParse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "processVibratorOn : parse json exception : "

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    :goto_0
    if-nez p1, :cond_2

    .line 78
    .line 79
    const-string p1, "processVibratorOn : content is empty!"

    .line 80
    .line 81
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseWsMessage4JsonParse;->data:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lcom/haima/hmcp/beans/VibratorMsg;

    .line 88
    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    const-string p1, "processVibratorOn : data is empty!"

    .line 92
    .line 93
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget v0, p1, Lcom/haima/hmcp/beans/VibratorMsg;->amplitude:I

    .line 98
    .line 99
    if-ltz v0, :cond_9

    .line 100
    .line 101
    const/16 v2, 0xff

    .line 102
    .line 103
    if-le v0, v2, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget v2, p1, Lcom/haima/hmcp/beans/VibratorMsg;->duration:I

    .line 107
    .line 108
    if-gtz v2, :cond_5

    .line 109
    .line 110
    const-string p1, "processVibratorOn : duration is invalid"

    .line 111
    .line 112
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    iget v3, p1, Lcom/haima/hmcp/beans/VibratorMsg;->deviceId:I

    .line 117
    .line 118
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/VibratorMsg;->isDualVibrate:Z

    .line 119
    .line 120
    iget-object v4, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/haima/hmcp/utils/VibratorUtil;->isSupportDualVibrator(Landroid/content/Context;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v6, "processVibratorOn : isDualVibrate "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v6, " isSystemSupportDualVibrator "

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v1, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p1, v0, v2, v3}, Lcom/haima/hmcp/utils/VibratorUtil;->startVibrate(Landroid/content/Context;III)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    if-eqz v3, :cond_7

    .line 165
    .line 166
    const-string p1, "processVibratorOn : local device is dual-vibrator-unsupported,so this msg is discarded"

    .line 167
    .line 168
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {p1, v0, v2}, Lcom/haima/hmcp/utils/VibratorUtil;->startVibrate(Landroid/content/Context;II)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {p1, v0, v2}, Lcom/haima/hmcp/utils/VibratorUtil;->startVibrate(Landroid/content/Context;II)V

    .line 181
    .line 182
    .line 183
    :goto_1
    return-void

    .line 184
    :cond_9
    :goto_2
    const-string p1, "processVibratorOn : amplitude is invalid"

    .line 185
    .line 186
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public stopAllVibrators()V
    .locals 2

    .line 1
    const-string v0, "HmVibratorManager"

    .line 2
    .line 3
    const-string v1, "stopAllVibrators"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmVibratorManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/utils/VibratorUtil;->stopAllVibrators(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
