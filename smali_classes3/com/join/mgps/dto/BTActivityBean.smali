.class public Lcom/join/mgps/dto/BTActivityBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private beginTime:Ljava/lang/Integer;

.field private content:Ljava/lang/String;

.field private endTime:Ljava/lang/Integer;

.field private jump_url:Ljava/lang/String;

.field private noticeType:I

.field private periodFlag:Ljava/lang/Integer;

.field private sub_head:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


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
.method public getBeginTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->beginTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->endTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNoticeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BTActivityBean;->noticeType:I

    .line 2
    .line 3
    return v0
.end method

.method public getPeriodFlag()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->periodFlag:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_head()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->sub_head:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTActivityBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBeginTime(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->beginTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndTime(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->endTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNoticeType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noticeType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BTActivityBean;->noticeType:I

    .line 2
    .line 3
    return-void
.end method

.method public setPeriodFlag(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodFlag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->periodFlag:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setSub_head(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_head"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->sub_head:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTActivityBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
