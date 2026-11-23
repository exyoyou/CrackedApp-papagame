.class public Lcom/join/mgps/dto/PayCenterOrderRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ALI_PAY:Ljava/lang/String; = "alipaymobilesign"

.field public static final ACTION_CREDIT_PAY:Ljava/lang/String; = "upmpmobilekongjian1"

.field public static final ACTION_PABI:Ljava/lang/String; = "papawallet"

.field public static final ACTION_UNION_PAY:Ljava/lang/String; = "upmpmobilekongjian"

.field public static final ACTION_WECHAT:Ljava/lang/String; = "weixinmobilenew"

.field public static final ACTION_WECHAT_OFFICIAL:Ljava/lang/String; = "wechatofficialpapa"

.field public static final ACTION_WECHAT_SWIFT:Ljava/lang/String; = "swiftpasspapa"

.field public static final ACTION_ZIWEI_WECHAT:Ljava/lang/String; = "ziweixingh5"

.field public static final PAY_TYPE_ALIPAY:Ljava/lang/String; = "1"

.field public static final PAY_TYPE_COUPON:Ljava/lang/String; = "coupon"

.field public static final PAY_TYPE_COUPON_RED:Ljava/lang/String; = "coupon_red_envelope"

.field public static final PAY_TYPE_COUPON_WALLET:Ljava/lang/String; = "coupon_wallet"

.field public static final PAY_TYPE_RECHARGE:Ljava/lang/String; = "2"

.field public static final PAY_TYPE_RED_ENVELOPE:Ljava/lang/String; = "red_envelope"

.field public static final PAY_TYPE_WALLET:Ljava/lang/String; = "wallet"


# instance fields
.field private action:Ljava/lang/String;

.field private app_callback_url:Ljava/lang/String;

.field private app_extra1:Ljava/lang/String;

.field private app_extra2:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_order_id:Ljava/lang/String;

.field private app_user_name:Ljava/lang/String;

.field private card_id:Ljava/lang/String;

.field private card_pass:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private kingnet_order_id:Ljava/lang/String;

.field private openuid:I

.field private package_name:Ljava/lang/String;

.field private pay_rmb:Ljava/lang/String;

.field private pay_type:Ljava/lang/String;

.field private product_id:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private resource_id:Ljava/lang/String;

.field private sid:I

.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private wallet_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "1264139"

    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "android"

    .line 48
    .line 49
    iput-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_callback_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_extra1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_extra2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_order_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_user_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArgs()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "app_extra1"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v1, "app_extra2"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v1, "app_key"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v1, "app_name"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string v1, "app_order_id"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "app_user_name"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "card_id"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "card_pass"

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v1, "imei"

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v1, "kingnet_order_id"

    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ""

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v3, "openuid"

    .line 97
    .line 98
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v1, "pay_rmb"

    .line 102
    .line 103
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v1, "pay_type"

    .line 109
    .line 110
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v1, "product_name"

    .line 116
    .line 117
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v1, "app_callback_url"

    .line 123
    .line 124
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v3, "sid"

    .line 147
    .line 148
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v1, "uid"

    .line 152
    .line 153
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v1, "product_id"

    .line 159
    .line 160
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v1, "resource_id"

    .line 166
    .line 167
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v3, "token"

    .line 190
    .line 191
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v3, "wallet_type"

    .line 212
    .line 213
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const-string v2, "device_type"

    .line 234
    .line 235
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const-string v1, "package_name"

    .line 239
    .line 240
    iget-object v2, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    return-object v0
.end method

.method public getArgsURLEncoder()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "utf8"

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v3, "app_extra1"

    .line 12
    .line 13
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v3, "app_extra2"

    .line 23
    .line 24
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v3, "app_key"

    .line 34
    .line 35
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v3, "app_name"

    .line 41
    .line 42
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v3, "app_order_id"

    .line 52
    .line 53
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v3, "app_user_name"

    .line 59
    .line 60
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v3, "card_id"

    .line 70
    .line 71
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v3, "card_pass"

    .line 77
    .line 78
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v3, "imei"

    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v3, "kingnet_order_id"

    .line 91
    .line 92
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v3, "openuid"

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget v5, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v3, "pay_rmb"

    .line 120
    .line 121
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    const-string v3, "pay_type"

    .line 127
    .line 128
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v3, "product_name"

    .line 134
    .line 135
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v3, "app_callback_url"

    .line 145
    .line 146
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v1, "sid"

    .line 156
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-string v1, "uid"

    .line 178
    .line 179
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const-string v1, "product_id"

    .line 185
    .line 186
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    const-string v1, "resource_id"

    .line 192
    .line 193
    iget-object v3, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const-string v1, "token"

    .line 199
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const-string v1, "wallet_type"

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string v1, "device_type"

    .line 243
    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const-string v0, "package_name"

    .line 265
    .line 266
    iget-object v1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .line 275
    .line 276
    :goto_0
    return-object v2
.end method

.method public getCard_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCard_pass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKingnet_order_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_rmb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProduct_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProduct_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResource_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    .line 2
    .line 3
    return v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWallet_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_callback_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_callback_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_callback_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_extra1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_extra1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_extra2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_extra2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_extra2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_order_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_order_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_order_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_user_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app_user_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->app_user_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCard_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "card_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCard_pass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "card_pass"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->card_pass:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->device_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imei"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->imei:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKingnet_order_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kingnet_order_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->kingnet_order_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOpenuid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openuid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->openuid:I

    .line 2
    .line 3
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_rmb(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_rmb"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_rmb:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->pay_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProduct_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProduct_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->product_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->resource_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sid:I

    .line 2
    .line 3
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->sign:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWallet_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wallet_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderRequest;->wallet_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
