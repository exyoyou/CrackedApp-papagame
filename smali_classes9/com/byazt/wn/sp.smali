.class public Lcom/byazt/wn/sp;
.super Lcom/byazt/wn/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a,
        0x5b
    }
.end annotation


# instance fields
.field public volatile i:Lcom/byazt/uj/ve;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/db/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/wn/tt;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wn/sp;)Lcom/byazt/uj/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public callAdVideoCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/uj/i;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/wn/tt;->ve:Ljava/util/function/Function;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/byazt/uj/i;-><init>(Lcom/byazt/wn/tt;Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/byazt/sp/tt;->notifyVideoCache(Lcom/byazt/yl/ve;Lcom/byazt/pp/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public callLoadFail(Lcom/byazt/zm/c;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/sp/tt;->hasNotifyFail()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/pp/c;

    .line 8
    .line 9
    const v1, 0xbf6c

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/zm/c;->c()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/zm/c;->tt()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const-string p1, "TTMediationSDK"

    .line 41
    .line 42
    const-string v0, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public callLoadSucceed(DLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/sp/tt;->hasNotifySuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "TTMediationSDK"

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "\u81ea\u5b9a\u4e49Adapter callLoadSuccess"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/uj/i;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/wn/tt;->ve:Ljava/util/function/Function;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/byazt/uj/i;-><init>(Lcom/byazt/wn/tt;Ljava/util/function/Function;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/byazt/wn/tt;->c(Lcom/byazt/yl/ve;DLjava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string p1, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u6210\u529f\u6216\u8005\u5931\u8d25\u56de\u8c03\u53ea\u80fd\u8c03\u7528\u4e00\u6b21"

    .line 34
    .line 35
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public callManager(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/16 p3, 0x1fbb

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "TTMediationSDK"

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x1f4e

    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 p3, 0x1f4f

    .line 15
    .line 16
    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Adn custom reward loader : callLoaderFail  code:"

    .line 23
    .line 24
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " msg:"

    .line 31
    .line 32
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-static {v1, p3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wn/tt;->callLoaderFail(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    const/16 p3, 0x1fab

    .line 51
    .line 52
    const-class v2, Ljava/util/Map;

    .line 53
    .line 54
    const/16 v3, 0x1f8b

    .line 55
    .line 56
    if-ne p1, p3, :cond_2

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    const/16 p1, 0x20d9

    .line 61
    .line 62
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->doubleValue(I)D

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-interface {p2, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/util/Map;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    move-object p1, v0

    .line 76
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p3, "Adn custom reward loader : callLoadSucceed price:"

    .line 79
    .line 80
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p3, " mextraMsg:"

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {v1, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v4, v5, p1}, Lcom/byazt/wn/sp;->callLoadSucceed(DLjava/util/Map;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_2
    const/16 p3, 0x1fb0

    .line 107
    .line 108
    if-ne p1, p3, :cond_3

    .line 109
    .line 110
    const-string p1, "Adn custom reward loader : callAdVideoCache"

    .line 111
    .line 112
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callAdVideoCache()V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_3
    const/16 p3, 0x3f0

    .line 121
    .line 122
    if-ne p1, p3, :cond_4

    .line 123
    .line 124
    const-string p1, "Adn custom reward loader : callRewardedAdShow"

    .line 125
    .line 126
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardedAdShow()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_4
    const/16 p3, 0x3f1

    .line 135
    .line 136
    if-ne p1, p3, :cond_5

    .line 137
    .line 138
    const-string p1, "Adn custom reward loader : callRewardClick"

    .line 139
    .line 140
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardClick()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_5
    const/16 p3, 0x3f6

    .line 149
    .line 150
    if-ne p1, p3, :cond_6

    .line 151
    .line 152
    const-string p1, "Adn custom reward loader : callRewardedAdClosed"

    .line 153
    .line 154
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardedAdClosed()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_6
    const/16 p3, 0x402

    .line 163
    .line 164
    if-ne p1, p3, :cond_7

    .line 165
    .line 166
    const-string p1, "Adn custom reward loader : callRewardVideoComplete"

    .line 167
    .line 168
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardVideoComplete()V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_7
    const/16 p3, 0x3fd

    .line 176
    .line 177
    if-ne p1, p3, :cond_8

    .line 178
    .line 179
    const-string p1, "Adn custom reward loader : callRewardVideoError"

    .line 180
    .line 181
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardVideoError()V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    const/16 p3, 0x40d

    .line 189
    .line 190
    if-ne p1, p3, :cond_9

    .line 191
    .line 192
    const-string p1, "Adn custom reward loader : callRewardSkippedVideo"

    .line 193
    .line 194
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/byazt/wn/sp;->callRewardSkippedVideo()V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_9
    const/16 p3, 0x3fa

    .line 202
    .line 203
    if-ne p1, p3, :cond_a

    .line 204
    .line 205
    if-eqz p2, :cond_a

    .line 206
    .line 207
    const/16 p1, 0x1f51

    .line 208
    .line 209
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    const/16 p1, 0x1f52

    .line 214
    .line 215
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->floatValue(I)F

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    const/16 p1, 0x1f53

    .line 220
    .line 221
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-interface {p2, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    move-object v9, p1

    .line 230
    check-cast v9, Ljava/util/Map;

    .line 231
    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string p2, "Adn custom reward loader : callRewardVerify rewardVerify:"

    .line 235
    .line 236
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p2, " amount:"

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p2, " name:"

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p2, " map:"

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Lcom/byazt/wn/sp$8;

    .line 274
    .line 275
    move-object v4, p1

    .line 276
    move-object v5, p0

    .line 277
    invoke-direct/range {v4 .. v9}, Lcom/byazt/wn/sp$8;-><init>(Lcom/byazt/wn/sp;ZFLjava/lang/String;Ljava/util/Map;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p1}, Lcom/byazt/wn/sp;->callRewardVerify(Lcom/byazt/bo/c;)V

    .line 281
    .line 282
    .line 283
    :cond_a
    :goto_1
    return-object v0
.end method

.method public final callRewardClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$2;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final callRewardSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$6;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$6;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final callRewardVerify(Lcom/byazt/bo/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$7;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/byazt/wn/sp$7;-><init>(Lcom/byazt/wn/sp;Lcom/byazt/bo/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final callRewardVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$4;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$4;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final callRewardVideoError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$5;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$5;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final callRewardedAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$3;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public callRewardedAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/sp;->i:Lcom/byazt/uj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/wn/sp$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/wn/sp$1;-><init>(Lcom/byazt/wn/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/wn/tt;->checkLoadSuccess(Lcom/byazt/ylx/c$c;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
