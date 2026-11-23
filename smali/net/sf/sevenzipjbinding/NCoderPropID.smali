.class public final enum Lnet/sf/sevenzipjbinding/NCoderPropID;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/NCoderPropID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kAlgorithm:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kBlockSize:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kDefaultProp:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kDictionarySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kEndMarker:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kLitContextBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kLitPosBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kMatchFinder:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kMatchFinderCycles:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumFastBytes:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumPasses:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kNumThreads:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kOrder:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kPosStateBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

.field public static final enum kUsedMemorySize:Lnet/sf/sevenzipjbinding/NCoderPropID;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    .line 5
    const-string v2, "C"

    .line 6
    .line 7
    const-string v3, "kBlockSize"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnet/sf/sevenzipjbinding/NCoderPropID;->kBlockSize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 14
    .line 15
    new-instance v2, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 16
    .line 17
    const-string v3, "D"

    .line 18
    .line 19
    const-string v5, "kDictionarySize"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct {v2, v5, v6, v1, v3}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lnet/sf/sevenzipjbinding/NCoderPropID;->kDictionarySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 26
    .line 27
    new-instance v3, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 28
    .line 29
    const-string v5, "MEM"

    .line 30
    .line 31
    const-string v7, "kUsedMemorySize"

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    invoke-direct {v3, v7, v8, v1, v5}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lnet/sf/sevenzipjbinding/NCoderPropID;->kUsedMemorySize:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 38
    .line 39
    new-instance v5, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 40
    .line 41
    const-string v7, "O"

    .line 42
    .line 43
    const-string v9, "kOrder"

    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    invoke-direct {v5, v9, v10, v1, v7}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v5, Lnet/sf/sevenzipjbinding/NCoderPropID;->kOrder:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 50
    .line 51
    new-instance v7, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 52
    .line 53
    const-string v9, "PB"

    .line 54
    .line 55
    const-string v11, "kPosStateBits"

    .line 56
    .line 57
    const/4 v12, 0x4

    .line 58
    invoke-direct {v7, v11, v12, v1, v9}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v7, Lnet/sf/sevenzipjbinding/NCoderPropID;->kPosStateBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 62
    .line 63
    new-instance v9, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 64
    .line 65
    const-string v11, "LC"

    .line 66
    .line 67
    const-string v13, "kLitContextBits"

    .line 68
    .line 69
    const/4 v14, 0x5

    .line 70
    invoke-direct {v9, v13, v14, v1, v11}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v9, Lnet/sf/sevenzipjbinding/NCoderPropID;->kLitContextBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 74
    .line 75
    new-instance v11, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 76
    .line 77
    const-string v13, "LP"

    .line 78
    .line 79
    const-string v15, "kLitPosBits"

    .line 80
    .line 81
    const/4 v14, 0x6

    .line 82
    invoke-direct {v11, v15, v14, v1, v13}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v11, Lnet/sf/sevenzipjbinding/NCoderPropID;->kLitPosBits:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 86
    .line 87
    new-instance v13, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 88
    .line 89
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    const-string v14, "eos"

    .line 92
    .line 93
    const-string v12, "kEndMarker"

    .line 94
    .line 95
    const/4 v10, 0x7

    .line 96
    invoke-direct {v13, v12, v10, v15, v14}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v13, Lnet/sf/sevenzipjbinding/NCoderPropID;->kEndMarker:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 100
    .line 101
    new-instance v12, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 102
    .line 103
    const-string v14, "Pass"

    .line 104
    .line 105
    const-string v15, "kNumPasses"

    .line 106
    .line 107
    const/16 v10, 0x8

    .line 108
    .line 109
    invoke-direct {v12, v15, v10, v1, v14}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumPasses:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 113
    .line 114
    new-instance v14, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 115
    .line 116
    const-string v15, "fb"

    .line 117
    .line 118
    const-string v10, "kNumFastBytes"

    .line 119
    .line 120
    const/16 v8, 0x9

    .line 121
    .line 122
    invoke-direct {v14, v10, v8, v1, v15}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sput-object v14, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumFastBytes:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 126
    .line 127
    new-instance v10, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 128
    .line 129
    const-string v15, "mc"

    .line 130
    .line 131
    const-string v8, "kMatchFinderCycles"

    .line 132
    .line 133
    const/16 v6, 0xa

    .line 134
    .line 135
    invoke-direct {v10, v8, v6, v1, v15}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v10, Lnet/sf/sevenzipjbinding/NCoderPropID;->kMatchFinderCycles:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 139
    .line 140
    new-instance v8, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 141
    .line 142
    const-string v15, "a"

    .line 143
    .line 144
    const-string v6, "kAlgorithm"

    .line 145
    .line 146
    const/16 v4, 0xb

    .line 147
    .line 148
    invoke-direct {v8, v6, v4, v1, v15}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v8, Lnet/sf/sevenzipjbinding/NCoderPropID;->kAlgorithm:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 152
    .line 153
    new-instance v6, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 154
    .line 155
    const-class v15, Ljava/lang/String;

    .line 156
    .line 157
    const-string v4, "mf"

    .line 158
    .line 159
    move-object/from16 v16, v8

    .line 160
    .line 161
    const-string v8, "kMatchFinder"

    .line 162
    .line 163
    move-object/from16 v17, v10

    .line 164
    .line 165
    const/16 v10, 0xc

    .line 166
    .line 167
    invoke-direct {v6, v8, v10, v15, v4}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sput-object v6, Lnet/sf/sevenzipjbinding/NCoderPropID;->kMatchFinder:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 171
    .line 172
    new-instance v4, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 173
    .line 174
    const-string v8, "mt"

    .line 175
    .line 176
    const-string v15, "kNumThreads"

    .line 177
    .line 178
    const/16 v10, 0xd

    .line 179
    .line 180
    invoke-direct {v4, v15, v10, v1, v8}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sput-object v4, Lnet/sf/sevenzipjbinding/NCoderPropID;->kNumThreads:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 184
    .line 185
    new-instance v8, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 186
    .line 187
    const-string v15, ""

    .line 188
    .line 189
    const-string v10, "kDefaultProp"

    .line 190
    .line 191
    move-object/from16 v18, v4

    .line 192
    .line 193
    const/16 v4, 0xe

    .line 194
    .line 195
    invoke-direct {v8, v10, v4, v1, v15}, Lnet/sf/sevenzipjbinding/NCoderPropID;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sput-object v8, Lnet/sf/sevenzipjbinding/NCoderPropID;->kDefaultProp:Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 199
    .line 200
    const/16 v1, 0xf

    .line 201
    .line 202
    new-array v1, v1, [Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 203
    .line 204
    const/4 v10, 0x0

    .line 205
    aput-object v0, v1, v10

    .line 206
    .line 207
    const/4 v0, 0x1

    .line 208
    aput-object v2, v1, v0

    .line 209
    .line 210
    const/4 v0, 0x2

    .line 211
    aput-object v3, v1, v0

    .line 212
    .line 213
    const/4 v0, 0x3

    .line 214
    aput-object v5, v1, v0

    .line 215
    .line 216
    const/4 v0, 0x4

    .line 217
    aput-object v7, v1, v0

    .line 218
    .line 219
    const/4 v0, 0x5

    .line 220
    aput-object v9, v1, v0

    .line 221
    .line 222
    const/4 v0, 0x6

    .line 223
    aput-object v11, v1, v0

    .line 224
    .line 225
    const/4 v0, 0x7

    .line 226
    aput-object v13, v1, v0

    .line 227
    .line 228
    const/16 v0, 0x8

    .line 229
    .line 230
    aput-object v12, v1, v0

    .line 231
    .line 232
    const/16 v0, 0x9

    .line 233
    .line 234
    aput-object v14, v1, v0

    .line 235
    .line 236
    const/16 v0, 0xa

    .line 237
    .line 238
    aput-object v17, v1, v0

    .line 239
    .line 240
    const/16 v0, 0xb

    .line 241
    .line 242
    aput-object v16, v1, v0

    .line 243
    .line 244
    const/16 v0, 0xc

    .line 245
    .line 246
    aput-object v6, v1, v0

    .line 247
    .line 248
    const/16 v0, 0xd

    .line 249
    .line 250
    aput-object v18, v1, v0

    .line 251
    .line 252
    aput-object v8, v1, v4

    .line 253
    .line 254
    sput-object v1, Lnet/sf/sevenzipjbinding/NCoderPropID;->$VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 255
    .line 256
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/sf/sevenzipjbinding/NCoderPropID;->clazz:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p4, p0, Lnet/sf/sevenzipjbinding/NCoderPropID;->option:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/NCoderPropID;
    .locals 1

    .line 1
    const-class v0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/NCoderPropID;
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/sevenzipjbinding/NCoderPropID;->$VALUES:[Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/NCoderPropID;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/sf/sevenzipjbinding/NCoderPropID;

    .line 8
    .line 9
    return-object v0
.end method
