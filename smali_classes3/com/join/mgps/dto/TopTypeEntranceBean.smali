.class public Lcom/join/mgps/dto/TopTypeEntranceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private display_index:I

.field private index:I

.field private model_type:Ljava/lang/String;

.field private selected:Z

.field private tips:Ljava/lang/String;

.field private title:Ljava/lang/String;


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
.method public getDisplay_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->display_index:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getModel_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->model_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->tips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->selected:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDisplay_index(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display_index"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->display_index:I

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
    iput p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public setModel_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->model_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->selected:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->tips:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/TopTypeEntranceBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
