.class public Lcom/join/mgps/dto/ModGameDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_info:Lcom/join/mgps/dto/RecomDatabean;

.field private cg_ad_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

.field private cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field private cloud_archive_model:Z

.field private cloud_mod_model:Z

.field private general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

.field private gold_finger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation
.end field

.field private main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private mod_model:Z

.field private pd_info:Lcom/join/mgps/dto/DomainInfoBean;


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
.method public getAd_info()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->ad_info:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCg_ad_info()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cg_ad_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeneral_cfg()Lcom/join/mgps/dto/GeneralCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGold_finger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->gold_finger:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPd_info()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCloud_archive_model()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_model:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCloud_mod_model()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_mod_model:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMod_model()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_model:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->ad_info:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-void
.end method

.method public setCg_ad_info(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cg_ad_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cg_ad_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_archive_cfg(Lcom/join/mgps/dto/CloudArchiveCfg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_archive_local_path(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive_local_path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_archive_model(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive_model"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_model:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_mod_model(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_mod_model"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_mod_model:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGeneral_cfg(Lcom/join/mgps/dto/GeneralCfgBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "general_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGold_finger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gold_finger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->gold_finger:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setMain_game_info(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main_game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_game_info(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_model(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_model"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_model:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPd_info(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pd_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method
