.class public Lcom/join/mgps/dto/WebDiskPositionModeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private download_mode:Lcom/join/mgps/dto/WebDiskCfgDownLoadStateBean;

.field private setup_mode:Lcom/join/mgps/dto/WebDiskCfgSetupModelEnumBean;


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
.method public getDownload_mode()Lcom/join/mgps/dto/WebDiskCfgDownLoadStateBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WebDiskPositionModeBean;->download_mode:Lcom/join/mgps/dto/WebDiskCfgDownLoadStateBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSetup_mode()Lcom/join/mgps/dto/WebDiskCfgSetupModelEnumBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WebDiskPositionModeBean;->setup_mode:Lcom/join/mgps/dto/WebDiskCfgSetupModelEnumBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDownload_mode(Lcom/join/mgps/dto/WebDiskCfgDownLoadStateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_mode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WebDiskPositionModeBean;->download_mode:Lcom/join/mgps/dto/WebDiskCfgDownLoadStateBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSetup_mode(Lcom/join/mgps/dto/WebDiskCfgSetupModelEnumBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setup_mode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WebDiskPositionModeBean;->setup_mode:Lcom/join/mgps/dto/WebDiskCfgSetupModelEnumBean;

    .line 2
    .line 3
    return-void
.end method
