.class public Lcom/join/mgps/activity/recomend/RecommendBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private game_info:Lcom/join/mgps/dto/AppBean;

.field private index:I

.field private is_select:I

.field private source_url:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/AppBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewType",
            "game_info"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->viewType:I

    .line 7
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->game_info:Lcom/join/mgps/dto/AppBean;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewType",
            "tag"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->viewType:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_select()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->is_select:I

    .line 2
    .line 3
    return v0
.end method

.method public getSource_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/activity/recomend/RecommendBean;
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_select(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_select"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->is_select:I

    .line 2
    .line 3
    return-void
.end method

.method public setSource_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/recomend/RecommendBean;->viewType:I

    .line 2
    .line 3
    return-void
.end method
