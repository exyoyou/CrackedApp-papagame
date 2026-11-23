.class Lcom/netease/nis/quicklogin/QuickLogin$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/nis/quicklogin/QuickLogin$d;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;JLcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin$d;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->e:Lcom/netease/nis/quicklogin/QuickLogin$d;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "preCheck [onError]"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Ljava/util/Map;

    .line 35
    .line 36
    const-string v2, "utf-8"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/netease/nis/basesdk/HttpUtil;->map2Form(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const-string v2, "RETURN_DATA_ERROR"

    .line 43
    .line 44
    const-string v7, ""

    .line 45
    .line 46
    move v4, p1

    .line 47
    move-object v5, p2

    .line 48
    invoke-static/range {v1 .. v7}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;J)J

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "preCheck [onSuccess] "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "preCheck [time] "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/netease/nis/quicklogin/QuickLogin;->e(Lcom/netease/nis/quicklogin/QuickLogin;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iget-wide v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->a:J

    .line 47
    .line 48
    sub-long/2addr v1, v3

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "ms"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-class v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    iget v1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->code:I

    .line 75
    .line 76
    const/16 v2, 0xc8

    .line 77
    .line 78
    if-ne v1, v2, :cond_7

    .line 79
    .line 80
    iget-object v1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->data:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->extData:Lorg/json/JSONObject;

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 87
    .line 88
    invoke-interface {v2, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onExtendMsg(Lorg/json/JSONObject;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->c:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1, v0, v2}, Lcom/netease/nis/quicklogin/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "preCheck [real] "

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-class v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    .line 124
    .line 125
    invoke-static {v1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 134
    .line 135
    iget-object v2, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->token:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 141
    .line 142
    iget-object v2, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->appId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->c(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->appKey:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 155
    .line 156
    iget-object v2, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->url:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->b(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    iget p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->openCache:I

    .line 162
    .line 163
    sput p1, Lcom/netease/nis/quicklogin/b/a;->a:I

    .line 164
    .line 165
    iget p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->ot:I

    .line 166
    .line 167
    const/4 v2, 0x3

    .line 168
    const/4 v3, 0x1

    .line 169
    if-lt p1, v3, :cond_1

    .line 170
    .line 171
    if-gt p1, v2, :cond_1

    .line 172
    .line 173
    iget-object v4, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 174
    .line 175
    invoke-static {v4, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;I)I

    .line 176
    .line 177
    .line 178
    :cond_1
    iget-object p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->uiElement:Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;

    .line 179
    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 183
    .line 184
    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->f(Lcom/netease/nis/quicklogin/QuickLogin;)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eq p1, v3, :cond_4

    .line 189
    .line 190
    const/4 v3, 0x2

    .line 191
    if-eq p1, v3, :cond_3

    .line 192
    .line 193
    if-eq p1, v2, :cond_2

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->uiElement:Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;

    .line 197
    .line 198
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->slogan:Ljava/lang/String;

    .line 199
    .line 200
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->d:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyName:Ljava/lang/String;

    .line 203
    .line 204
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->e:Ljava/lang/String;

    .line 205
    .line 206
    iget-object p1, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyUrl:Ljava/lang/String;

    .line 207
    .line 208
    sput-object p1, Lcom/netease/nis/quicklogin/utils/e;->f:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_3
    iget-object p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->uiElement:Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;

    .line 212
    .line 213
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->slogan:Ljava/lang/String;

    .line 214
    .line 215
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->a:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyName:Ljava/lang/String;

    .line 218
    .line 219
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->b:Ljava/lang/String;

    .line 220
    .line 221
    iget-object p1, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyUrl:Ljava/lang/String;

    .line 222
    .line 223
    sput-object p1, Lcom/netease/nis/quicklogin/utils/e;->c:Ljava/lang/String;

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_4
    iget-object p1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->uiElement:Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;

    .line 227
    .line 228
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->slogan:Ljava/lang/String;

    .line 229
    .line 230
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->g:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyName:Ljava/lang/String;

    .line 233
    .line 234
    sput-object v0, Lcom/netease/nis/quicklogin/utils/e;->h:Ljava/lang/String;

    .line 235
    .line 236
    iget-object p1, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$UiElement;->privacyUrl:Ljava/lang/String;

    .line 237
    .line 238
    sput-object p1, Lcom/netease/nis/quicklogin/utils/e;->i:Ljava/lang/String;

    .line 239
    .line 240
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->g(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->e:Lcom/netease/nis/quicklogin/QuickLogin$d;

    .line 247
    .line 248
    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/QuickLogin$d;->a(Lcom/netease/nis/quicklogin/a;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 254
    .line 255
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 256
    .line 257
    invoke-static {v0, v2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .line 262
    const-string v4, "JSON_ENCRYPT_ERROR"

    .line 263
    .line 264
    :try_start_1
    invoke-static {v3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    const/4 v6, -0x2

    .line 269
    const-string v7, "json\u89e3\u6790\u5f02\u5e38"

    .line 270
    .line 271
    move-object v8, v1

    .line 272
    invoke-static/range {v3 .. v8}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :catch_0
    move-exception p1

    .line 277
    move-object v5, v1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 286
    .line 287
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v0, v1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 297
    .line 298
    invoke-static {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v3, "AES\u89e3\u5bc6\u5f02\u5e38\uff1a"

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    const-string v1, "AES_DECRYPT_ERROR"

    .line 324
    .line 325
    const/4 v3, -0x1

    .line 326
    invoke-static/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 331
    .line 332
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    .line 333
    .line 334
    invoke-static {v1, v2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->g:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 338
    .line 339
    const-string v4, "RETURN_DATA_ERROR"

    .line 340
    .line 341
    invoke-static {v3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    if-nez v0, :cond_8

    .line 346
    .line 347
    const/4 v1, -0x1

    .line 348
    const/4 v6, -0x1

    .line 349
    goto :goto_1

    .line 350
    :cond_8
    iget v1, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->code:I

    .line 351
    .line 352
    move v6, v1

    .line 353
    :goto_1
    if-nez v0, :cond_9

    .line 354
    .line 355
    const-string v0, ""

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_9
    iget-object v0, v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->msg:Ljava/lang/String;

    .line 359
    .line 360
    :goto_2
    move-object v7, v0

    .line 361
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Ljava/util/Map;

    .line 362
    .line 363
    const-string v1, "utf-8"

    .line 364
    .line 365
    invoke-static {v0, v1}, Lcom/netease/nis/basesdk/HttpUtil;->map2Form(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    move-object v9, p1

    .line 370
    invoke-static/range {v3 .. v9}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    :goto_3
    return-void
.end method
