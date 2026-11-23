.class public final Lcom/kwad/components/offline/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final awO:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final awP:Ljava/lang/String;

.field private static final awQ:Ljava/lang/String;

.field private static final awR:Ljava/lang/String;

.field private static final awS:Ljava/lang/String;

.field private static final awT:Ljava/lang/String;

.field private static final awU:Ljava/lang/String;

.field private static final awV:Ljava/lang/String;

.field private static final awW:Ljava/lang/String;

.field private static final awX:Ljava/lang/String;

.field private static final awY:Ljava/lang/String;

.field private static final awZ:Ljava/lang/String;

.field private static final axa:Ljava/lang/String;

.field private static final axb:Ljava/lang/String;

.field private static final axc:Ljava/lang/String;

.field private static final axd:Ljava/lang/String;

.field private static final axe:Ljava/lang/String;

.field private static final axf:Ljava/lang/String;

.field private static final axg:Ljava/lang/String;

.field private static final axh:Ljava/lang/String;

.field private static final axi:Ljava/lang/String;

.field private static final axj:Ljava/lang/String;

.field private static final axk:Ljava/lang/String;

.field private static final axl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/components/offline/a/a/a;->awO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v3, "aegon"

    .line 13
    .line 14
    aput-object v3, v2, v1

    .line 15
    .line 16
    const-string v3, "lib%s.so"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awP:Ljava/lang/String;

    .line 23
    .line 24
    new-array v2, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v4, "AemonPlayer"

    .line 27
    .line 28
    aput-object v4, v2, v1

    .line 29
    .line 30
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awQ:Ljava/lang/String;

    .line 35
    .line 36
    new-array v2, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v4, "cjson"

    .line 39
    .line 40
    aput-object v4, v2, v1

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awR:Ljava/lang/String;

    .line 47
    .line 48
    new-array v2, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v4, "cpu-info"

    .line 51
    .line 52
    aput-object v4, v2, v1

    .line 53
    .line 54
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awS:Ljava/lang/String;

    .line 59
    .line 60
    new-array v2, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v4, "cpu-monitor"

    .line 63
    .line 64
    aput-object v4, v2, v1

    .line 65
    .line 66
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awT:Ljava/lang/String;

    .line 71
    .line 72
    new-array v2, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v4, "godzilla"

    .line 75
    .line 76
    aput-object v4, v2, v1

    .line 77
    .line 78
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awU:Ljava/lang/String;

    .line 83
    .line 84
    new-array v2, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    const-string v4, "hodor"

    .line 87
    .line 88
    aput-object v4, v2, v1

    .line 89
    .line 90
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awV:Ljava/lang/String;

    .line 95
    .line 96
    new-array v2, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string v4, "kpwebrtc"

    .line 99
    .line 100
    aput-object v4, v2, v1

    .line 101
    .line 102
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awW:Ljava/lang/String;

    .line 107
    .line 108
    new-array v2, v0, [Ljava/lang/Object;

    .line 109
    .line 110
    const-string v4, "ksp2p"

    .line 111
    .line 112
    aput-object v4, v2, v1

    .line 113
    .line 114
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awX:Ljava/lang/String;

    .line 119
    .line 120
    new-array v2, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    const-string v4, "kwaiplayer_dva"

    .line 123
    .line 124
    aput-object v4, v2, v1

    .line 125
    .line 126
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awY:Ljava/lang/String;

    .line 131
    .line 132
    new-array v2, v0, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v4, "magtsdk"

    .line 135
    .line 136
    aput-object v4, v2, v1

    .line 137
    .line 138
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->awZ:Ljava/lang/String;

    .line 143
    .line 144
    new-array v2, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    const-string v4, "native-filters"

    .line 147
    .line 148
    aput-object v4, v2, v1

    .line 149
    .line 150
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axa:Ljava/lang/String;

    .line 155
    .line 156
    new-array v2, v0, [Ljava/lang/Object;

    .line 157
    .line 158
    const-string v4, "RtcMediaTransport"

    .line 159
    .line 160
    aput-object v4, v2, v1

    .line 161
    .line 162
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axb:Ljava/lang/String;

    .line 167
    .line 168
    new-array v2, v0, [Ljava/lang/Object;

    .line 169
    .line 170
    const-string v4, "slp2p"

    .line 171
    .line 172
    aput-object v4, v2, v1

    .line 173
    .line 174
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axc:Ljava/lang/String;

    .line 179
    .line 180
    new-array v2, v0, [Ljava/lang/Object;

    .line 181
    .line 182
    const-string v4, "snow"

    .line 183
    .line 184
    aput-object v4, v2, v1

    .line 185
    .line 186
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axd:Ljava/lang/String;

    .line 191
    .line 192
    new-array v2, v0, [Ljava/lang/Object;

    .line 193
    .line 194
    const-string v4, "xyvodsdk"

    .line 195
    .line 196
    aput-object v4, v2, v1

    .line 197
    .line 198
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axe:Ljava/lang/String;

    .line 203
    .line 204
    new-array v2, v0, [Ljava/lang/Object;

    .line 205
    .line 206
    const-string v4, "gifimage"

    .line 207
    .line 208
    aput-object v4, v2, v1

    .line 209
    .line 210
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axf:Ljava/lang/String;

    .line 215
    .line 216
    new-array v2, v0, [Ljava/lang/Object;

    .line 217
    .line 218
    const-string v4, "imagepipeline"

    .line 219
    .line 220
    aput-object v4, v2, v1

    .line 221
    .line 222
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axg:Ljava/lang/String;

    .line 227
    .line 228
    new-array v2, v0, [Ljava/lang/Object;

    .line 229
    .line 230
    const-string v4, "mmkv"

    .line 231
    .line 232
    aput-object v4, v2, v1

    .line 233
    .line 234
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axh:Ljava/lang/String;

    .line 239
    .line 240
    new-array v2, v0, [Ljava/lang/Object;

    .line 241
    .line 242
    const-string v4, "static-webp"

    .line 243
    .line 244
    aput-object v4, v2, v1

    .line 245
    .line 246
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axi:Ljava/lang/String;

    .line 251
    .line 252
    new-array v2, v0, [Ljava/lang/Object;

    .line 253
    .line 254
    const-string v4, "c++_shared"

    .line 255
    .line 256
    aput-object v4, v2, v1

    .line 257
    .line 258
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axj:Ljava/lang/String;

    .line 263
    .line 264
    new-array v2, v0, [Ljava/lang/Object;

    .line 265
    .line 266
    const-string v4, "ksse"

    .line 267
    .line 268
    aput-object v4, v2, v1

    .line 269
    .line 270
    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    sput-object v2, Lcom/kwad/components/offline/a/a/a;->axk:Ljava/lang/String;

    .line 275
    .line 276
    new-array v0, v0, [Ljava/lang/Object;

    .line 277
    .line 278
    const-string v2, "kwsgmain"

    .line 279
    .line 280
    aput-object v2, v0, v1

    .line 281
    .line 282
    invoke-static {v3, v0}, Lcom/kwad/sdk/utils/aj;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    sput-object v0, Lcom/kwad/components/offline/a/a/a;->axl:Ljava/lang/String;

    .line 287
    .line 288
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/components/offline/api/core/soloader/SoLoadListener;)V
    .locals 8
    .param p1    # Lcom/kwad/components/offline/api/core/soloader/SoLoadListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/kwad/components/offline/a/a/a;->awO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/kwad/sdk/utils/AbiUtil;->isArm64(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awP:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "db684e5c8fd0e749d13583f702df0d17"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awQ:Ljava/lang/String;

    .line 33
    .line 34
    const-string v3, "115b42443fa44dca2c81dd12bbada5bc"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awR:Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "c776ddaa8d6e4bdc42051fa566df692d"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awS:Ljava/lang/String;

    .line 47
    .line 48
    const-string v3, "cd610ff8f53feff53eff772480f0534b"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awT:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "1812b2b17d5b0e9153ebcdd85ed73a5c"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awU:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "8c560e11bec1ccdf178e4737b9ae2a81"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awV:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "a127cd07c0727a365098b9ff95b0ebdb"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awW:Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "ed70abdb329f52256e4f8e5cd0b9f8ac"

    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awX:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "7e86a5b800f7799a2e8f3edd1e3a46fd"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awY:Ljava/lang/String;

    .line 89
    .line 90
    const-string v3, "ff3eed56b0da912d7287196cd200637b"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awZ:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, "651f41323daa61f6d7096691d7614ded"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axa:Ljava/lang/String;

    .line 103
    .line 104
    const-string v3, "355cc1c5a90f79225116e5f1486876d6"

    .line 105
    .line 106
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axb:Ljava/lang/String;

    .line 110
    .line 111
    const-string v3, "5fcb2ca4dfeb0e4d0e5343e66edb7d0a"

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axc:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, "1be34a5640da785cb7a99a8e457a5370"

    .line 119
    .line 120
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axd:Ljava/lang/String;

    .line 124
    .line 125
    const-string v3, "c779f4622b43cea18d7d91c1b85dd0df"

    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axe:Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "3e376cbc66cbc489f92c90518177ba5d"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axf:Ljava/lang/String;

    .line 138
    .line 139
    const-string v3, "67aef3cf1b63f99176b2e6c7a419c962"

    .line 140
    .line 141
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axg:Ljava/lang/String;

    .line 145
    .line 146
    const-string v3, "4886944eb1b799bae7fa6465321a85d6"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axh:Ljava/lang/String;

    .line 152
    .line 153
    const-string v3, "42524ab638b269f0cc3aefd8f4087e96"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axi:Ljava/lang/String;

    .line 159
    .line 160
    const-string v3, "d9cfe52877b24f60ab826758ce88020d"

    .line 161
    .line 162
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axj:Ljava/lang/String;

    .line 166
    .line 167
    const-string v3, "5fb2bd6653d0f3e74745fb74d24b4047"

    .line 168
    .line 169
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axk:Ljava/lang/String;

    .line 173
    .line 174
    const-string v3, "6430d71e66d372f48aa2032fce7d26cc"

    .line 175
    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axl:Ljava/lang/String;

    .line 180
    .line 181
    const-string v3, "21f950215f13f748bc8f8bed33601026"

    .line 182
    .line 183
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v2, "https://p2-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/adInnerEc/4.10.30.2/ks_so-adInnerEcSoArm64v8aRelease-4.10.30.2-4a9af8acf6-0.apk"

    .line 187
    .line 188
    const-string v3, "adInnerEc-v8a"

    .line 189
    .line 190
    const-string v4, "a700769b6913b295f574c95e16d21c07"

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_1
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awP:Ljava/lang/String;

    .line 195
    .line 196
    const-string v3, "41fa3c05f100f88ac32bb097f07e93ba"

    .line 197
    .line 198
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awQ:Ljava/lang/String;

    .line 202
    .line 203
    const-string v3, "71380bbaaf229d6e12b68541b22fdadc"

    .line 204
    .line 205
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awR:Ljava/lang/String;

    .line 209
    .line 210
    const-string v3, "547873311402f6dfc28bd27f310ab680"

    .line 211
    .line 212
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awS:Ljava/lang/String;

    .line 216
    .line 217
    const-string v3, "e48777ac3caae5dbccf4c25469793732"

    .line 218
    .line 219
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awT:Ljava/lang/String;

    .line 223
    .line 224
    const-string v3, "d04a923cd7391845106aa007b1821b78"

    .line 225
    .line 226
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awU:Ljava/lang/String;

    .line 230
    .line 231
    const-string v3, "ca5a42e46c44e57c3275a519b7ca8874"

    .line 232
    .line 233
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awV:Ljava/lang/String;

    .line 237
    .line 238
    const-string v3, "db09ff30053b458b966d03475175caff"

    .line 239
    .line 240
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awW:Ljava/lang/String;

    .line 244
    .line 245
    const-string v3, "27457ffda99e662dde5e13b7c8b40938"

    .line 246
    .line 247
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awX:Ljava/lang/String;

    .line 251
    .line 252
    const-string v3, "722371b2d3caca321c6d0a3ec1b6b4ff"

    .line 253
    .line 254
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awY:Ljava/lang/String;

    .line 258
    .line 259
    const-string v3, "44e41fac26d1123dd8e8500c22cd4f1d"

    .line 260
    .line 261
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->awZ:Ljava/lang/String;

    .line 265
    .line 266
    const-string v3, "6fc9e26478610245f6b2e39c9b763813"

    .line 267
    .line 268
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axa:Ljava/lang/String;

    .line 272
    .line 273
    const-string v3, "620de13329bc28f975ce26e2f8befada"

    .line 274
    .line 275
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axb:Ljava/lang/String;

    .line 279
    .line 280
    const-string v3, "cfc492113e7dd7b377dde2e94ad3675f"

    .line 281
    .line 282
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axc:Ljava/lang/String;

    .line 286
    .line 287
    const-string v3, "dafb194f4e5ab3a797aaf61933d8f05e"

    .line 288
    .line 289
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axd:Ljava/lang/String;

    .line 293
    .line 294
    const-string v3, "235d0c1e6759f9bf40eb20eb18c5d76d"

    .line 295
    .line 296
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axe:Ljava/lang/String;

    .line 300
    .line 301
    const-string v3, "2744330ddd8fcf3e83766adcaf04d23b"

    .line 302
    .line 303
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axf:Ljava/lang/String;

    .line 307
    .line 308
    const-string v3, "5c7b8a85dbfbee253ec04d07e75880c7"

    .line 309
    .line 310
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axg:Ljava/lang/String;

    .line 314
    .line 315
    const-string v3, "4ba340a75b0e883cdfead457ebfb5b69"

    .line 316
    .line 317
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axh:Ljava/lang/String;

    .line 321
    .line 322
    const-string v3, "245b72502250816158f1637413079189"

    .line 323
    .line 324
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axi:Ljava/lang/String;

    .line 328
    .line 329
    const-string v3, "ce708c75001ab2b97526b391163eb10e"

    .line 330
    .line 331
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axj:Ljava/lang/String;

    .line 335
    .line 336
    const-string v3, "bf209aecc73c55eb87318d5a64c76478"

    .line 337
    .line 338
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axk:Ljava/lang/String;

    .line 342
    .line 343
    const-string v3, "028f3cd812b77d1d789dce7f8d6b22f0"

    .line 344
    .line 345
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    sget-object v2, Lcom/kwad/components/offline/a/a/a;->axl:Ljava/lang/String;

    .line 349
    .line 350
    const-string v3, "c7b223cacabb4726c9222c0708175450"

    .line 351
    .line 352
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-string v2, "https://p2-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/adInnerEc/4.10.30.2/ks_so-adInnerEcSoArmeabiv7aRelease-4.10.30.2-4a9af8acf6-0.apk"

    .line 356
    .line 357
    const-string v3, "adInnerEc-v7a"

    .line 358
    .line 359
    const-string v4, "2c94576d61b23eaa8b7e88bc7490eb50"

    .line 360
    .line 361
    :goto_0
    new-instance v5, Lcom/kwad/library/solder/lib/c/b;

    .line 362
    .line 363
    invoke-direct {v5}, Lcom/kwad/library/solder/lib/c/b;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v6, "com.kwad.components.adInnerEc"

    .line 367
    .line 368
    invoke-static {p0, v6}, Lcom/kwad/library/solder/a/a;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/library/b/a;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    instance-of v7, v6, Lcom/kwad/library/b/a;

    .line 373
    .line 374
    if-eqz v7, :cond_2

    .line 375
    .line 376
    invoke-virtual {v6}, Lcom/kwad/library/b/a;->DG()Lcom/kwad/library/b/a/b;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    iput-object v6, v5, Lcom/kwad/library/solder/lib/c/b;->aFA:Ljava/lang/ClassLoader;

    .line 381
    .line 382
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v6, v2}, Lcom/kwad/sdk/core/network/idc/a;->eQ(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iput-object v2, v5, Lcom/kwad/library/solder/lib/c/b;->aFs:Ljava/lang/String;

    .line 391
    .line 392
    iput-boolean v1, v5, Lcom/kwad/library/solder/lib/c/b;->enable:Z

    .line 393
    .line 394
    iput-object v3, v5, Lcom/kwad/library/solder/lib/c/b;->aFr:Ljava/lang/String;

    .line 395
    .line 396
    const-string v2, "4.10.30.2"

    .line 397
    .line 398
    iput-object v2, v5, Lcom/kwad/library/solder/lib/c/b;->version:Ljava/lang/String;

    .line 399
    .line 400
    iput-object v0, v5, Lcom/kwad/library/solder/lib/c/b;->aFx:Ljava/util/HashMap;

    .line 401
    .line 402
    iput-object v4, v5, Lcom/kwad/library/solder/lib/c/b;->aFu:Ljava/lang/String;

    .line 403
    .line 404
    iput-boolean v1, v5, Lcom/kwad/library/solder/lib/c/b;->aFv:Z

    .line 405
    .line 406
    new-instance v0, Lcom/kwad/components/offline/a/a/a$1;

    .line 407
    .line 408
    invoke-direct {v0, p1}, Lcom/kwad/components/offline/a/a/a$1;-><init>(Lcom/kwad/components/offline/api/core/soloader/SoLoadListener;)V

    .line 409
    .line 410
    .line 411
    invoke-static {p0, v5, v0}, Lcom/kwad/library/solder/a/a;->a(Landroid/content/Context;Lcom/kwad/library/solder/lib/c/b;Lcom/kwad/library/solder/lib/ext/b$c;)V

    .line 412
    .line 413
    .line 414
    return-void
.end method
