.class public Lcom/join/mgps/dto/PayGameDetialBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_info:Lcom/join/mgps/dto/CollectionBeanSub;

.field private order_info:Lcom/join/mgps/dto/PayOrderInfo;


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
.method public getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGameDetialBean;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrder_info()Lcom/join/mgps/dto/PayOrderInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGameDetialBean;->order_info:Lcom/join/mgps/dto/PayOrderInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGameDetialBean;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-void
.end method

.method public setOrder_info(Lcom/join/mgps/dto/PayOrderInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGameDetialBean;->order_info:Lcom/join/mgps/dto/PayOrderInfo;

    .line 2
    .line 3
    return-void
.end method
