.class public Lcom/join/android/app/common/http/PointSendUtile;
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

.method public static sendPoint(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getServerIPAddress()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "wifi"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v2

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v2

    .line 27
    move-object v1, v0

    .line 28
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 29
    .line 30
    .line 31
    :goto_1
    const/4 v2, 0x0

    .line 32
    :try_start_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/join/android/app/common/utils/q;->o()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 40
    goto :goto_2

    .line 41
    :catch_2
    move-exception v3

    .line 42
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 43
    .line 44
    .line 45
    move-object v3, v2

    .line 46
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Lcom/join/mgps/Util/j1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 58
    goto :goto_3

    .line 59
    :catch_3
    move-exception v4

    .line 60
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 61
    .line 62
    .line 63
    move-object v4, v2

    .line 64
    :goto_3
    :try_start_7
    const-string v5, "http.agent"

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 70
    goto :goto_4

    .line 71
    :catch_4
    move-exception v5

    .line 72
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 73
    .line 74
    .line 75
    move-object v5, v2

    .line 76
    :goto_4
    :try_start_9
    sget-object v6, Lcom/MApplication;->K:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_0

    .line 83
    .line 84
    sget-object v6, Lcom/MApplication;->K:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v7, "android_id"

    .line 92
    .line 93
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 97
    goto :goto_5

    .line 98
    :catch_5
    move-exception v6

    .line 99
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 100
    .line 101
    .line 102
    move-object v6, v2

    .line 103
    :goto_5
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v7}, Lcom/join/mgps/Util/j1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 115
    goto :goto_6

    .line 116
    :catch_6
    move-exception v7

    .line 117
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    move-object v7, v2

    .line 121
    :goto_6
    sget-object v8, Lcom/MApplication;->L:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 122
    .line 123
    :try_start_d
    const-string v9, "android.permission.READ_PHONE_STATE"

    .line 124
    .line 125
    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_1

    .line 130
    .line 131
    const-string v9, "phone"

    .line 132
    .line 133
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 143
    move-object v2, p0

    .line 144
    goto :goto_7

    .line 145
    :catch_7
    move-exception p0

    .line 146
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_1
    :goto_7
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_2

    .line 154
    .line 155
    move-object v2, v0

    .line 156
    :cond_2
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_3

    .line 161
    .line 162
    invoke-static {v2}, Lcom/join/mgps/Util/j1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    goto :goto_8

    .line 167
    :cond_3
    move-object p0, v0

    .line 168
    :goto_8
    const-string v9, "6.1.7.0"

    .line 169
    .line 170
    new-instance v10, Lcom/join/mgps/dto/PointMessageData;

    .line 171
    .line 172
    invoke-direct {v10}, Lcom/join/mgps/dto/PointMessageData;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v1, v10, Lcom/join/mgps/dto/PointMessageData;->ip:Ljava/lang/String;

    .line 176
    .line 177
    iput-object v3, v10, Lcom/join/mgps/dto/PointMessageData;->mac:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v4, v10, Lcom/join/mgps/dto/PointMessageData;->mac_md5:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v5, v10, Lcom/join/mgps/dto/PointMessageData;->useragent:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v6, v10, Lcom/join/mgps/dto/PointMessageData;->androidid:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v7, v10, Lcom/join/mgps/dto/PointMessageData;->androidid_md5:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v8, v10, Lcom/join/mgps/dto/PointMessageData;->oaid:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v2, v10, Lcom/join/mgps/dto/PointMessageData;->imei:Ljava/lang/String;

    .line 190
    .line 191
    iput-object p0, v10, Lcom/join/mgps/dto/PointMessageData;->imei_md5:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v0, v10, Lcom/join/mgps/dto/PointMessageData;->callback_url:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v9, v10, Lcom/join/mgps/dto/PointMessageData;->osversion:Ljava/lang/String;

    .line 196
    .line 197
    iput-object p1, v10, Lcom/join/mgps/dto/PointMessageData;->gameId:Ljava/lang/String;

    .line 198
    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    iput-object p0, v10, Lcom/join/mgps/dto/PointMessageData;->clicktime:Ljava/lang/String;

    .line 219
    .line 220
    new-instance p0, Lcom/join/mgps/dto/PointMessageMain;

    .line 221
    .line 222
    invoke-direct {p0}, Lcom/join/mgps/dto/PointMessageMain;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object p1, p0, Lcom/join/mgps/dto/PointMessageMain;->gameId:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v10, p0, Lcom/join/mgps/dto/PointMessageMain;->data:Lcom/join/mgps/dto/PointMessageData;

    .line 228
    .line 229
    invoke-static {p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    new-instance p1, Lcom/join/android/app/common/http/PointSendUtile$a;

    .line 234
    .line 235
    invoke-direct {p1, p0, v1}, Lcom/join/android/app/common/http/PointSendUtile$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 239
    .line 240
    .line 241
    goto :goto_9

    .line 242
    :catch_8
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    :goto_9
    return-void
.end method
