.class public Lcom/windmill/sdk/WMAdnInitConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;


# instance fields
.field public adnId:I

.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adnId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/windmill/sdk/WMAdnInitConfig;->adnId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adnId",
            "appId"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/windmill/sdk/WMAdnInitConfig;->adnId:I

    .line 5
    iput-object p2, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adnId",
            "appId",
            "appKey"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/windmill/sdk/WMAdnInitConfig;->adnId:I

    .line 9
    iput-object p2, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appId:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdnId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/WMAdnInitConfig;->adnId:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WMAdnInitConfig;->appKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
