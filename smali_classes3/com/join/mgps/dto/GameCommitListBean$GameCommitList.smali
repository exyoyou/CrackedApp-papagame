.class public Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameCommitListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameCommitList"
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private avatar_src:Ljava/lang/String;

.field private best:I

.field private bolHaveCommit:Z

.field private commit:I

.field private first:I

.field private is_praise:Z

.field private member_honor:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private pid:I

.field private praise:I

.field private svip_level:I

.field private uid:I

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->bolHaveCommit:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->best:I

    .line 2
    .line 3
    return v0
.end method

.method public getCommit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->commit:I

    .line 2
    .line 3
    return v0
.end method

.method public getFirst()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->first:I

    .line 2
    .line 3
    return v0
.end method

.method public getMember_honor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->member_honor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->pid:I

    .line 2
    .line 3
    return v0
.end method

.method public getPraise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->praise:I

    .line 2
    .line 3
    return v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->svip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->vip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public isBolHaveCommit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->bolHaveCommit:Z

    .line 2
    .line 3
    return v0
.end method

.method public is_praise()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->is_praise:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBest(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "best"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->best:I

    .line 2
    .line 3
    return-void
.end method

.method public setBolHaveCommit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bolHaveCommit"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->bolHaveCommit:Z

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
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->commit:I

    .line 2
    .line 3
    return-void
.end method

.method public setFirst(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->first:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_praise(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_praise"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->is_praise:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMember_honor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member_honor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->member_honor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->pid:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->praise:I

    .line 2
    .line 3
    return-void
.end method

.method public setSvip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "svip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->svip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;->vip_level:I

    .line 2
    .line 3
    return-void
.end method
