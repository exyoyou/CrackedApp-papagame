.class public Lcom/join/mgps/dto/WebAccountDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field private hasLogin:Z


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
.method public getAccountBean()Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WebAccountDataBean;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHasLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/WebAccountDataBean;->hasLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAccountBean(Lcom/join/mgps/dto/AccountBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WebAccountDataBean;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    return-void
.end method

.method public setHasLogin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasLogin"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/WebAccountDataBean;->hasLogin:Z

    .line 2
    .line 3
    return-void
.end method
