.class public Lcom/join/mgps/dto/BTGameCouponBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:Ljava/lang/String;

.field private coupon_id:Ljava/lang/String;

.field private coupon_name:Ljava/lang/String;

.field private coupon_type:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private effect_end_time:Ljava/lang/String;

.field private effect_start_time:Ljava/lang/String;

.field private effect_time_hint:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private receivable:Z

.field private showDetial:Z

.field private usable_games:Ljava/lang/String;

.field private usable_gamesShow:Ljava/lang/String;

.field private use_condition:Ljava/lang/String;

.field private use_condition_no_price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->amount:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->showDetial:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoupon_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoupon_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoupon_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->discount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffect_end_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffect_start_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_start_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffect_time_hint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_time_hint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUsable_games()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->usable_games:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUsable_gamesShow()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->usable_gamesShow:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUse_condition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->use_condition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUse_condition_no_price()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->use_condition_no_price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReceivable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->receivable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowDetial()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BTGameCouponBean;->showDetial:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->coupon_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->discount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEffect_end_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect_end_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEffect_start_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect_start_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_start_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEffect_time_hint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect_time_hint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->effect_time_hint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReceivable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receivable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->receivable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowDetial(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showDetial"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->showDetial:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUsable_games(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usable_games"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->usable_games:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUsable_gamesShow(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usable_gamesShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->usable_gamesShow:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUse_condition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use_condition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->use_condition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUse_condition_no_price(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use_condition_no_price"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BTGameCouponBean;->use_condition_no_price:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
