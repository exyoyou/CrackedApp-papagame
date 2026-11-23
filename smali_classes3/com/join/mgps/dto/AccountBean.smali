.class public Lcom/join/mgps/dto/AccountBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/AccountBean$MemberInfo;
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private account_type:I

.field private avatarSrc:Ljava/lang/String;

.field private cloudCoin:D

.field private cloudDiamond:D

.field private exp:Ljava/lang/String;

.field private gameTime:J

.field private gender:I

.field private is_anchor:I

.field private is_bind_qq:I

.field private is_bind_wb:I

.field private is_bind_wx:I

.field private is_real_name:I

.field private level:I

.field private live_total_charm:I

.field private member_time:J

.field private member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private papaMoney:J

.field private pass:Ljava/lang/String;

.field private pay_top_tip:Ljava/lang/String;

.field private pwd_set_up:I

.field private registerTime:J

.field private secretKey:Ljava/lang/String;

.field private status:Z

.field private surplusExp:Ljava/lang/String;

.field private svip_level:I

.field private token:Ljava/lang/String;

.field private uid:I

.field private vip_exp_time:J

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 16
    .line 17
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 36
    .line 37
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 38
    .line 39
    iput-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 40
    .line 41
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 42
    .line 43
    iput v0, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    .line 44
    .line 45
    return-void
.end method

.method public static convert(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/join/mgps/dto/AccountBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getRegisterTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setRegisterTime(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSurplusExp()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSurplusExp(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPayTopTip()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPay_top_tip(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setToken(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount_type(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :catch_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipLevel()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 178
    .line 179
    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v1

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getLiveTotalCharm()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsRealName()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_real_name(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSecretKey(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_time(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setGameTime(J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    .line 241
    .line 242
    .line 243
    move-result-wide v2

    .line 244
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/dto/AccountBean;->setCloudDiamond(D)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/dto/AccountBean;->setCloudCoin(D)V

    .line 252
    .line 253
    .line 254
    new-instance v2, Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 255
    .line 256
    invoke-direct {v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getLevel()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setLevel(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setBattleTitle(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitleColor()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setBattleTitleColor(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setVipType(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setMonthExpireTime(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setSeasonExpireTime(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setYearExpireTime(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setShowLabelContent(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setTotalTime(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipTime()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setVipTime(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->setVip(Z)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 349
    .line 350
    .line 351
    return-object v0
.end method


# virtual methods
.method public cloneNewAccountBean()Lcom/join/mgps/dto/AccountBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setRegisterTime(J)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSurplusExp(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPay_top_tip(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setToken(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setStatus(Z)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPass(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount_type(I)V

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setVip_level(I)V

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSvip_level(I)V

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setVip_exp_time(J)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLive_total_charm(I)V

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_real_name(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setSecretKey(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setMember_time(J)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAccount_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvatarSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudCoin()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->cloudCoin:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCloudDiamond()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->cloudDiamond:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->gameTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_anchor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_bind_qq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_bind_wb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_bind_wx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_real_name()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLive_total_charm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 2
    .line 3
    return v0
.end method

.method public getMember_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapaMoney()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_top_tip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPwd_set_up()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    .line 2
    .line 3
    return v0
.end method

.method public getRegisterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurplusExp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip_exp_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public isStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAccount_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setAvatarSrc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarSrc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCloudCoin(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudCoin"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->cloudCoin:D

    .line 2
    .line 3
    return-void
.end method

.method public setCloudDiamond(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudDiamond"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->cloudDiamond:D

    .line 2
    .line 3
    return-void
.end method

.method public setExp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->gameTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gender"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_anchor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_anchor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bind_qq(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_bind_qq"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bind_wb(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_bind_wb"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bind_wx(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_bind_wx"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_real_name(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_real_name"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setLive_total_charm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "live_total_charm"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 2
    .line 3
    return-void
.end method

.method public setMember_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setMember_title(Lcom/join/mgps/dto/AccountBean$MemberInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPapaMoney(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papaMoney"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 2
    .line 3
    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pass"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_top_tip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_top_tip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPwd_set_up(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pwd_set_up"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    .line 2
    .line 3
    return-void
.end method

.method public setRegisterTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registerTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->secretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSurplusExp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surplusExp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSvip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "svip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip_exp_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_exp_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setVip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AccountBean{uid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->uid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", account=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->account:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", papaMoney="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->papaMoney:J

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", registerTime="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lcom/join/mgps/dto/AccountBean;->registerTime:J

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", avatarSrc=\'"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->avatarSrc:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", exp=\'"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->exp:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", level="

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->level:I

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", surplusExp=\'"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->surplusExp:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ", nickname=\'"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->nickname:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ", mobile=\'"

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->mobile:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ", pay_top_tip=\'"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->pay_top_tip:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ", gender="

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->gender:I

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ", token=\'"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->token:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, ", status="

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-boolean v2, p0, Lcom/join/mgps/dto/AccountBean;->status:Z

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, ", pwd_set_up="

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v2, p0, Lcom/join/mgps/dto/AccountBean;->pwd_set_up:I

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ", pass=\'"

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/dto/AccountBean;->pass:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, ", account_type="

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->account_type:I

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, ", vip_level="

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_level:I

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, ", svip_level="

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->svip_level:I

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, ", vip_exp_time="

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->vip_exp_time:J

    .line 231
    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, ", live_total_charm="

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->live_total_charm:I

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ", is_anchor="

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_anchor:I

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, ", is_bind_wb="

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wb:I

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, ", is_bind_wx="

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_wx:I

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, ", is_bind_qq="

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_bind_qq:I

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, ", is_real_name="

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget v1, p0, Lcom/join/mgps/dto/AccountBean;->is_real_name:I

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v1, ", member_title="

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/join/mgps/dto/AccountBean;->member_title:Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v1, ", member_time="

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountBean;->member_time:J

    .line 311
    .line 312
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const/16 v1, 0x7d

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    return-object v0
.end method
