.class public Lcom/join/mgps/Util/IntentToDetialBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private IconUrl:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private detialType:I

.field private starNUmber:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->detialType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appName",
            "starNUmber",
            "appId",
            "iconUrl",
            "detialType"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appName:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/join/mgps/Util/IntentToDetialBean;->starNUmber:F

    .line 6
    iput-object p3, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appId:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/IntentToDetialBean;->IconUrl:Ljava/lang/String;

    .line 8
    iput p5, p0, Lcom/join/mgps/Util/IntentToDetialBean;->detialType:I

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDetialType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->detialType:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->IconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStarNUmber()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentToDetialBean;->starNUmber:F

    .line 2
    .line 3
    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDetialType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->detialType:I

    .line 2
    .line 3
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->IconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStarNUmber(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starNUmber"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentToDetialBean;->starNUmber:F

    .line 2
    .line 3
    return-void
.end method
