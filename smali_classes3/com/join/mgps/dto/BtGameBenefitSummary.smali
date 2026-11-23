.class public Lcom/join/mgps/dto/BtGameBenefitSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

.field game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

.field jump_url:Ljava/lang/String;


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
.method public getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_gift_summary()Lcom/join/mgps/dto/BtGameBenefitBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_coupon_summary(Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_summary"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_coupon_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_gift_summary(Lcom/join/mgps/dto/BtGameBenefitBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_gift_summary"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->game_gift_summary:Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitSummary;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
