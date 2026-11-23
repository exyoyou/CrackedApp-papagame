.class public Lcom/join/mgps/dto/HomeDailyNewBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDailyNewListBean;",
            ">;"
        }
    .end annotation
.end field

.field private pv:I


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
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDailyNewListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->pv:I

    .line 2
    .line 3
    return v0
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->count:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDailyNewListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPv(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pv"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeDailyNewBean;->pv:I

    .line 2
    .line 3
    return-void
.end method
