.class public Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;,
        Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$ViewersBean;
    }
.end annotation


# instance fields
.field private anchor:Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;

.field private error:I

.field private giftSeconds:I

.field private isAdmin:Z

.field private isFollow:Z

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private systemPact:Ljava/lang/String;

.field private viewers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$ViewersBean;",
            ">;"
        }
    .end annotation
.end field


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
.method public getAdmin()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isAdmin:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAnchor()Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->anchor:Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->error:I

    .line 2
    .line 3
    return v0
.end method

.method public getFollow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isFollow:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGiftSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->giftSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSystemPact()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->systemPact:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$ViewersBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->viewers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isAdmin:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFollow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isFollow:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdmin(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "admin"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isAdmin:Z

    return-void
.end method

.method public setAdmin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "admin"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isAdmin:Z

    return-void
.end method

.method public setAnchor(Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->anchor:Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;

    .line 2
    .line 3
    return-void
.end method

.method public setError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->error:I

    .line 2
    .line 3
    return-void
.end method

.method public setFollow(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "follow"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isFollow:Z

    return-void
.end method

.method public setFollow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "follow"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->isFollow:Z

    return-void
.end method

.method public setGiftSeconds(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giftSeconds"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->giftSeconds:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSystemPact(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemPact"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->systemPact:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setViewers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$ViewersBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;->viewers:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
