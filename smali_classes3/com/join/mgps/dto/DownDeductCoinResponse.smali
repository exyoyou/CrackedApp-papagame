.class public Lcom/join/mgps/dto/DownDeductCoinResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private balance:I

.field private key:Ljava/lang/String;

.field private num:Ljava/lang/String;


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


# virtual methods
.method public getBalance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->balance:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBalance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "balance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->balance:I

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownDeductCoinResponse;->num:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
