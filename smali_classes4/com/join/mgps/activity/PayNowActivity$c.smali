.class Lcom/join/mgps/activity/PayNowActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PayCenterOrderRequest;

.field final synthetic b:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity;->access$200(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->access$200(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    .line 7
    .line 8
    const-string v0, "alipaymobilesign"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/join/mgps/dto/PaygameResponse;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaygameResponse;->getOrder()Lcom/join/mgps/dto/PayGamepayData;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getCallbackURL()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_callback_url(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getAmount()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/high16 v5, 0x42c80000    # 100.0f

    .line 58
    .line 59
    div-float/2addr v4, v5

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPay_rmb(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getSdkAppKey()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_key(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getOrderId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_order_id(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getSdkPayURL()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/join/mgps/rpc/h;->q:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getPayMode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v1, :cond_0

    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPayNow(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 113
    .line 114
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGamepayData;->getWebPaymentURL()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const/16 v0, 0x2710

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 144
    .line 145
    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 146
    .line 147
    invoke-static {v3}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 174
    .line 175
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 188
    .line 189
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_2
    if-eqz p1, :cond_3

    .line 194
    .line 195
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 198
    .line 199
    invoke-static {v3}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 226
    .line 227
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 240
    .line 241
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 246
    .line 247
    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 248
    .line 249
    invoke-static {v3}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    const-string v4, "\u83b7\u53d6\u6e38\u620f\u6570\u636e\u5931\u8d25"

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 259
    .line 260
    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 289
    .line 290
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$c;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 303
    .line 304
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 305
    .line 306
    .line 307
    :goto_0
    return-void
.end method
