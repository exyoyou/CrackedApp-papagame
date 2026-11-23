.class public Lcom/join/mgps/dto/GameDetialStrategyItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private add_time:J

.field private commit:I

.field private id:I

.field private pic_list:[Ljava/lang/String;

.field private praise:I

.field private subject:Ljava/lang/String;

.field private tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

.field private view:I


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
.method public getAdd_time()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->add_time:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    return-wide v0
.end method

.method public getCommit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->commit:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getPic_list()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->pic_list:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPraise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->praise:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->view:I

    .line 2
    .line 3
    return v0
.end method

.method public setAdd_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->add_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setCommit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->commit:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setPic_list([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->pic_list:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPraise(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->praise:I

    .line 2
    .line 3
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_name(Lcom/join/mgps/dto/GameDetialBookTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

    .line 2
    .line 3
    return-void
.end method

.method public setView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->view:I

    .line 2
    .line 3
    return-void
.end method
