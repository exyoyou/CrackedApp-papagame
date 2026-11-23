.class public Lcom/join/mgps/dto/GameWorldRoleBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private get_pet:I

.field private get_pet_r:I

.field private grade_r:I

.field private icon_src:Ljava/lang/String;

.field private kill_mob:I

.field private kill_mob_r:I

.field private level:I

.field private level_r:I

.field private medal:I

.field private medal_r:I

.field private role_name:Ljava/lang/String;

.field private score:I

.field private update_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "update_time",
            "icon_src",
            "role_name",
            "kill_mob",
            "get_pet",
            "level",
            "medal",
            "score"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->update_time:J

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->icon_src:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->role_name:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->kill_mob:I

    .line 7
    iput p6, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->get_pet:I

    .line 8
    iput p7, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->level:I

    .line 9
    iput p8, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->medal:I

    .line 10
    iput p9, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->score:I

    return-void
.end method


# virtual methods
.method public getGet_pet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->get_pet:I

    .line 2
    .line 3
    return v0
.end method

.method public getGet_pet_r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->get_pet_r:I

    .line 2
    .line 3
    return v0
.end method

.method public getGrade_r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->grade_r:I

    .line 2
    .line 3
    return v0
.end method

.method public getIcon_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->icon_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKill_mob()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->kill_mob:I

    .line 2
    .line 3
    return v0
.end method

.method public getKill_mob_r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->kill_mob_r:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel_r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->level_r:I

    .line 2
    .line 3
    return v0
.end method

.method public getMedal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->medal:I

    .line 2
    .line 3
    return v0
.end method

.method public getMedal_r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->medal_r:I

    .line 2
    .line 3
    return v0
.end method

.method public getRole_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->role_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->score:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpdate_time()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->update_time:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    return-wide v0
.end method

.method public setGet_pet(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "get_pet"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->get_pet:I

    .line 2
    .line 3
    return-void
.end method

.method public setGet_pet_r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "get_pet_r"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->get_pet_r:I

    .line 2
    .line 3
    return-void
.end method

.method public setGrade_r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade_r"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->grade_r:I

    .line 2
    .line 3
    return-void
.end method

.method public setIcon_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->icon_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKill_mob(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kill_mob"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->kill_mob:I

    .line 2
    .line 3
    return-void
.end method

.method public setKill_mob_r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kill_mob_r"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->kill_mob_r:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel_r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level_r"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->level_r:I

    .line 2
    .line 3
    return-void
.end method

.method public setMedal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "medal"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->medal:I

    .line 2
    .line 3
    return-void
.end method

.method public setMedal_r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "medal_r"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->medal_r:I

    .line 2
    .line 3
    return-void
.end method

.method public setRole_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->role_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->score:I

    .line 2
    .line 3
    return-void
.end method

.method public setUpdate_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameWorldRoleBean;->update_time:J

    .line 2
    .line 3
    return-void
.end method
