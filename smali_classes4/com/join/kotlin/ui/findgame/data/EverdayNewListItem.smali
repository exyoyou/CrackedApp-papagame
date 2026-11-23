.class public Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field list:Lcom/join/mgps/dto/CollectionBeanSub;

.field private the_new:Z

.field private the_update:Z

.field time:J


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
.method public getList()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->list:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isThe_new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->the_new:Z

    .line 2
    .line 3
    return v0
.end method

.method public isThe_update()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->the_update:Z

    .line 2
    .line 3
    return v0
.end method

.method public setList(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->list:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-void
.end method

.method public setThe_new(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "the_new"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->the_new:Z

    .line 2
    .line 3
    return-void
.end method

.method public setThe_update(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "the_update"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->the_update:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->time:J

    .line 2
    .line 3
    return-void
.end method
