.class public Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorAreaDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionRecommendBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;
    }
.end annotation


# instance fields
.field private collection_info:Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field


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
.method public getCollection_info()Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->collection_info:Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCollection_info(Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->collection_info:Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
