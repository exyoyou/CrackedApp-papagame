.class public Lorg/hmwebrtc/SoftwareVideoDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareVideoDecoderFactory"

.field private static mForceHmH264Decoder:Z

.field private static mForceHmVp8Decoder:Z


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

.method private static getSupportedCodecsTypes()[Lorg/hmwebrtc/VideoCodecMimeType;
    .locals 3

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmVp8Decoder:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp8Decoder;->nativeIsSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-array v0, v1, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 14
    .line 15
    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    sget-boolean v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmH264Decoder:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lorg/hmwebrtc/LibH264Decoder;->nativeIsSupported()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-array v0, v1, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 31
    .line 32
    sget-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 33
    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    sget-boolean v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmVp8Decoder:Z

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    sget-boolean v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmH264Decoder:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lorg/hmwebrtc/VideoCodecMimeType;->values()[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    new-array v0, v2, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 52
    .line 53
    return-object v0
.end method

.method public static setForceHmH264Decoder(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Set mForceHmH264Decoder is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SoftwareVideoDecoderFactory"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmH264Decoder:Z

    .line 24
    .line 25
    return-void
.end method

.method public static setForceHmVp8Decoder(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Set mForceHmVp8Decoder is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SoftwareVideoDecoderFactory"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->mForceHmVp8Decoder:Z

    .line 24
    .line 25
    return-void
.end method

.method private static supportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->getSupportedCodecsTypes()[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    const-string v4, "SoftwareVideoDecoderFactory"

    .line 13
    .line 14
    if-ge v3, v2, :cond_7

    .line 15
    .line 16
    aget-object v5, v1, v3

    .line 17
    .line 18
    sget-object v6, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 19
    .line 20
    const-string v7, " nativeIsSupported: "

    .line 21
    .line 22
    const-string v8, "supportedCodecs: "

    .line 23
    .line 24
    if-ne v5, v6, :cond_0

    .line 25
    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lorg/hmwebrtc/LibH264Decoder;->nativeIsSupported()Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v4, v9}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object v9, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 59
    .line 60
    if-ne v5, v9, :cond_1

    .line 61
    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp9Decoder;->nativeIsSupported()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-static {v4, v10}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    sget-object v10, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 95
    .line 96
    if-ne v5, v10, :cond_2

    .line 97
    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lorg/hmwebrtc/LibaomAv1Decoder;->nativeIsSupported()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v4, v7}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    sget-object v7, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 131
    .line 132
    if-ne v5, v7, :cond_3

    .line 133
    .line 134
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp8Decoder;->nativeIsSupported()Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_3

    .line 139
    .line 140
    new-instance v8, Lorg/hmwebrtc/VideoCodecInfo;

    .line 141
    .line 142
    invoke-virtual {v7}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-instance v11, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-direct {v8, v7, v11}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    const-string v7, "supportedCodecs: Software VP8 Decoder"

    .line 158
    .line 159
    invoke-static {v4, v7}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    if-ne v5, v6, :cond_4

    .line 163
    .line 164
    invoke-static {}, Lorg/hmwebrtc/LibH264Decoder;->nativeIsSupported()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    new-instance v7, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v8, "packetization-mode"

    .line 176
    .line 177
    const-string v11, "1"

    .line 178
    .line 179
    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    new-instance v8, Lorg/hmwebrtc/VideoCodecInfo;

    .line 183
    .line 184
    invoke-virtual {v6}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-direct {v8, v6, v7}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const-string v6, "supportedCodecs: Software H264 Decoder"

    .line 195
    .line 196
    invoke-static {v4, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    if-ne v5, v9, :cond_5

    .line 200
    .line 201
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp9Decoder;->nativeIsSupported()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_5

    .line 206
    .line 207
    new-instance v6, Lorg/hmwebrtc/VideoCodecInfo;

    .line 208
    .line 209
    invoke-virtual {v9}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    new-instance v8, Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-direct {v6, v7, v8}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    const-string v6, "supportedCodecs: Software VP9 Decoder"

    .line 225
    .line 226
    invoke-static {v4, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    if-ne v5, v10, :cond_6

    .line 230
    .line 231
    invoke-static {}, Lorg/hmwebrtc/LibaomAv1Decoder;->nativeIsSupported()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_6

    .line 236
    .line 237
    new-instance v5, Lorg/hmwebrtc/VideoCodecInfo;

    .line 238
    .line 239
    invoke-virtual {v10}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    new-instance v7, Ljava/util/HashMap;

    .line 244
    .line 245
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-direct {v5, v6, v7}, Lorg/hmwebrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    const-string v5, "supportedCodecs: Software AV1 Decoder"

    .line 255
    .line 256
    invoke-static {v4, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v2, "supportedCodecs: codecs.size()"

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v4, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    new-array v1, v1, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 292
    .line 293
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, [Lorg/hmwebrtc/VideoCodecInfo;

    .line 298
    .line 299
    return-object v0
.end method


# virtual methods
.method public createDecoder(Lorg/hmwebrtc/VideoCodecInfo;)Lorg/hmwebrtc/VideoDecoder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "SoftwareVideoDecoderFactory"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp8Decoder;->nativeIsSupported()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p1, "Created Software VP8 Decoder"

    .line 26
    .line 27
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lorg/hmwebrtc/LibvpxVp8Decoder;

    .line 31
    .line 32
    invoke-direct {p1}, Lorg/hmwebrtc/LibvpxVp8Decoder;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lorg/hmwebrtc/LibvpxVp9Decoder;->nativeIsSupported()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string p1, "Created Software VP9 Decoder"

    .line 55
    .line 56
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lorg/hmwebrtc/LibvpxVp9Decoder;

    .line 60
    .line 61
    invoke-direct {p1}, Lorg/hmwebrtc/LibvpxVp9Decoder;-><init>()V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_1
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-static {}, Lorg/hmwebrtc/LibH264Decoder;->nativeIsSupported()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const-string p1, "Created Software H264 Decoder"

    .line 84
    .line 85
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lorg/hmwebrtc/LibH264Decoder;

    .line 89
    .line 90
    invoke-direct {p1}, Lorg/hmwebrtc/LibH264Decoder;-><init>()V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_2
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/hmwebrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-static {}, Lorg/hmwebrtc/LibaomAv1Decoder;->nativeIsSupported()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    const-string p1, "Created Software AV1 Decoder"

    .line 113
    .line 114
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lorg/hmwebrtc/LibaomAv1Decoder;

    .line 118
    .line 119
    invoke-direct {p1}, Lorg/hmwebrtc/LibaomAv1Decoder;-><init>()V

    .line 120
    .line 121
    .line 122
    return-object p1

    .line 123
    :cond_3
    const/4 p1, 0x0

    .line 124
    return-object p1
.end method

.method public getSupportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;->supportedCodecs()[Lorg/hmwebrtc/VideoCodecInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
