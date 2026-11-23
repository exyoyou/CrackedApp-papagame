.class public Lcom/join/mgps/dto/PaygameResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private order:Lcom/join/mgps/dto/PayGamepayData;


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
.method public getOrder()Lcom/join/mgps/dto/PayGamepayData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaygameResponse;->order:Lcom/join/mgps/dto/PayGamepayData;

    .line 2
    .line 3
    return-object v0
.end method

.method public setOrder(Lcom/join/mgps/dto/PayGamepayData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaygameResponse;->order:Lcom/join/mgps/dto/PayGamepayData;

    .line 2
    .line 3
    return-void
.end method
