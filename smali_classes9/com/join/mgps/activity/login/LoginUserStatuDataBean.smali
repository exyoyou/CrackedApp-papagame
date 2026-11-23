.class public Lcom/join/mgps/activity/login/LoginUserStatuDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mobilePhone:Z

.field private newMembers:Z

.field private setPwd:Z


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
.method public isMobilePhone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->mobilePhone:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNewMembers()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->newMembers:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSetPwd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->setPwd:Z

    .line 2
    .line 3
    return v0
.end method

.method public setMobilePhone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobilePhone"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->mobilePhone:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNewMembers(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMembers"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->newMembers:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSetPwd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setPwd"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->setPwd:Z

    .line 2
    .line 3
    return-void
.end method
