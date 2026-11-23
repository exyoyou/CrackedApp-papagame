.class Lcom/join/mgps/Util/w0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/w0;->o(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Lcom/join/mgps/dto/ExtBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/join/mgps/dto/ExtBean;

.field final synthetic e:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

.field final synthetic f:Lcom/join/mgps/Util/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/w0;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Landroid/content/Context;Lcom/join/mgps/dto/ExtBean;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$info",
            "val$context",
            "val$extBean",
            "val$cloudParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/w0$c;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/w0$c;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/w0$c;->d:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/w0$c;->e:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/Util/w0$c;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/Util/w0$c;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MembersInfo;->getSecretKey()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/join/mgps/Util/b;->pivCld(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v2, v1

    .line 30
    if-lez v2, :cond_4

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aget-object v3, v1, v2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget-object v3, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 42
    .line 43
    aget-object v1, v1, v2

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v3, Lcom/join/mgps/Util/w0;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 61
    .line 62
    iget v5, v1, Lcom/join/mgps/Util/w0;->e:I

    .line 63
    .line 64
    if-gtz v5, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/Util/w0$c;->c:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/join/mgps/activity/CloudGameTimeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CloudGameTimeActivity_$g;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 78
    .line 79
    invoke-static {v3}, Lcom/join/mgps/Util/w0;->e(Lcom/join/mgps/Util/w0;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CloudGameTimeActivity_$g;->a(Ljava/lang/String;)Lcom/join/mgps/activity/CloudGameTimeActivity_$g;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/join/mgps/Util/w0$c;->d:Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CloudGameTimeActivity_$g;->b(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/CloudGameTimeActivity_$g;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 108
    .line 109
    iget v2, v2, Lcom/join/mgps/Util/w0;->e:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CloudGameTimeActivity_$g;->c(I)Lcom/join/mgps/activity/CloudGameTimeActivity_$g;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 129
    .line 130
    invoke-static {v3}, Lcom/join/mgps/Util/w0;->e(Lcom/join/mgps/Util/w0;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v3

    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    .line 147
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameNoTimeTips:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Lcom/join/mgps/Util/w0$c;->f:Lcom/join/mgps/Util/w0;

    .line 173
    .line 174
    invoke-static {v4}, Lcom/join/mgps/Util/w0;->e(Lcom/join/mgps/Util/w0;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/join/mgps/Util/w0$c;->d:Lcom/join/mgps/dto/ExtBean;

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/Util/w0$c;->c:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/Util/w0$c;->c:Landroid/content/Context;

    .line 218
    .line 219
    iget-object v3, p0, Lcom/join/mgps/Util/w0$c;->e:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/join/mgps/Util/w0$c;->b:Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 222
    .line 223
    iget-object v6, p0, Lcom/join/mgps/Util/w0$c;->d:Lcom/join/mgps/dto/ExtBean;

    .line 224
    .line 225
    invoke-static/range {v1 .. v6}, Lcom/join/mgps/Util/w0;->f(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;ILcom/join/mgps/dto/ExtBean;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_3
    :goto_1
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 230
    .line 231
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    :cond_4
    :goto_2
    return-void
.end method
