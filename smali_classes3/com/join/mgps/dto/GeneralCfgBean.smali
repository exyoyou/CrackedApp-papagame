.class public Lcom/join/mgps/dto/GeneralCfgBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;,
        Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;
    }
.end annotation


# instance fields
.field private memberUrl:Ljava/lang/String;

.field private normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

.field private strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;


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
.method public getMemberUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->memberUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNormalMode()Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrongMode()Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMemberUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->memberUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNormalMode(Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalMode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setStrongMode(Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strongMode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    .line 2
    .line 3
    return-void
.end method
