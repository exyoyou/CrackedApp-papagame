.class public Lcom/join/mgps/activity/PayNowActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d008f
.end annotation


# static fields
.field public static final PARTNER:Ljava/lang/String; = ""

.field public static final RSA_PRIVATE:Ljava/lang/String; = ""

.field public static final RSA_PUBLIC:Ljava/lang/String; = ""

.field private static final SDK_CHECK_FLAG:I = 0x3

.field private static final SDK_PAY_FLAG:I = 0x2

.field public static final SELLER:Ljava/lang/String; = ""

.field private static final WECHAT:I = 0x1


# instance fields
.field activity:Landroid/app/Activity;

.field aliPay:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field anotherPayType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field application:Lcom/MApplication;

.field private checkNumber:I

.field client:Lcom/join/mgps/rpc/o;

.field creditCardPay:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field handlerDelay:Landroid/os/Handler;

.field intentDataMain:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isPaying:Z

.field layoutAlipay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layoutCreditCardPay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layoutPabiPay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layoutUnionpay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layoutWeixin:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layouthongbaoPay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ok:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field order:Lcom/join/mgps/dto/PapayOrder;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field papa_pay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payChoisePayType:Landroid/widget/HorizontalScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payDefault:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private payIngType:I

.field payLoding:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payMoney:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field payProduct:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private payTime:J

.field payTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field request:Lcom/join/mgps/dto/PayCenterOrderRequest;

.field unionpay:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field weichatPay:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field wxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private ziWeiPrepayPayId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->orderId:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/PayNowActivity;->isPaying:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payIngType:I

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$a;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity$a;-><init>(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/PayNowActivity;->checkNumber:I

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PayNowActivity$b;-><init>(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->handlerDelay:Landroid/os/Handler;

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payTime:J

    .line 33
    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PaymentInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->startHeepayServiceJar(Lcom/join/mgps/dto/PaymentInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/PayNowActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->dismissLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->startPayAlipay(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$502(Lcom/join/mgps/activity/PayNowActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PayNowActivity;->payIngType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private dismissLoding()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payLoding:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payDefault:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payChoisePayType:Landroid/widget/HorizontalScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static isWxInstall(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "com.tencent.mm"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method private papayResult(Lcom/join/mgps/dto/PapayResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papayResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getProduct_name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayProduct(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->orderId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayOrderId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "orderId ="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->orderId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq v0, v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 46
    .line 47
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 48
    .line 49
    if-ne v0, v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->checkToken()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Lw6/b;->b()Lw6/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lw6/b;->c()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 62
    .line 63
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    if-ne v0, v1, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/activity/PapayFinishActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->b(Z)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 83
    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_2
    const-string v3, "\u652f\u4ed8\u7b49\u5f85"

    .line 88
    .line 89
    const-string v4, "\u652f\u4ed8\u53d6\u6d88"

    .line 90
    .line 91
    const/4 v5, 0x4

    .line 92
    const/4 v6, 0x3

    .line 93
    const-string v7, "\u652f\u4ed8\u5931\u8d25"

    .line 94
    .line 95
    if-ne v0, v2, :cond_7

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eq v0, v1, :cond_6

    .line 102
    .line 103
    if-eq v0, v2, :cond_5

    .line 104
    .line 105
    if-eq v0, v6, :cond_4

    .line 106
    .line 107
    if-eq v0, v5, :cond_3

    .line 108
    .line 109
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setGameid(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/join/mgps/activity/PayFinishActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PayFinishActivity_$d;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PayFinishActivity_$d;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PayFinishActivity_$d;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_7
    if-ne v0, v6, :cond_d

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eq v0, v1, :cond_b

    .line 183
    .line 184
    if-eq v0, v2, :cond_a

    .line 185
    .line 186
    if-eq v0, v6, :cond_9

    .line 187
    .line 188
    if-eq v0, v5, :cond_8

    .line 189
    .line 190
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_a
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_b
    new-instance v0, Landroid/content/Intent;

    .line 223
    .line 224
    const-string v3, "com.join,mgps.sim.sdkgamePayfinish"

    .line 225
    .line 226
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 233
    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    const-string v3, "1"

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_c

    .line 247
    .line 248
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iget-object v4, p0, Lcom/join/mgps/activity/PayNowActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v0, p0, v3, v4}, Lcom/join/mgps/Util/x1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_c
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/join/mgps/activity/PapayFinishActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapayFinishActivity_$c;->a(Lcom/join/mgps/dto/PapayResult;)Lcom/join/mgps/activity/PapayFinishActivity_$c;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 282
    .line 283
    .line 284
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 285
    .line 286
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 287
    .line 288
    if-eq v0, v1, :cond_e

    .line 289
    .line 290
    if-ne v0, v2, :cond_f

    .line 291
    .line 292
    :cond_e
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :cond_f
    return-void
.end method

.method private setPayResultInfo(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "respCode"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "respMessage"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "1"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const-string v1, "0"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x2

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    const-string v1, "-2"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const-string v1, "-3"

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    .line 81
    .line 82
    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "\u652f\u4ed8\u5931\u8d25 "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    const-string p1, "-1"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 129
    .line 130
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    return-void
.end method

.method private showLoding()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payLoding:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payDefault:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payChoisePayType:Landroid/widget/HorizontalScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private startHeepayServiceJar(Lcom/join/mgps/dto/PaymentInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_paymentInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getTokenID()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getAgentId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaymentInfo;->getBillNo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, ",30"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lcom/heepay/plugin/api/HPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private startPayAlipay(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alipay_sign"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$e;-><init>(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private startPayLayout()V
    .locals 2

    .line 1
    const v0, 0x7f01002c

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->papa_pay:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->client:Lcom/join/mgps/rpc/o;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/MApplication;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->application:Lcom/MApplication;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->wxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 26
    .line 27
    const-string v1, "wx5e0a2e02d261de17"

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payProduct:Landroid/widget/TextView;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "\u5546\u54c1\uff1a<font color=\'0x3b3b3b\' >"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "</font>"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "alipaymobilesign"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const-string v3, "\u4f7f\u7528\u652f\u4ed8\u5b9d\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 95
    .line 96
    const v4, 0x7f12037b

    .line 97
    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutAlipay:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_0
    const-string v1, "ziweixingh5"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    const-string v1, "weixinmobilenew"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_7

    .line 155
    .line 156
    const-string v1, "swiftpasspapa"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_1
    const-string v1, "upmpmobilekongjian"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_2

    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "\u4f7f\u7528\u94f6\u884c\u5361\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutUnionpay:Landroid/widget/LinearLayout;

    .line 208
    .line 209
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_2
    const-string v1, "upmpmobilekongjian1"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_3

    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 223
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "\u4f7f\u7528\u4fe1\u7528\u5361\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutCreditCardPay:Landroid/widget/LinearLayout;

    .line 256
    .line 257
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_3
    const-string v1, "wallet"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_5

    .line 269
    .line 270
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 271
    .line 272
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 273
    .line 274
    if-ne v0, v5, :cond_4

    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v3, "\u4f7f\u7528\u996d\u7968\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutPabiPay:Landroid/widget/LinearLayout;

    .line 310
    .line 311
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 317
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutAlipay:Landroid/widget/LinearLayout;

    .line 348
    .line 349
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_5
    const-string v1, "red_envelope"

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_8

    .line 361
    .line 362
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 363
    .line 364
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 365
    .line 366
    if-ne v0, v5, :cond_6

    .line 367
    .line 368
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 369
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v3, "\u4f7f\u7528\u7ea2\u5305\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layouthongbaoPay:Landroid/widget/LinearLayout;

    .line 402
    .line 403
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 408
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutAlipay:Landroid/widget/LinearLayout;

    .line 439
    .line 440
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_1

    .line 444
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->anotherPayType:Landroid/widget/TextView;

    .line 445
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v3, "\u4f7f\u7528\u5fae\u4fe1\u652f\u4ed8<font color=\'#fa8819\' >"

    .line 452
    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutWeixin:Landroid/widget/LinearLayout;

    .line 478
    .line 479
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 480
    .line 481
    .line 482
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 483
    .line 484
    iget-object v0, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 485
    .line 486
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    new-instance v1, Ljava/text/DecimalFormat;

    .line 491
    .line 492
    const-string v2, "##0.00"

    .line 493
    .line 494
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    float-to-double v2, v0

    .line 498
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 503
    .line 504
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPay_rmb(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 508
    .line 509
    iput-object v0, v1, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .line 511
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payMoney:Landroid/widget/TextView;

    .line 512
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    const-string v2, "\u91d1\u989d\uff1a<font color=\'0xfc3f5e\' > "

    .line 519
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    iget-object v2, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 524
    .line 525
    iget-object v2, v2, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v2, "\u5143</font>"

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 544
    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 549
    .line 550
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_callback_url(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 558
    .line 559
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 560
    .line 561
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_extra1(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 567
    .line 568
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 569
    .line 570
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_extra2(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 576
    .line 577
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 578
    .line 579
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_key(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 585
    .line 586
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 587
    .line 588
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_name(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 594
    .line 595
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 596
    .line 597
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_order_id(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 603
    .line 604
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 605
    .line 606
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setApp_user_name(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 612
    .line 613
    const-string v1, ""

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setImei(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 619
    .line 620
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 621
    .line 622
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setUid(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 628
    .line 629
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 630
    .line 631
    iget v1, v1, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setOpenuid(I)V

    .line 634
    .line 635
    .line 636
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 637
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setPackage_name(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 646
    .line 647
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 648
    .line 649
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setToken(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 655
    .line 656
    iget v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 657
    .line 658
    const v2, 0x5f5e100

    .line 659
    .line 660
    .line 661
    if-lez v1, :cond_9

    .line 662
    .line 663
    add-int/2addr v2, v1

    .line 664
    :cond_9
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 665
    .line 666
    if-lez v0, :cond_a

    .line 667
    .line 668
    mul-int/lit16 v0, v0, 0x2710

    .line 669
    .line 670
    add-int/2addr v2, v0

    .line 671
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 672
    .line 673
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setSid(I)V

    .line 674
    .line 675
    .line 676
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 677
    .line 678
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 679
    .line 680
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setProduct_id(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 686
    .line 687
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 688
    .line 689
    iget-object v1, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setProduct_name(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->startPayLayout()V

    .line 695
    .line 696
    .line 697
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 698
    .line 699
    iget v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 700
    .line 701
    if-ne v1, v5, :cond_f

    .line 702
    .line 703
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 704
    .line 705
    const/16 v1, 0x8

    .line 706
    .line 707
    if-eqz v0, :cond_e

    .line 708
    .line 709
    const/4 v2, 0x0

    .line 710
    if-eq v0, v5, :cond_d

    .line 711
    .line 712
    const/4 v3, 0x2

    .line 713
    if-eq v0, v3, :cond_c

    .line 714
    .line 715
    const/4 v1, 0x3

    .line 716
    if-eq v0, v1, :cond_b

    .line 717
    .line 718
    goto :goto_2

    .line 719
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutPabiPay:Landroid/widget/LinearLayout;

    .line 720
    .line 721
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 722
    .line 723
    .line 724
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layouthongbaoPay:Landroid/widget/LinearLayout;

    .line 725
    .line 726
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 727
    .line 728
    .line 729
    goto :goto_2

    .line 730
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutPabiPay:Landroid/widget/LinearLayout;

    .line 731
    .line 732
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 733
    .line 734
    .line 735
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layouthongbaoPay:Landroid/widget/LinearLayout;

    .line 736
    .line 737
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .line 739
    .line 740
    goto :goto_2

    .line 741
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutPabiPay:Landroid/widget/LinearLayout;

    .line 742
    .line 743
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 744
    .line 745
    .line 746
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layouthongbaoPay:Landroid/widget/LinearLayout;

    .line 747
    .line 748
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    .line 750
    .line 751
    goto :goto_2

    .line 752
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layoutPabiPay:Landroid/widget/LinearLayout;

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    .line 756
    .line 757
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->layouthongbaoPay:Landroid/widget/LinearLayout;

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    .line 761
    .line 762
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 763
    .line 764
    const-string v1, "1228139"

    .line 765
    .line 766
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setResource_id(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    goto :goto_3

    .line 770
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 771
    .line 772
    const-string v1, "1264139"

    .line 773
    .line 774
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setResource_id(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 778
    .line 779
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 780
    .line 781
    packed-switch v0, :pswitch_data_0

    .line 782
    .line 783
    .line 784
    goto :goto_4

    .line 785
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->switfweichatPay()V

    .line 786
    .line 787
    .line 788
    goto :goto_4

    .line 789
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->ziweiweichatPay()V

    .line 790
    .line 791
    .line 792
    goto :goto_4

    .line 793
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->hongbaoPay()V

    .line 794
    .line 795
    .line 796
    goto :goto_4

    .line 797
    :pswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->pabiPay()V

    .line 798
    .line 799
    .line 800
    goto :goto_4

    .line 801
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->creditCardPay()V

    .line 802
    .line 803
    .line 804
    goto :goto_4

    .line 805
    :pswitch_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->unionpay()V

    .line 806
    .line 807
    .line 808
    goto :goto_4

    .line 809
    :pswitch_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->weichatPaynormal()V

    .line 810
    .line 811
    .line 812
    goto :goto_4

    .line 813
    :pswitch_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/PayNowActivity;->aliPay()V

    .line 814
    .line 815
    .line 816
    :goto_4
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 819
    .line 820
    .line 821
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    const-string v1, "\u5145\u503c\u91d1\u989d\u4e0d\u5408\u6cd5"

    .line 826
    .line 827
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    return-void

    .line 831
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method aliPay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "alipaymobilesign"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method anotherPayType()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payDefault:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payChoisePayType:Landroid/widget/HorizontalScrollView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method checkToken()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PayNowActivity;->checkNumber:I

    .line 2
    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/PayNowActivity;->checkNumber:I

    .line 8
    .line 9
    const-wide/16 v2, 0x2710

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x2

    .line 34
    if-eq v5, v6, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v5, v6}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 59
    .line 60
    .line 61
    new-instance v6, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v7, "uid"

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v9, ""

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v7, "token"

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getToken()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v7, "appVersion"

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v5, v6}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {v0, v5}, Lcom/join/mgps/rpc/c;->b(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getVipLevel()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-virtual {v4, v5}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getSvipLevel()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v4, v5}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSVIPLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getVipExpTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    invoke-virtual {v4, v5, v6}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipExpTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getSecretKey()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v4, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_0

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    iput v4, p0, Lcom/join/mgps/activity/PayNowActivity;->checkNumber:I

    .line 185
    .line 186
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->S(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->handlerDelay:Landroid/os/Handler;

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->handlerDelay:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->handlerDelay:Landroid/os/Handler;

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    .line 217
    .line 218
    :cond_2
    :goto_0
    return-void
.end method

.method creditCardPay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "upmpmobilekongjian1"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getSignType()Ljava/lang/String;
    .locals 1

    const-string v0, "sign_type=\"RSA\""

    return-object v0
.end method

.method hongbaoPay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "papawallet"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "red_envelope"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method ok()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 14
    .line 15
    iget v1, v1, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "red_envelope"

    .line 19
    .line 20
    const-string v4, "wallet"

    .line 21
    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "papawallet"

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const-string v2, "alipaymobilesign"

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "\u652f\u4ed8\u6210\u529f"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    const/16 p1, 0x271a

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 p1, 0x271b

    .line 40
    .line 41
    if-ne p2, p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string p1, "success"

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    if-eqz p3, :cond_5

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-string v6, "resultCode"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    iget v6, p0, Lcom/join/mgps/activity/PayNowActivity;->payIngType:I

    .line 114
    .line 115
    if-ne v6, v0, :cond_4

    .line 116
    .line 117
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 154
    .line 155
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 159
    .line 160
    .line 161
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    iget v5, p0, Lcom/join/mgps/activity/PayNowActivity;->payIngType:I

    .line 178
    .line 179
    if-ne v5, v0, :cond_6

    .line 180
    .line 181
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 187
    .line 188
    .line 189
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 190
    .line 191
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    iget v5, p0, Lcom/join/mgps/activity/PayNowActivity;->payIngType:I

    .line 206
    .line 207
    if-ne v5, v0, :cond_6

    .line 208
    .line 209
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 210
    .line 211
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 215
    .line 216
    .line 217
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 218
    .line 219
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_1
    if-nez p2, :cond_7

    .line 233
    .line 234
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 235
    .line 236
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 240
    .line 241
    .line 242
    iget-object v5, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 255
    .line 256
    .line 257
    :cond_7
    const/16 v0, 0x1020

    .line 258
    .line 259
    if-ne p2, v0, :cond_8

    .line 260
    .line 261
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/PayNowActivity;->setPayResultInfo(Landroid/content/Intent;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    if-nez p3, :cond_9

    .line 265
    .line 266
    return-void

    .line 267
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    const-string p3, "pay_result"

    .line 272
    .line 273
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    if-eqz p3, :cond_a

    .line 282
    .line 283
    return-void

    .line 284
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_b

    .line 289
    .line 290
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 291
    .line 292
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 299
    .line 300
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_b
    const-string p1, "fail"

    .line 315
    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_c

    .line 321
    .line 322
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 323
    .line 324
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 328
    .line 329
    .line 330
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 331
    .line 332
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_c
    const-string p1, "cancel"

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_d

    .line 353
    .line 354
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 355
    .line 356
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 357
    .line 358
    .line 359
    const/4 p2, 0x3

    .line 360
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p2, "\u652f\u4ed8\u53d6\u6d88"

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 378
    .line 379
    .line 380
    :cond_d
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 2
    .line 3
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->intentDataMain:Lcom/join/mgps/dto/IntentDataMain;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method pabiPay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "papawallet"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "wallet"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setWallet_type(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/l2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 2
    .line 3
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->startPayNow(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/PayGameDataRequest;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/join/mgps/dto/PayGameDataRequest;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getApp_key()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setConsole_app_key(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setDevice_id(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayGameDataRequest;->setPay_type(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getOpenuid()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PayGameDataRequest;->setUid(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/join/android/app/common/utils/q;->z()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayGameDataRequest;->setApp_ver(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->showLoding()V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/join/mgps/activity/PayNowActivity$c;

    .line 92
    .line 93
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$c;-><init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/join/mgps/rpc/n;->g(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method public startPayNow(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "paytime1"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, "    "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v4, p0, Lcom/join/mgps/activity/PayNowActivity;->payTime:J

    .line 24
    .line 25
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v4, "paytime"

    .line 33
    .line 34
    invoke-static {v4, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-wide v5, p0, Lcom/join/mgps/activity/PayNowActivity;->payTime:J

    .line 38
    .line 39
    sub-long v5, v0, v5

    .line 40
    .line 41
    const-wide/16 v7, 0x1f4

    .line 42
    .line 43
    cmp-long v2, v5, v7

    .line 44
    .line 45
    if-gez v2, :cond_0

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "paytime222"

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payTime:J

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v4, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "ziweixingh5"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iput-wide v0, p0, Lcom/join/mgps/activity/PayNowActivity;->payTime:J

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const v2, 0x7f12031e

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/PayNowActivity;->showLoding()V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/join/mgps/activity/PayNowActivity$d;

    .line 119
    .line 120
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PayNowActivity$d;-><init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v0}, Lcom/join/mgps/rpc/n;->f(Lcom/join/mgps/dto/PayCenterOrderRequest;Lcom/join/android/app/common/http/b;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method switfweichatPay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "swiftpasspapa"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method unionpay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "upmpmobilekongjian"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method weichartPayResult(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.wechatofficialpapa"
        }
    .end annotation

    .line 1
    const-string v0, "out_trade_no"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "return_code"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "return_msg"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "  "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const-string v0, "SUCCESS"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v2, "ziweixingh5"

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v0, "CANCEL"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x2

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 92
    .line 93
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->papayResult(Lcom/join/mgps/dto/PapayResult;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method weichatPay()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "weixinmobilenew"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->order:Lcom/join/mgps/dto/PapayOrder;

    .line 18
    .line 19
    iget v0, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 37
    .line 38
    const-string v1, "wechatofficialpapa"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 54
    .line 55
    const-string v1, "swiftpasspapa"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 71
    .line 72
    const-string v1, "ziweixingh5"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method weichatPaynormal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "weixinmobilenew"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method ziweiweichatPay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    const-string v1, "ziweixingh5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setAction(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity;->request:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PayNowActivity;->startPay(Lcom/join/mgps/dto/PayCenterOrderRequest;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
