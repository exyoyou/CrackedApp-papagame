.class public Lcom/windmill/sdk/models/BidPrice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CNY:Ljava/lang/String; = "CNY"

.field public static USD:Ljava/lang/String; = "USD"


# instance fields
.field private currency:Ljava/lang/String;

.field public is_pdb:Z

.field public pdb_priority:I

.field public pecpm:Ljava/lang/String;

.field private price:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->price:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->currency:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/models/BidPrice;->is_pdb:Z

    .line 6
    iput v0, p0, Lcom/windmill/sdk/models/BidPrice;->pdb_priority:I

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/windmill/sdk/models/BidPrice;->price:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "price",
            "currency"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->price:Ljava/lang/String;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->currency:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/windmill/sdk/models/BidPrice;->is_pdb:Z

    .line 14
    iput v0, p0, Lcom/windmill/sdk/models/BidPrice;->pdb_priority:I

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iput-object p1, p0, Lcom/windmill/sdk/models/BidPrice;->price:Ljava/lang/String;

    .line 17
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iput-object p2, p0, Lcom/windmill/sdk/models/BidPrice;->currency:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidPrice;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
