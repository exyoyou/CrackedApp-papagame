.class public final Lcom/wufan/user/service/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final g:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final i:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final k:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static m:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    const-string v0, "\n\u0018user_info_response.proto\"J\n\u000eResponseResult\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0017\n\u0004data\u0018\u0002 \u0001(\u000b2\t.UserInfo\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\"6\n\u0013SetBirthdayResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\u0005\u0012\u0010\n\u0008errorMsg\u0018\u0002 \u0001(\t\"\u0096\u0005\n\u0008UserInfo\u0012\u000b\n\u0003uid\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007account\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008nickname\u0018\u001d \u0001(\t\u0012\u0010\n\u0008pwdSetUp\u0018\u0003 \u0001(\u0005\u0012\u0011\n\tpapaMoney\u0018\u0004 \u0001(\u0003\u0012\u0014\n\u000cregisterTime\u0018\u0005 \u0001(\u0003\u0012\u0011\n\tavatarSrc\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006gender\u0018\u0007 \u0001(\u0005\u0012\r\n\u0005level\u0018\u0008 \u0001(\u0005\u0012\u000b\n\u0003exp\u0018\t \u0001(\u0005\u0012\u000e\n\u0006mobile\u0018\n \u0001(\t\u0012\u0012\n\nsurplusExp\u0018\u000b \u0001(\u0005\u0012\u000f\n\u0007appleId\u0018\u000c \u0001(\t\u0012\u0013\n\u000baccountType\u0018\r \u0001(\u0005\u0012\u0010\n\u0008vipLevel\u0018\u000e \u0001(\u0005\u0012\u0011\n\tSVIPLevel\u0018\u000f \u0001(\u0005\u0012\u0012\n\nvipExpTime\u0018\u0010 \u0001(\u0003\u0012\u0016\n\u000eliveTotalCharm\u0018\u0011 \u0001(\u0005\u0012\u0010\n\u0008isAnchor\u0018\u0012 \u0001(\u0005\u0012%\n\u000bmemberTitle\u0018\u0013 \u0001(\u000b2\u0010.MemberTitleInfo\u0012\u0012\n\nisRealName\u0018\u0014 \u0001(\u0005\u0012\u0011\n\tpayTopTip\u0018\u0015 \u0001(\t\u0012\u0010\n\u0008isBindWb\u0018\u0016 \u0001(\u0005\u0012\u0010\n\u0008isBindWx\u0018\u0017 \u0001(\u0005\u0012\u0010\n\u0008isBindQq\u0018\u0018 \u0001(\u0005\u0012\u000f\n\u0007vipGame\u0018\u0019 \u0001(\u0005\u0012\r\n\u0005token\u0018\u001a \u0001(\t\u0012\u0011\n\tsecretKey\u0018\u001b \u0001(\t\u0012/\n\u0012gameListPermission\u0018\u001c \u0003(\u000b2\u0013.GameListPermission\u0012\u0012\n\nmemberTime\u0018\u001e \u0001(\u0003\u0012\u0010\n\u0008gameTime\u0018\u001f \u0001(\u0003\u0012%\n\rnewMemberInfo\u0018  \u0001(\u000b2\u000e.NewMemberInfo\"\u0085\u0003\n\rNewMemberInfo\u0012\u0014\n\u000ccloudDiamond\u0018\u0001 \u0001(\u0001\u0012\u0011\n\tcloudCoin\u0018\u0002 \u0001(\u0001\u0012\r\n\u0005isVip\u0018\u0003 \u0001(\u0008\u0012\u000f\n\u0007vipType\u0018\u0004 \u0001(\u0005\u0012\u0017\n\u000fmonthExpireTime\u0018\u0005 \u0001(\t\u0012\u0018\n\u0010seasonExpireTime\u0018\u0006 \u0001(\t\u0012\u0016\n\u000eyearExpireTime\u0018\u0007 \u0001(\t\u0012\u0015\n\rshowLabelType\u0018\u0008 \u0001(\u0005\u0012\u0018\n\u0010showLabelContent\u0018\t \u0001(\t\u0012\u000f\n\u0007vipTime\u0018\n \u0001(\t\u0012\u0013\n\u000bisBaoYeCard\u0018\u000b \u0001(\u0008\u0012\u0012\n\nisJiSuCard\u0018\u000c \u0001(\u0008\u0012\u000f\n\u0007propNum\u0018\r \u0001(\u0005\u0012\u0010\n\u0008isSigned\u0018\u000e \u0001(\u0008\u0012\u0013\n\u000bisNewMember\u0018\u000f \u0001(\u0008\u0012\u0015\n\rnewMemberDays\u0018\u0010 \u0001(\u0005\u0012\u0013\n\u000bshowNewGift\u0018\u0011 \u0001(\u0008\u0012\u0011\n\ttotalTime\u0018\u0012 \u0001(\t\"z\n\u0012GameListPermission\u0012\u000e\n\u0006gameId\u0018\u0001 \u0001(\u0003\u0012\u0010\n\u0008isOpenSp\u0018\u0002 \u0001(\u0008\u0012\u0014\n\u000cspExpireTime\u0018\u0003 \u0001(\u0003\u0012\u0013\n\u000bisOpenCheat\u0018\u0004 \u0001(\u0008\u0012\u0017\n\u000fcheatExpireTime\u0018\u0005 \u0001(\u0003\"O\n\u000fMemberTitleInfo\u0012\u0013\n\u000bbattleTitle\u0018\u0001 \u0001(\t\u0012\r\n\u0005level\u0018\u0002 \u0001(\u0005\u0012\u0018\n\u0010battleTitleColor\u0018\u0003 \u0001(\tB<\n\u001fcom.wufan.user.service.protobufB\u0017MessageUserInfoResponseP\u0001b\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/wufan/user/service/protobuf/c$a;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/wufan/user/service/protobuf/c$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14
    .line 15
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 35
    .line 36
    const-string v2, "Error"

    .line 37
    .line 38
    const-string v3, "Data"

    .line 39
    .line 40
    const-string v4, "ErrorMsg"

    .line 41
    .line 42
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->b:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 50
    .line 51
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 65
    .line 66
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 67
    .line 68
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 69
    .line 70
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 78
    .line 79
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 93
    .line 94
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 95
    .line 96
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 97
    .line 98
    const-string v2, "Uid"

    .line 99
    .line 100
    const-string v3, "Account"

    .line 101
    .line 102
    const-string v4, "Nickname"

    .line 103
    .line 104
    const-string v5, "PwdSetUp"

    .line 105
    .line 106
    const-string v6, "PapaMoney"

    .line 107
    .line 108
    const-string v7, "RegisterTime"

    .line 109
    .line 110
    const-string v8, "AvatarSrc"

    .line 111
    .line 112
    const-string v9, "Gender"

    .line 113
    .line 114
    const-string v10, "Level"

    .line 115
    .line 116
    const-string v11, "Exp"

    .line 117
    .line 118
    const-string v12, "Mobile"

    .line 119
    .line 120
    const-string v13, "SurplusExp"

    .line 121
    .line 122
    const-string v14, "AppleId"

    .line 123
    .line 124
    const-string v15, "AccountType"

    .line 125
    .line 126
    const-string v16, "VipLevel"

    .line 127
    .line 128
    const-string v17, "SVIPLevel"

    .line 129
    .line 130
    const-string v18, "VipExpTime"

    .line 131
    .line 132
    const-string v19, "LiveTotalCharm"

    .line 133
    .line 134
    const-string v20, "IsAnchor"

    .line 135
    .line 136
    const-string v21, "MemberTitle"

    .line 137
    .line 138
    const-string v22, "IsRealName"

    .line 139
    .line 140
    const-string v23, "PayTopTip"

    .line 141
    .line 142
    const-string v24, "IsBindWb"

    .line 143
    .line 144
    const-string v25, "IsBindWx"

    .line 145
    .line 146
    const-string v26, "IsBindQq"

    .line 147
    .line 148
    const-string v27, "VipGame"

    .line 149
    .line 150
    const-string v28, "Token"

    .line 151
    .line 152
    const-string v29, "SecretKey"

    .line 153
    .line 154
    const-string v30, "GameListPermission"

    .line 155
    .line 156
    const-string v31, "MemberTime"

    .line 157
    .line 158
    const-string v32, "GameTime"

    .line 159
    .line 160
    const-string v33, "NewMemberInfo"

    .line 161
    .line 162
    filled-new-array/range {v2 .. v33}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->f:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 170
    .line 171
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    const/4 v1, 0x3

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
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 187
    .line 188
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 189
    .line 190
    const-string v2, "CloudDiamond"

    .line 191
    .line 192
    const-string v3, "CloudCoin"

    .line 193
    .line 194
    const-string v4, "IsVip"

    .line 195
    .line 196
    const-string v5, "VipType"

    .line 197
    .line 198
    const-string v6, "MonthExpireTime"

    .line 199
    .line 200
    const-string v7, "SeasonExpireTime"

    .line 201
    .line 202
    const-string v8, "YearExpireTime"

    .line 203
    .line 204
    const-string v9, "ShowLabelType"

    .line 205
    .line 206
    const-string v10, "ShowLabelContent"

    .line 207
    .line 208
    const-string v11, "VipTime"

    .line 209
    .line 210
    const-string v12, "IsBaoYeCard"

    .line 211
    .line 212
    const-string v13, "IsJiSuCard"

    .line 213
    .line 214
    const-string v14, "PropNum"

    .line 215
    .line 216
    const-string v15, "IsSigned"

    .line 217
    .line 218
    const-string v16, "IsNewMember"

    .line 219
    .line 220
    const-string v17, "NewMemberDays"

    .line 221
    .line 222
    const-string v18, "ShowNewGift"

    .line 223
    .line 224
    const-string v19, "TotalTime"

    .line 225
    .line 226
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->h:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 234
    .line 235
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/4 v1, 0x4

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 249
    .line 250
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 251
    .line 252
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 253
    .line 254
    const-string v2, "IsOpenCheat"

    .line 255
    .line 256
    const-string v3, "CheatExpireTime"

    .line 257
    .line 258
    const-string v4, "GameId"

    .line 259
    .line 260
    const-string v5, "IsOpenSp"

    .line 261
    .line 262
    const-string v6, "SpExpireTime"

    .line 263
    .line 264
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->j:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 272
    .line 273
    invoke-static {}, Lcom/wufan/user/service/protobuf/c;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    const/4 v1, 0x5

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 287
    .line 288
    sput-object v0, Lcom/wufan/user/service/protobuf/c;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 289
    .line 290
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 291
    .line 292
    const-string v2, "Level"

    .line 293
    .line 294
    const-string v3, "BattleTitleColor"

    .line 295
    .line 296
    const-string v4, "BattleTitle"

    .line 297
    .line 298
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sput-object v1, Lcom/wufan/user/service/protobuf/c;->l:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 306
    .line 307
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

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/wufan/user/service/protobuf/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Lcom/google/protobuf/ExtensionRegistry;)V
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
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/c;->d(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lcom/google/protobuf/ExtensionRegistryLite;)V
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
