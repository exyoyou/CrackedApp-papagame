.class public Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad_id:I

.field private ad_type:I

.field private name:Ljava/lang/String;

.field private sdk_app_id:Ljava/lang/String;

.field private sdk_key:Ljava/lang/String;

.field private sdk_type:I


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
.method public getAd_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->ad_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getAd_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->ad_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_app_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_type:I

    .line 2
    .line 3
    return v0
.end method

.method public setAd_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->ad_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setAd_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->ad_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_app_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_app_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_key(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MiniGameSdkDtoAdCfgValue;->sdk_type:I

    .line 2
    .line 3
    return-void
.end method
