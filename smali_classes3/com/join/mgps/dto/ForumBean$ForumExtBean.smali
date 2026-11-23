.class public Lcom/join/mgps/dto/ForumBean$ForumExtBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumExtBean"
.end annotation


# instance fields
.field followedForums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation
.end field

.field isContainHelp:Z

.field refresh:Z

.field requestCode:I

.field startFlags:I

.field tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;


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
.method public getFollowedForums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->followedForums:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->requestCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->startFlags:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x4000000

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    if-gez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_1
    return v0
.end method

.method public getTabBean()Lcom/join/mgps/dto/ForumBean$ForumTabBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isContainHelp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->isContainHelp:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->refresh:Z

    .line 2
    .line 3
    return v0
.end method

.method public setContainHelp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "containHelp"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->isContainHelp:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFollowedForums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "followedForums"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->followedForums:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refresh"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->refresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->requestCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartFlags(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startFlags"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->startFlags:I

    .line 2
    .line 3
    return-void
.end method

.method public setTabBean(Lcom/join/mgps/dto/ForumBean$ForumTabBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumExtBean;->tabBean:Lcom/join/mgps/dto/ForumBean$ForumTabBean;

    .line 2
    .line 3
    return-void
.end method
