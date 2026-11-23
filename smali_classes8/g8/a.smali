.class public Lg8/a;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->newBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setUid(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->getPapaMoney()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPapaMoney(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getRegisterTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setRegisterTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAvatarSrc(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getExp()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getExp()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getSurplusExp()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getSurplusExp()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSurplusExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getPay_top_tip()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPayTopTip(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGender(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPwdSetUp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAccountType(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipExpTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getLive_total_charm()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLiveTotalCharm(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsAnchor(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_2

    .line 178
    .line 179
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->newBuilder()Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setBattleTitle(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setLevel(I)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitleColor()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setBattleTitleColor(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getIs_real_name()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsRealName(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getSecretKey()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_3

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getSecretKey()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 237
    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v1, v2, v3}, Lg8/a;->b(ILjava/lang/String;I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 257
    .line 258
    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/AccountBean;->getMember_time()J

    .line 260
    .line 261
    .line 262
    move-result-wide v1

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMemberTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    return-object p0
.end method

.method private static b(ILjava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "piv"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "|"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v1, "uid"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string p0, "token"

    .line 40
    .line 41
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string p0, "t"

    .line 45
    .line 46
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    const-string p0, ""

    .line 63
    .line 64
    return-object p0
.end method
