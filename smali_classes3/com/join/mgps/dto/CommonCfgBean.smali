.class public Lcom/join/mgps/dto/CommonCfgBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private act_start_day:I

.field private act_type:I

.field private ad_count:I

.field private is_auto:I


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
.method public getAct_start_day()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonCfgBean;->act_start_day:I

    .line 2
    .line 3
    return v0
.end method

.method public getAct_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonCfgBean;->act_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAd_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonCfgBean;->ad_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_auto()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonCfgBean;->is_auto:I

    .line 2
    .line 3
    return v0
.end method

.method public setAct_start_day(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act_start_day"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonCfgBean;->act_start_day:I

    .line 2
    .line 3
    return-void
.end method

.method public setAct_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonCfgBean;->act_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setAd_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonCfgBean;->ad_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_auto(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_auto"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonCfgBean;->is_auto:I

    .line 2
    .line 3
    return-void
.end method
