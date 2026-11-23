.class public Lcom/join/mgps/activity/login/LoginjiguangRequest;
.super Lcom/join/mgps/activity/login/LoginBase;
.source "SourceFile"


# instance fields
.field private loginToken:Ljava/lang/String;


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
.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginjiguangRequest;->loginToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginToken"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginjiguangRequest;->loginToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
