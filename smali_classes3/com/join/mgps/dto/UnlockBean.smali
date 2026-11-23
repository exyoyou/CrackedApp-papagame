.class public Lcom/join/mgps/dto/UnlockBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private achievementBean:Lcom/join/mgps/dto/SimulatorAchievementBean;

.field private info:Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;

.field private isFirst:Z

.field private isLast:Z

.field private isLock:Z

.field private isLockTitle:Z

.field private timeDesc:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "info",
            "isLock"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/join/mgps/dto/UnlockBean;->type:I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dto/UnlockBean;->info:Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;

    .line 11
    iput-boolean p3, p0, Lcom/join/mgps/dto/UnlockBean;->isLock:Z

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "achievementBean"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/UnlockBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/UnlockBean;->achievementBean:Lcom/join/mgps/dto/SimulatorAchievementBean;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "timeDesc",
            "isLockTitle"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/UnlockBean;->type:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/UnlockBean;->timeDesc:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/join/mgps/dto/UnlockBean;->isLockTitle:Z

    return-void
.end method


# virtual methods
.method public getAchievementBean()Lcom/join/mgps/dto/SimulatorAchievementBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UnlockBean;->achievementBean:Lcom/join/mgps/dto/SimulatorAchievementBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UnlockBean;->info:Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UnlockBean;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UnlockBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UnlockBean;->isFirst:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UnlockBean;->isLast:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UnlockBean;->isLock:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLockTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UnlockBean;->isLockTitle:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAchievementBean(Lcom/join/mgps/dto/SimulatorAchievementBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "achievementBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UnlockBean;->achievementBean:Lcom/join/mgps/dto/SimulatorAchievementBean;

    .line 2
    .line 3
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UnlockBean;->isFirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInfo(Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UnlockBean;->info:Lcom/join/mgps/dto/SimulatorAchievementBean$AchievementInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setLast(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UnlockBean;->isLast:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UnlockBean;->isLock:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLockTitle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockTitle"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UnlockBean;->isLockTitle:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTimeDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeDesc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UnlockBean;->timeDesc:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/UnlockBean;->type:I

    .line 2
    .line 3
    return-void
.end method
