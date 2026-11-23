.class public Lcom/join/mgps/dto/InformationListDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private info_id:Ljava/lang/String;

.field private material:Ljava/lang/String;

.field private praise:Ljava/lang/String;

.field private release_time:Ljava/lang/String;

.field private score_count:F

.field private tag_id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag_id",
            "title",
            "release_time",
            "material",
            "praise"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->info_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPraise()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelease_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore_count()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->score_count:F

    .line 2
    .line 3
    return v0
.end method

.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInfo_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->info_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaterial(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->material:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPraise(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->praise:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRelease_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "release_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->release_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore_count(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->score_count:F

    .line 2
    .line 3
    return-void
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->tag_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/InformationListDataBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
