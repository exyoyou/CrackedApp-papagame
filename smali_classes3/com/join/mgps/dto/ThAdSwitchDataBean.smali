.class public Lcom/join/mgps/dto/ThAdSwitchDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private fx_ad_id:Ljava/lang/String;

.field private fx_ad_switch:I

.field private fx_sdk_key:Ljava/lang/String;

.field private type:I


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
.method public getFx_ad_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFx_ad_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_ad_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getFx_sdk_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_sdk_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setFx_ad_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fx_ad_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFx_ad_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fx_ad_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_ad_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setFx_sdk_key(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fx_sdk_key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->fx_sdk_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ThAdSwitchDataBean;->type:I

    .line 2
    .line 3
    return-void
.end method
