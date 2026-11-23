.class public Lcom/join/mgps/dto/DetialShareData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private share_config:Ljava/lang/String;

.field private share_switch:I


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
.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShareData;->jump_info:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare_config()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShareData;->share_config:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetialShareData;->share_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShareData;->jump_info:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setShare_config(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share_config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShareData;->share_config:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShare_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetialShareData;->share_switch:I

    .line 2
    .line 3
    return-void
.end method
