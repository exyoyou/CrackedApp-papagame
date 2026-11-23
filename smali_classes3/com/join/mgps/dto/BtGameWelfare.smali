.class public Lcom/join/mgps/dto/BtGameWelfare;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field game_activity_summary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field game_benefit_summary:Lcom/join/mgps/dto/BtGameBenefitSummary;


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
.method public getGame_activity_summary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameWelfare;->game_activity_summary:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameWelfare;->game_benefit_summary:Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_activity_summary(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_activity_summary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameWelfare;->game_activity_summary:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_benefit_summary(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_benefit_summary"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameWelfare;->game_benefit_summary:Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 2
    .line 3
    return-void
.end method
