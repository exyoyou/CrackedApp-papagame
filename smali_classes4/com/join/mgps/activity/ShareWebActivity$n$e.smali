.class Lcom/join/mgps/activity/ShareWebActivity$n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->rechargePabiFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$payType",
            "val$callback_url",
            "val$app_name",
            "val$app_order_id",
            "val$paOpenuid",
            "val$uid",
            "val$product_id",
            "val$product_name",
            "val$pay_rmb",
            "val$extra1",
            "val$extra2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->m:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->k:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p12, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/PapayOrder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "qh97"

    .line 7
    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->b:I

    .line 11
    .line 12
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->d:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->e:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->f:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->g:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->d:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->h:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->i:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->j:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 64
    .line 65
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->k:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->l:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$e;->m:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->startPay(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method
