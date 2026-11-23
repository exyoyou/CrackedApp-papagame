.class public Lcom/join/mgps/dto/PapayOrder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public APPKEY:Ljava/lang/String;

.field public APP_DISTRICT:I

.field public APP_EXT1:Ljava/lang/String;

.field public APP_EXT2:Ljava/lang/String;

.field public APP_NAME:Ljava/lang/String;

.field public APP_ORDER_ID:Ljava/lang/String;

.field public APP_SERVER:I

.field public APP_USER_ID:Ljava/lang/String;

.field public APP_USER_NAME:Ljava/lang/String;

.field public MONEY_AMOUNT:Ljava/lang/String;

.field public NOTIFY_URI:Ljava/lang/String;

.field public ORDERTYPE:I

.field public PAYORRECHARGE:I

.field public PAYSHOWTYPE:I

.field public PAYTYPE:I

.field public PA_OPEN_UID:I

.field public PRIVATEKEY:Ljava/lang/String;

.field public PRODUCT_ID:Ljava/lang/String;

.field public PRODUCT_NAME:Ljava/lang/String;

.field public TOKEN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 12
    .line 13
    const-string v1, "qh97"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Se+mLqD-mV@y6^Z+97"

    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->PRIVATEKEY:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "100001"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "10001"

    .line 30
    .line 31
    iput-object v2, p0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "\u609f\u996d\u7528\u6237"

    .line 34
    .line 35
    iput-object v2, p0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 38
    .line 39
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 40
    .line 41
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 42
    .line 43
    const-string v0, "http://testwallet.wufan88.com"

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, ""

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method
