.class public Lcom/join/mgps/dto/AndroidPermissionParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private isSingleBtn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/join/mgps/dto/AndroidPermissionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "cancelText",
            "confirmText",
            "isSingleBtn"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->content:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->cancelText:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->confirmText:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->isSingleBtn:Z

    return-void
.end method


# virtual methods
.method public getCancelText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->cancelText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->confirmText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSingleBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->isSingleBtn:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->cancelText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->confirmText:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSingleBtn(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleBtn"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AndroidPermissionParams;->isSingleBtn:Z

    .line 2
    .line 3
    return-void
.end method
