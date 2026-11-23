.class public Lcom/join/mgps/dto/GameworldRankGradeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private get_pet:I

.field private kill_mob:I

.field private level:I

.field private medal:I

.field private score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "get_pet",
            "medal",
            "kill_mob",
            "score"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->level:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->get_pet:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->medal:I

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->kill_mob:I

    .line 7
    iput p5, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->score:I

    return-void
.end method


# virtual methods
.method public getGet_pet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->get_pet:I

    .line 2
    .line 3
    return v0
.end method

.method public getKill_mob()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->kill_mob:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getMedal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->medal:I

    .line 2
    .line 3
    return v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->score:I

    .line 2
    .line 3
    return v0
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
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->get_pet:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->kill_mob:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->level:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->medal:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameworldRankGradeBean;->score:I

    .line 2
    .line 3
    return-void
.end method
