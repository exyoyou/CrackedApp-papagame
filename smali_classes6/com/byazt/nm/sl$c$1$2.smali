.class public Lcom/byazt/nm/sl$c$1$2;
.super Lcom/byazt/tn/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x96a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/sl$c$1;->c(Lcom/byazt/nc/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/sl$c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/sl$c$1;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/tn/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdVideoBarClick"

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->nu(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/uhf/c;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/uhf/c;->i_()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "pangle_reward:onAdShow"

    .line 1
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object p1, p1, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->z(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/uhf/c;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object p1, p1, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/uhf/c;->c()V

    :cond_0
    return-void
.end method

.method public c(ZILandroid/os/Bundle;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->rl(Lcom/byazt/nm/sl$c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "csj-onRewardArrived ="

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->gu(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/uhf/c;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/nm/sl$c$1$2$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/byazt/nm/sl$c$1$2$2;-><init>(Lcom/byazt/nm/sl$c$1$2;ZLandroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Lcom/byazt/uhf/c;->c(Lcom/byazt/bo/c;)V

    :cond_0
    return-void
.end method

.method public c(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->rl(Lcom/byazt/nm/sl$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onRewardVerify-------------2"

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->qy(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/uhf/c;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/nm/sl$c$1$2$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/nm/sl$c$1$2$1;-><init>(Lcom/byazt/nm/sl$c$1$2;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/byazt/uhf/c;->c(Lcom/byazt/bo/c;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "pangle_reward:onSkippedVideo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->gr(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/byazt/uhf/c;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/byazt/uhf/c;->a()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "pangle_reward:onAdClose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->rh(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/byazt/uhf/c;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/byazt/uhf/c;->j_()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "pangle_reward:onVideoError"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->gt(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/byazt/uhf/c;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/byazt/uhf/c;->n()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "pangle_reward:onVideoComplete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->my(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/byazt/uhf/c;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1$2;->c:Lcom/byazt/nm/sl$c$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/nm/sl$c;->m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/byazt/uhf/c;->uj()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
