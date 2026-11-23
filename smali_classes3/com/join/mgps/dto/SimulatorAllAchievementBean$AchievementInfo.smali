.class public Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorAllAchievementBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AchievementInfo"
.end annotation


# instance fields
.field private condition:Ljava/lang/String;

.field private done:I

.field private name:Ljava/lang/String;

.field private show:I

.field private target:I

.field private ver:Ljava/lang/String;


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
.method public getCondition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->condition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDone()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->done:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->show:I

    .line 2
    .line 3
    return v0
.end method

.method public getTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->target:I

    .line 2
    .line 3
    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->condition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDone(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "done"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->done:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->show:I

    .line 2
    .line 3
    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->target:I

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAllAchievementBean$AchievementInfo;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
