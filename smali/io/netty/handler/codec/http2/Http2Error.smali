.class public final enum Lio/netty/handler/codec/http2/Http2Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CANCEL:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field private static final INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

.field public static final enum STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;


# instance fields
.field private final code:J


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/Http2Error;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const-string v3, "NO_ERROR"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 12
    .line 13
    new-instance v1, Lio/netty/handler/codec/http2/Http2Error;

    .line 14
    .line 15
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    const-string v5, "PROTOCOL_ERROR"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    invoke-direct {v1, v5, v6, v2, v3}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 24
    .line 25
    new-instance v2, Lio/netty/handler/codec/http2/Http2Error;

    .line 26
    .line 27
    const-wide/16 v7, 0x2

    .line 28
    .line 29
    const-string v3, "INTERNAL_ERROR"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v3, v5, v7, v8}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 36
    .line 37
    new-instance v3, Lio/netty/handler/codec/http2/Http2Error;

    .line 38
    .line 39
    const-wide/16 v7, 0x3

    .line 40
    .line 41
    const-string v9, "FLOW_CONTROL_ERROR"

    .line 42
    .line 43
    const/4 v10, 0x3

    .line 44
    invoke-direct {v3, v9, v10, v7, v8}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lio/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 48
    .line 49
    new-instance v7, Lio/netty/handler/codec/http2/Http2Error;

    .line 50
    .line 51
    const-wide/16 v8, 0x4

    .line 52
    .line 53
    const-string v11, "SETTINGS_TIMEOUT"

    .line 54
    .line 55
    const/4 v12, 0x4

    .line 56
    invoke-direct {v7, v11, v12, v8, v9}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lio/netty/handler/codec/http2/Http2Error;->SETTINGS_TIMEOUT:Lio/netty/handler/codec/http2/Http2Error;

    .line 60
    .line 61
    new-instance v8, Lio/netty/handler/codec/http2/Http2Error;

    .line 62
    .line 63
    const-wide/16 v13, 0x5

    .line 64
    .line 65
    const-string v9, "STREAM_CLOSED"

    .line 66
    .line 67
    const/4 v11, 0x5

    .line 68
    invoke-direct {v8, v9, v11, v13, v14}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 72
    .line 73
    new-instance v9, Lio/netty/handler/codec/http2/Http2Error;

    .line 74
    .line 75
    const-wide/16 v13, 0x6

    .line 76
    .line 77
    const-string v15, "FRAME_SIZE_ERROR"

    .line 78
    .line 79
    const/4 v11, 0x6

    .line 80
    invoke-direct {v9, v15, v11, v13, v14}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 81
    .line 82
    .line 83
    sput-object v9, Lio/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 84
    .line 85
    new-instance v13, Lio/netty/handler/codec/http2/Http2Error;

    .line 86
    .line 87
    const-wide/16 v14, 0x7

    .line 88
    .line 89
    const-string v11, "REFUSED_STREAM"

    .line 90
    .line 91
    const/4 v12, 0x7

    .line 92
    invoke-direct {v13, v11, v12, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 93
    .line 94
    .line 95
    sput-object v13, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    .line 96
    .line 97
    new-instance v11, Lio/netty/handler/codec/http2/Http2Error;

    .line 98
    .line 99
    const-wide/16 v14, 0x8

    .line 100
    .line 101
    const-string v12, "CANCEL"

    .line 102
    .line 103
    const/16 v10, 0x8

    .line 104
    .line 105
    invoke-direct {v11, v12, v10, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 106
    .line 107
    .line 108
    sput-object v11, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    .line 109
    .line 110
    new-instance v12, Lio/netty/handler/codec/http2/Http2Error;

    .line 111
    .line 112
    const-wide/16 v14, 0x9

    .line 113
    .line 114
    const-string v10, "COMPRESSION_ERROR"

    .line 115
    .line 116
    const/16 v5, 0x9

    .line 117
    .line 118
    invoke-direct {v12, v10, v5, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 119
    .line 120
    .line 121
    sput-object v12, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 122
    .line 123
    new-instance v10, Lio/netty/handler/codec/http2/Http2Error;

    .line 124
    .line 125
    const-wide/16 v14, 0xa

    .line 126
    .line 127
    const-string v5, "CONNECT_ERROR"

    .line 128
    .line 129
    const/16 v6, 0xa

    .line 130
    .line 131
    invoke-direct {v10, v5, v6, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 132
    .line 133
    .line 134
    sput-object v10, Lio/netty/handler/codec/http2/Http2Error;->CONNECT_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 135
    .line 136
    new-instance v5, Lio/netty/handler/codec/http2/Http2Error;

    .line 137
    .line 138
    const-wide/16 v14, 0xb

    .line 139
    .line 140
    const-string v6, "ENHANCE_YOUR_CALM"

    .line 141
    .line 142
    const/16 v4, 0xb

    .line 143
    .line 144
    invoke-direct {v5, v6, v4, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    .line 148
    .line 149
    new-instance v6, Lio/netty/handler/codec/http2/Http2Error;

    .line 150
    .line 151
    const-wide/16 v14, 0xc

    .line 152
    .line 153
    const-string v4, "INADEQUATE_SECURITY"

    .line 154
    .line 155
    move-object/from16 v16, v5

    .line 156
    .line 157
    const/16 v5, 0xc

    .line 158
    .line 159
    invoke-direct {v6, v4, v5, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 160
    .line 161
    .line 162
    sput-object v6, Lio/netty/handler/codec/http2/Http2Error;->INADEQUATE_SECURITY:Lio/netty/handler/codec/http2/Http2Error;

    .line 163
    .line 164
    new-instance v4, Lio/netty/handler/codec/http2/Http2Error;

    .line 165
    .line 166
    const-wide/16 v14, 0xd

    .line 167
    .line 168
    const-string v5, "HTTP_1_1_REQUIRED"

    .line 169
    .line 170
    move-object/from16 v17, v6

    .line 171
    .line 172
    const/16 v6, 0xd

    .line 173
    .line 174
    invoke-direct {v4, v5, v6, v14, v15}, Lio/netty/handler/codec/http2/Http2Error;-><init>(Ljava/lang/String;IJ)V

    .line 175
    .line 176
    .line 177
    sput-object v4, Lio/netty/handler/codec/http2/Http2Error;->HTTP_1_1_REQUIRED:Lio/netty/handler/codec/http2/Http2Error;

    .line 178
    .line 179
    const/16 v5, 0xe

    .line 180
    .line 181
    new-array v5, v5, [Lio/netty/handler/codec/http2/Http2Error;

    .line 182
    .line 183
    const/4 v14, 0x0

    .line 184
    aput-object v0, v5, v14

    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    aput-object v1, v5, v0

    .line 188
    .line 189
    const/4 v0, 0x2

    .line 190
    aput-object v2, v5, v0

    .line 191
    .line 192
    const/4 v0, 0x3

    .line 193
    aput-object v3, v5, v0

    .line 194
    .line 195
    const/4 v0, 0x4

    .line 196
    aput-object v7, v5, v0

    .line 197
    .line 198
    const/4 v0, 0x5

    .line 199
    aput-object v8, v5, v0

    .line 200
    .line 201
    const/4 v0, 0x6

    .line 202
    aput-object v9, v5, v0

    .line 203
    .line 204
    const/4 v0, 0x7

    .line 205
    aput-object v13, v5, v0

    .line 206
    .line 207
    const/16 v0, 0x8

    .line 208
    .line 209
    aput-object v11, v5, v0

    .line 210
    .line 211
    const/16 v0, 0x9

    .line 212
    .line 213
    aput-object v12, v5, v0

    .line 214
    .line 215
    const/16 v0, 0xa

    .line 216
    .line 217
    aput-object v10, v5, v0

    .line 218
    .line 219
    const/16 v0, 0xb

    .line 220
    .line 221
    aput-object v16, v5, v0

    .line 222
    .line 223
    const/16 v0, 0xc

    .line 224
    .line 225
    aput-object v17, v5, v0

    .line 226
    .line 227
    aput-object v4, v5, v6

    .line 228
    .line 229
    sput-object v5, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    .line 230
    .line 231
    invoke-static {}, Lio/netty/handler/codec/http2/Http2Error;->values()[Lio/netty/handler/codec/http2/Http2Error;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    array-length v1, v0

    .line 236
    new-array v1, v1, [Lio/netty/handler/codec/http2/Http2Error;

    .line 237
    .line 238
    array-length v2, v0

    .line 239
    const/4 v4, 0x0

    .line 240
    :goto_0
    if-ge v4, v2, :cond_0

    .line 241
    .line 242
    aget-object v3, v0, v4

    .line 243
    .line 244
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    .line 245
    .line 246
    .line 247
    move-result-wide v5

    .line 248
    long-to-int v6, v5

    .line 249
    aput-object v3, v1, v6

    .line 250
    .line 251
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_0
    sput-object v1, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    .line 255
    .line 256
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(J)Lio/netty/handler/codec/http2/Http2Error;
    .locals 4

    .line 2
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INT_TO_ENUM_MAP:[Lio/netty/handler/codec/http2/Http2Error;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, p0

    aget-object p0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    .line 1
    const-class v0, Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Error;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->$VALUES:[Lio/netty/handler/codec/http2/Http2Error;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Error;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/netty/handler/codec/http2/Http2Error;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public code()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/Http2Error;->code:J

    .line 2
    .line 3
    return-wide v0
.end method
