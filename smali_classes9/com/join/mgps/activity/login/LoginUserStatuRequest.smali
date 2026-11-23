.class public Lcom/join/mgps/activity/login/LoginUserStatuRequest;
.super Lcom/join/mgps/activity/login/LoginBase;
.source "SourceFile"


# instance fields
.field private loginId:Ljava/lang/String;

.field private loginType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->loginId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->loginType:I

    .line 2
    .line 3
    return v0
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->loginId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoginType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->loginType:I

    .line 2
    .line 3
    return-void
.end method
