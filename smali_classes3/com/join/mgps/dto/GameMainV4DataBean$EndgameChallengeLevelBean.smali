.class public Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndgameChallengeLevelBean"
.end annotation


# instance fields
.field private boundary:Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;

.field private level:Ljava/lang/String;


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
.method public getBoundary()Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;->boundary:Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBoundary(Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boundary"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;->boundary:Lcom/join/mgps/dto/GameMainV4DataBean$BoundaryBean;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
