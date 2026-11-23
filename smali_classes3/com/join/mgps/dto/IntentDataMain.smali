.class public Lcom/join/mgps/dto/IntentDataMain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field private appkey:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

.field private packageName:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/join/mgps/dto/IntentDataMain;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IntentDataMain;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IntentDataMain;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IntentDataMain;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IntentDataMain;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/IntentDataMain;->accountBean:Lcom/join/mgps/dto/AccountBean;

    .line 2
    .line 3
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appkey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IntentDataMain;->appkey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IntentDataMain;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntentDateBean(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentDateBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IntentDataMain;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IntentDataMain;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
