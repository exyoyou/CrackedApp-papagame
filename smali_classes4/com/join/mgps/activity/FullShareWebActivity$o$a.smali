.class Lcom/join/mgps/activity/FullShareWebActivity$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->payByPapa(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$app_key",
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
            "val$extra2",
            "val$appPrivateKey",
            "val$token",
            "val$payShowType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->q:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    move v1, p3

    .line 9
    iput v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->c:I

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->d:Ljava/lang/String;

    .line 13
    .line 14
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->e:Ljava/lang/String;

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->f:Ljava/lang/String;

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->g:Ljava/lang/String;

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->h:Ljava/lang/String;

    .line 25
    .line 26
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->i:Ljava/lang/String;

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->j:Ljava/lang/String;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->k:Ljava/lang/String;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->l:Ljava/lang/String;

    .line 37
    .line 38
    move-object v1, p13

    .line 39
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->m:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v1, p14

    .line 42
    .line 43
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->n:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v1, p15

    .line 46
    .line 47
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->o:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v1, p16

    .line 50
    .line 51
    iput-object v1, v0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->p:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/PapayOrder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->c:I

    .line 11
    .line 12
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->e:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->g:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->g:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->h:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->e:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->i:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->j:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->k:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->l:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->m:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 74
    .line 75
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->n:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRIVATEKEY:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->o:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->p:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->p:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 100
    .line 101
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$a;->q:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->startPay(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method
