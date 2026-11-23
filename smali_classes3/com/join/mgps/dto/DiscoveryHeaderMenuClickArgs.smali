.class public Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extData:Ljava/lang/String;

.field private menuId:Ljava/lang/String;

.field private uid:Ljava/lang/String;


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
.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->extData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->menuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->extData:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMenuId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->menuId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuClickArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
