.class Lcom/join/mgps/fragment/v$l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l;->payByPapa(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lcom/join/mgps/fragment/v$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "val$extra2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$f;->n:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/v$l$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/fragment/v$l$f;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/fragment/v$l$f;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/fragment/v$l$f;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/fragment/v$l$f;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/join/mgps/fragment/v$l$f;->g:I

    .line 14
    .line 15
    iput-object p8, p0, Lcom/join/mgps/fragment/v$l$f;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/join/mgps/fragment/v$l$f;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/join/mgps/fragment/v$l$f;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/join/mgps/fragment/v$l$f;->k:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p12, p0, Lcom/join/mgps/fragment/v$l$f;->l:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p13, p0, Lcom/join/mgps/fragment/v$l$f;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
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
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/fragment/v$l$f;->c:I

    .line 11
    .line 12
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->e:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 25
    .line 26
    iget v1, p0, Lcom/join/mgps/fragment/v$l$f;->g:I

    .line 27
    .line 28
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->h:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->i:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->j:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->k:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 52
    .line 53
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/fragment/v$l$f;->l:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/fragment/v$l$f;->m:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 62
    .line 63
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$f;->n:Lcom/join/mgps/fragment/v$l;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/v;->X0(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
