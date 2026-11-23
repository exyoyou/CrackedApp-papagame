.class public final enum Lorg/hmwebrtc/VideoCodecStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/hmwebrtc/VideoCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum ERROR:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum ERR_PARAMETER:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum ERR_REQUEST_SLI:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum ERR_SIZE:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum LEVEL_EXCEEDED:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum MEMORY:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum NO_OUTPUT_AFTER_LONG_TIME:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum OK:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum OK_AFTER_RESTART:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum REQUEST_KEYFRAME:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum REQUEST_SLI:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum TARGET_BITRATE_OVERSHOOT:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;

.field public static final enum UNINITIALIZED:Lorg/hmwebrtc/VideoCodecStatus;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    const-string v1, "NO_OUTPUT_AFTER_LONG_TIME"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x6

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT_AFTER_LONG_TIME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 11
    .line 12
    new-instance v1, Lorg/hmwebrtc/VideoCodecStatus;

    .line 13
    .line 14
    const-string v4, "OK_AFTER_RESTART"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x5

    .line 18
    invoke-direct {v1, v4, v5, v6}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lorg/hmwebrtc/VideoCodecStatus;->OK_AFTER_RESTART:Lorg/hmwebrtc/VideoCodecStatus;

    .line 22
    .line 23
    new-instance v4, Lorg/hmwebrtc/VideoCodecStatus;

    .line 24
    .line 25
    const-string v7, "REQUEST_KEYFRAME"

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    const/4 v9, 0x4

    .line 29
    invoke-direct {v4, v7, v8, v9}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v4, Lorg/hmwebrtc/VideoCodecStatus;->REQUEST_KEYFRAME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 33
    .line 34
    new-instance v7, Lorg/hmwebrtc/VideoCodecStatus;

    .line 35
    .line 36
    const-string v10, "REQUEST_SLI"

    .line 37
    .line 38
    const/4 v11, 0x3

    .line 39
    invoke-direct {v7, v10, v11, v8}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v7, Lorg/hmwebrtc/VideoCodecStatus;->REQUEST_SLI:Lorg/hmwebrtc/VideoCodecStatus;

    .line 43
    .line 44
    new-instance v10, Lorg/hmwebrtc/VideoCodecStatus;

    .line 45
    .line 46
    const-string v12, "NO_OUTPUT"

    .line 47
    .line 48
    invoke-direct {v10, v12, v9, v5}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v10, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 52
    .line 53
    new-instance v12, Lorg/hmwebrtc/VideoCodecStatus;

    .line 54
    .line 55
    const-string v13, "OK"

    .line 56
    .line 57
    invoke-direct {v12, v13, v6, v2}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v12, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 61
    .line 62
    new-instance v13, Lorg/hmwebrtc/VideoCodecStatus;

    .line 63
    .line 64
    const-string v14, "ERROR"

    .line 65
    .line 66
    const/4 v15, -0x1

    .line 67
    invoke-direct {v13, v14, v3, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v13, Lorg/hmwebrtc/VideoCodecStatus;->ERROR:Lorg/hmwebrtc/VideoCodecStatus;

    .line 71
    .line 72
    new-instance v14, Lorg/hmwebrtc/VideoCodecStatus;

    .line 73
    .line 74
    const/4 v15, -0x2

    .line 75
    const-string v3, "LEVEL_EXCEEDED"

    .line 76
    .line 77
    const/4 v6, 0x7

    .line 78
    invoke-direct {v14, v3, v6, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lorg/hmwebrtc/VideoCodecStatus;->LEVEL_EXCEEDED:Lorg/hmwebrtc/VideoCodecStatus;

    .line 82
    .line 83
    new-instance v3, Lorg/hmwebrtc/VideoCodecStatus;

    .line 84
    .line 85
    const/4 v15, -0x3

    .line 86
    const-string v6, "MEMORY"

    .line 87
    .line 88
    const/16 v9, 0x8

    .line 89
    .line 90
    invoke-direct {v3, v6, v9, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v3, Lorg/hmwebrtc/VideoCodecStatus;->MEMORY:Lorg/hmwebrtc/VideoCodecStatus;

    .line 94
    .line 95
    new-instance v6, Lorg/hmwebrtc/VideoCodecStatus;

    .line 96
    .line 97
    const/4 v15, -0x4

    .line 98
    const-string v9, "ERR_PARAMETER"

    .line 99
    .line 100
    const/16 v11, 0x9

    .line 101
    .line 102
    invoke-direct {v6, v9, v11, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 103
    .line 104
    .line 105
    sput-object v6, Lorg/hmwebrtc/VideoCodecStatus;->ERR_PARAMETER:Lorg/hmwebrtc/VideoCodecStatus;

    .line 106
    .line 107
    new-instance v9, Lorg/hmwebrtc/VideoCodecStatus;

    .line 108
    .line 109
    const/4 v15, -0x5

    .line 110
    const-string v11, "ERR_SIZE"

    .line 111
    .line 112
    const/16 v8, 0xa

    .line 113
    .line 114
    invoke-direct {v9, v11, v8, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lorg/hmwebrtc/VideoCodecStatus;->ERR_SIZE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 118
    .line 119
    new-instance v11, Lorg/hmwebrtc/VideoCodecStatus;

    .line 120
    .line 121
    const/4 v15, -0x6

    .line 122
    const-string v8, "TIMEOUT"

    .line 123
    .line 124
    const/16 v5, 0xb

    .line 125
    .line 126
    invoke-direct {v11, v8, v5, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    sput-object v11, Lorg/hmwebrtc/VideoCodecStatus;->TIMEOUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 130
    .line 131
    new-instance v8, Lorg/hmwebrtc/VideoCodecStatus;

    .line 132
    .line 133
    const/4 v15, -0x7

    .line 134
    const-string v5, "UNINITIALIZED"

    .line 135
    .line 136
    const/16 v2, 0xc

    .line 137
    .line 138
    invoke-direct {v8, v5, v2, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v8, Lorg/hmwebrtc/VideoCodecStatus;->UNINITIALIZED:Lorg/hmwebrtc/VideoCodecStatus;

    .line 142
    .line 143
    new-instance v5, Lorg/hmwebrtc/VideoCodecStatus;

    .line 144
    .line 145
    const/16 v15, -0xc

    .line 146
    .line 147
    const-string v2, "ERR_REQUEST_SLI"

    .line 148
    .line 149
    move-object/from16 v16, v8

    .line 150
    .line 151
    const/16 v8, 0xd

    .line 152
    .line 153
    invoke-direct {v5, v2, v8, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v5, Lorg/hmwebrtc/VideoCodecStatus;->ERR_REQUEST_SLI:Lorg/hmwebrtc/VideoCodecStatus;

    .line 157
    .line 158
    new-instance v2, Lorg/hmwebrtc/VideoCodecStatus;

    .line 159
    .line 160
    const/16 v15, -0xd

    .line 161
    .line 162
    const-string v8, "FALLBACK_SOFTWARE"

    .line 163
    .line 164
    move-object/from16 v17, v5

    .line 165
    .line 166
    const/16 v5, 0xe

    .line 167
    .line 168
    invoke-direct {v2, v8, v5, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 172
    .line 173
    new-instance v8, Lorg/hmwebrtc/VideoCodecStatus;

    .line 174
    .line 175
    const/16 v15, -0xe

    .line 176
    .line 177
    const-string v5, "TARGET_BITRATE_OVERSHOOT"

    .line 178
    .line 179
    move-object/from16 v18, v2

    .line 180
    .line 181
    const/16 v2, 0xf

    .line 182
    .line 183
    invoke-direct {v8, v5, v2, v15}, Lorg/hmwebrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v8, Lorg/hmwebrtc/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 187
    .line 188
    const/16 v5, 0x10

    .line 189
    .line 190
    new-array v5, v5, [Lorg/hmwebrtc/VideoCodecStatus;

    .line 191
    .line 192
    const/4 v15, 0x0

    .line 193
    aput-object v0, v5, v15

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    aput-object v1, v5, v0

    .line 197
    .line 198
    const/4 v0, 0x2

    .line 199
    aput-object v4, v5, v0

    .line 200
    .line 201
    const/4 v0, 0x3

    .line 202
    aput-object v7, v5, v0

    .line 203
    .line 204
    const/4 v0, 0x4

    .line 205
    aput-object v10, v5, v0

    .line 206
    .line 207
    const/4 v0, 0x5

    .line 208
    aput-object v12, v5, v0

    .line 209
    .line 210
    const/4 v0, 0x6

    .line 211
    aput-object v13, v5, v0

    .line 212
    .line 213
    const/4 v0, 0x7

    .line 214
    aput-object v14, v5, v0

    .line 215
    .line 216
    const/16 v0, 0x8

    .line 217
    .line 218
    aput-object v3, v5, v0

    .line 219
    .line 220
    const/16 v0, 0x9

    .line 221
    .line 222
    aput-object v6, v5, v0

    .line 223
    .line 224
    const/16 v0, 0xa

    .line 225
    .line 226
    aput-object v9, v5, v0

    .line 227
    .line 228
    const/16 v0, 0xb

    .line 229
    .line 230
    aput-object v11, v5, v0

    .line 231
    .line 232
    const/16 v0, 0xc

    .line 233
    .line 234
    aput-object v16, v5, v0

    .line 235
    .line 236
    const/16 v0, 0xd

    .line 237
    .line 238
    aput-object v17, v5, v0

    .line 239
    .line 240
    const/16 v0, 0xe

    .line 241
    .line 242
    aput-object v18, v5, v0

    .line 243
    .line 244
    aput-object v8, v5, v2

    .line 245
    .line 246
    sput-object v5, Lorg/hmwebrtc/VideoCodecStatus;->$VALUES:[Lorg/hmwebrtc/VideoCodecStatus;

    .line 247
    .line 248
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/hmwebrtc/VideoCodecStatus;->number:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 1

    .line 1
    const-class v0, Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/hmwebrtc/VideoCodecStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/hmwebrtc/VideoCodecStatus;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->$VALUES:[Lorg/hmwebrtc/VideoCodecStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/hmwebrtc/VideoCodecStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/hmwebrtc/VideoCodecStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoCodecStatus;->number:I

    .line 2
    .line 3
    return v0
.end method
