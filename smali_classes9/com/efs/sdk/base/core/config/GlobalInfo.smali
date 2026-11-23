.class public Lcom/efs/sdk/base/core/config/GlobalInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p2

    .line 19
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getGlobalInfoMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x3e8

    .line 16
    .line 17
    div-long/2addr v1, v3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ctime"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    div-long/2addr v1, v3

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "w_tm"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public getGlobalSectionList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/file/section/AbsSection;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "um_network_type"

    .line 2
    .line 3
    const-string v1, "um_access_subtype"

    .line 4
    .line 5
    const-string v2, "um_access"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 13
    .line 14
    const-string v5, "global_head"

    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v5, "type"

    .line 20
    .line 21
    invoke-virtual {v4, v5, p1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 26
    .line 27
    const-string v6, "appid"

    .line 28
    .line 29
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 38
    .line 39
    const-string v6, "wid"

    .line 40
    .line 41
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 50
    .line 51
    const-string v6, "pid"

    .line 52
    .line 53
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 62
    .line 63
    const-string v6, "pkg"

    .line 64
    .line 65
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 74
    .line 75
    const-string v6, "ver"

    .line 76
    .line 77
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 86
    .line 87
    const-string v6, "vcode"

    .line 88
    .line 89
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 98
    .line 99
    const-string v6, "ps"

    .line 100
    .line 101
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 110
    .line 111
    const-string v6, "stime"

    .line 112
    .line 113
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    const-wide/16 v7, 0x3e8

    .line 129
    .line 130
    div-long/2addr v5, v7

    .line 131
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const-string v6, "ctime"

    .line 136
    .line 137
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->b()J

    .line 145
    .line 146
    .line 147
    move-result-wide v5

    .line 148
    div-long/2addr v5, v7

    .line 149
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    const-string v6, "w_tm"

    .line 154
    .line 155
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 160
    .line 161
    const-string v6, "sdk_ver"

    .line 162
    .line 163
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {p1, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 168
    .line 169
    .line 170
    const-string p1, ""

    .line 171
    .line 172
    const-string v5, "uid"

    .line 173
    .line 174
    invoke-virtual {p0, v5, p1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-nez v6, :cond_0

    .line 187
    .line 188
    invoke-virtual {v4, v5, p1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 189
    .line 190
    .line 191
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    new-instance p1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 195
    .line 196
    const-string v4, "device_info"

    .line 197
    .line 198
    invoke-direct {p1, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 202
    .line 203
    const-string v5, "lang"

    .line 204
    .line 205
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {p1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 214
    .line 215
    const-string v6, "brand"

    .line 216
    .line 217
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 226
    .line 227
    const-string v6, "model"

    .line 228
    .line 229
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 238
    .line 239
    const-string v6, "build_model"

    .line 240
    .line 241
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 250
    .line 251
    const-string v6, "rom"

    .line 252
    .line 253
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 262
    .line 263
    const-string v6, "sdk"

    .line 264
    .line 265
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 274
    .line 275
    const-string v6, "dsp_h"

    .line 276
    .line 277
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 286
    .line 287
    const-string v6, "dsp_w"

    .line 288
    .line 289
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 298
    .line 299
    const-string v6, "tzone"

    .line 300
    .line 301
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    const-string v6, "tzone"

    .line 306
    .line 307
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 312
    .line 313
    const-string v6, "net"

    .line 314
    .line 315
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    const-string v6, "net"

    .line 320
    .line 321
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iget-object v5, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 326
    .line 327
    const-string v6, "fr"

    .line 328
    .line 329
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    const-string v6, "fr"

    .line 334
    .line 335
    invoke-virtual {v4, v6, v5}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 336
    .line 337
    .line 338
    :try_start_0
    iget-object v4, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 339
    .line 340
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_1

    .line 345
    .line 346
    iget-object v4, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 347
    .line 348
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {p1, v2, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 353
    .line 354
    .line 355
    :cond_1
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 356
    .line 357
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_2

    .line 362
    .line 363
    iget-object v2, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 364
    .line 365
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {p1, v1, v2}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 370
    .line 371
    .line 372
    :cond_2
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 373
    .line 374
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_3

    .line 379
    .line 380
    iget-object v1, p0, Lcom/efs/sdk/base/core/config/GlobalInfo;->a:Ljava/util/Map;

    .line 381
    .line 382
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {p1, v0, v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .line 388
    .line 389
    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    .line 393
    .line 394
    :cond_3
    :goto_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    return-object v3
.end method

.method public getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "wid"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/efs/sdk/base/core/config/GlobalInfo;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/efs/sdk/base/core/util/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/efs/sdk/base/core/config/GlobalInfo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method
