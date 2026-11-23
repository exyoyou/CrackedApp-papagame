.class public Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/MessageDetailFeedBackBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackIssue"
.end annotation


# instance fields
.field private appVer:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private createBy:Ljava/lang/String;

.field private createTime:J

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private issueType:I

.field private mobile:Ljava/lang/String;

.field private mobileModel:Ljava/lang/String;

.field private mobileVer:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private screenPics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field private uid:Ljava/lang/String;

.field private updateBy:Ljava/lang/String;

.field private updateTime:J

.field private username:Ljava/lang/String;


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
.method public getAppVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->appVer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreateBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->createBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->createTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIssueType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->issueType:I

    .line 2
    .line 3
    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobileModel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobileVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobileVer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->qq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->screenPics:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->updateBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->updateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAppVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appVer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->appVer:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCreateBy(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createBy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->createBy:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->createTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIssueType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issueType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->issueType:I

    .line 2
    .line 3
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMobileModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobileModel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobileModel:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMobileVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobileVer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->mobileVer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qq"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->qq:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenPics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->screenPics:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->status:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateBy(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateBy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->updateBy:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->updateTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageDetailFeedBackBean$FeedbackIssue;->username:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
