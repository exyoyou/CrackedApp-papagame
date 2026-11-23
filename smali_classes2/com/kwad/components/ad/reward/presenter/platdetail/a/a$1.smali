.class final Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zF:Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;->zF:Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/response/model/LiveDetailReward;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;->zF:Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;Z)Z

    .line 6
    .line 7
    .line 8
    iget-wide v0, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->hasRewardTime:D

    .line 9
    .line 10
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double v0, v0, v2

    .line 16
    .line 17
    double-to-long v0, v0

    .line 18
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;->zF:Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v0, v3

    .line 25
    invoke-static {v2, v0, v1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;J)J

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;->zF:Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;

    .line 29
    .line 30
    iget-wide v1, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->countDownSecond:J

    .line 31
    .line 32
    long-to-int p1, v1

    .line 33
    invoke-static {v0, p1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
