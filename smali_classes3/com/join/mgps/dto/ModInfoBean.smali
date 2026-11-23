.class public Lcom/join/mgps/dto/ModInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private compatible_version:Ljava/lang/String;

.field private down_url:Ljava/lang/String;

.field private ext64:I

.field private ext64_package_name:Ljava/lang/String;

.field private ext64_size:J

.field private ext64_url:Ljava/lang/String;

.field private ext64_ver:I

.field private isIncompatible:Z

.field private is_64_finger:I

.field private is_golden_finger:I

.field private main_game_id:Ljava/lang/String;

.field private main_game_ver:Ljava/lang/String;

.field private main_package_name:Ljava/lang/String;

.field private mod_game_id:Ljava/lang/String;

.field private mod_package_name:Ljava/lang/String;

.field private status:I

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xe

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCompatible_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->compatible_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt64()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64:I

    .line 2
    .line 3
    return v0
.end method

.method public getExt64_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt64_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExt64_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt64_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_64_finger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->is_64_finger:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_golden_finger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->is_golden_finger:I

    .line 2
    .line 3
    return v0
.end method

.method public getMain_game_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMain_game_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMain_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMod_game_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMod_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getVer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ver:I

    .line 2
    .line 3
    return v0
.end method

.method public isIncompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCompatible_version(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compatible_version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->compatible_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt64(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext64"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64:I

    .line 2
    .line 3
    return-void
.end method

.method public setExt64_package_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext64_package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt64_size(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext64_size"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setExt64_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext64_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt64_ver(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext64_ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setIncompatible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "incompatible"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIs_64_finger(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_64_finger"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->is_64_finger:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_golden_finger(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_golden_finger"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->is_golden_finger:I

    .line 2
    .line 3
    return-void
.end method

.method public setMain_game_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main_game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMain_game_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main_game_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMain_package_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main_package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_game_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_package_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ver:I

    .line 2
    .line 3
    return-void
.end method
