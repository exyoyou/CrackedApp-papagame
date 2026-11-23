.class public final Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$g;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$i;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$h;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$j;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$e;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$f;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$c;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSummaryResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$d;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;,
        Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final g:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final i:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final k:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final m:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final o:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final q:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final r:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static s:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "\n*proto/cloud_gaming_playtime_response.proto\u001a#proto/enumeration/enumeration.proto\"\u008a\u0001\n+MessageCloudGamingPlaytimeLogResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u001a\n\u0004data\u0018\u0002 \u0003(\u000b2\u000c.PlaytimeLog\u0012\u001e\n\u0004info\u0018\u0003 \u0001(\u000b2\u0010.PlaytimeSummary\u0012\u0010\n\u0008errorMsg\u0018\u0004 \u0001(\t\"r\n/MessageCloudGamingPlaytimeSummaryResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\u0012\u001e\n\u0004into\u0018\u0003 \u0001(\u000b2\u0010.PlaytimeSummary\"t\n.MessageCloudGamingPlaytimeSignInResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\u0012!\n\u0004into\u0018\u0003 \u0001(\u000b2\u0013.PlaytimeSignInInfo\"v\n/MessageCloudGamingPlaytimeVipDaysResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\u0012\"\n\u0004into\u0018\u0003 \u0001(\u000b2\u0014.PlaytimeVipDaysInfo\"z\n3MessageCloudGamingPlaytimeVipBirthdayResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\u0012\"\n\u0004into\u0018\u0003 \u0001(\u000b2\u0014.PlaytimeVipDaysInfo\"(\n\u0013PlaytimeVipDaysInfo\u0012\u0011\n\ttotalTime\u0018\u0001 \u0001(\t\"J\n\u0012PlaytimeSignInInfo\u0012\u0010\n\u0008freeTime\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\u0002 \u0001(\t\u0012\u0011\n\ttotalTime\u0018\u0003 \u0001(\t\"\u008d\u0001\n\u000fPlaytimeSummary\u0012\u0011\n\ttotalTime\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008freeTime\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007diamond\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004coin\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bdiamondTime\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008coinTime\u0018\u0007 \u0001(\t\"r\n\u000bPlaytimeLog\u0012/\n\u000cplaytimeType\u0018\u0001 \u0001(\u000e2\u0019.enumeration.PlaytimeType\u0012\r\n\u0005title\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007addTime\u0018\u0003 \u0001(\t\u0012\u0012\n\nchangeTime\u0018\u0004 \u0001(\tBE\n\u001fcom.wufan.user.service.protobufB\"MessageCloudGamingPlaytimeResponseb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 22
    .line 23
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 36
    .line 37
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    .line 39
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 40
    .line 41
    const-string v3, "Error"

    .line 42
    .line 43
    const-string v4, "Data"

    .line 44
    .line 45
    const-string v5, "Info"

    .line 46
    .line 47
    const-string v6, "ErrorMsg"

    .line 48
    .line 49
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 57
    .line 58
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 71
    .line 72
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 73
    .line 74
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 75
    .line 76
    const-string v2, "Into"

    .line 77
    .line 78
    filled-new-array {v3, v6, v2}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 86
    .line 87
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x2

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 101
    .line 102
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 103
    .line 104
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 105
    .line 106
    filled-new-array {v3, v6, v2}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 114
    .line 115
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x3

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 129
    .line 130
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 131
    .line 132
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 133
    .line 134
    filled-new-array {v3, v6, v2}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 142
    .line 143
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/4 v1, 0x4

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 157
    .line 158
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 159
    .line 160
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 161
    .line 162
    filled-new-array {v3, v6, v2}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 170
    .line 171
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/4 v1, 0x5

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 185
    .line 186
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 187
    .line 188
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 189
    .line 190
    const-string v2, "TotalTime"

    .line 191
    .line 192
    filled-new-array {v2}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 200
    .line 201
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/4 v1, 0x6

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 215
    .line 216
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 217
    .line 218
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 219
    .line 220
    const-string v3, "FreeTime"

    .line 221
    .line 222
    const-string v4, "VipTime"

    .line 223
    .line 224
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 232
    .line 233
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const/4 v1, 0x7

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 247
    .line 248
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 249
    .line 250
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 251
    .line 252
    const-string v2, "TotalTime"

    .line 253
    .line 254
    const-string v3, "FreeTime"

    .line 255
    .line 256
    const-string v4, "VipTime"

    .line 257
    .line 258
    const-string v5, "Diamond"

    .line 259
    .line 260
    const-string v6, "Coin"

    .line 261
    .line 262
    const-string v7, "DiamondTime"

    .line 263
    .line 264
    const-string v8, "CoinTime"

    .line 265
    .line 266
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 274
    .line 275
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const/16 v1, 0x8

    .line 284
    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 290
    .line 291
    sput-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 292
    .line 293
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 294
    .line 295
    const-string v2, "AddTime"

    .line 296
    .line 297
    const-string v3, "ChangeTime"

    .line 298
    .line 299
    const-string v4, "PlaytimeType"

    .line 300
    .line 301
    const-string v5, "Title"

    .line 302
    .line 303
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    sput-object v1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->r:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 311
    .line 312
    invoke-static {}, Lcom/wufan/user/service/protobuf/enumeration/a;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->r:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->n:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->p:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public static s()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->s:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static t(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse;->u(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 1
    return-void
.end method
