.class public Lcom/join/mgps/dto/PlayCfgBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_id:Ljava/lang/String;

.field private probability:Ljava/lang/String;

.field private reward_time:I

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
.method public getAd_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProbability()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->probability:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->reward_time:I

    .line 2
    .line 3
    return v0
.end method

.method public getSdk_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_type:I

    .line 2
    .line 3
    return v0
.end method

.method public setAd_id(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProbability(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "probability"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->probability:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward_time(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reward_time"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->reward_time:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_key:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/PlayCfgBean;->sdk_type:I

    .line 2
    .line 3
    return-void
.end method
