.class public Lcom/byazt/nm/t$c$1$2;
.super Lcom/byazt/vw/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x40c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/t$c$1;->c(Lcom/byazt/nc/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/t$c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/vw/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/tt;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashAdShow"

    .line 1
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->m(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/n;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/ko/tt;->n()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nc/tt;I)V
    .locals 1

    const-string p1, "new api onSplashAdClose closeType = "

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->gt(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/n;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/byazt/ko/tt;->tt(I)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->my(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/n;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/byazt/ko/tt;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public tt(Lcom/byazt/nc/tt;)V
    .locals 1

    .line 1
    const-string p1, "TTMediationSDK"

    .line 2
    .line 3
    const-string v0, "new api onSplashAdClick"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/nm/t$c;->rh(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of p1, p1, Lcom/byazt/zq/n;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/nm/t$c$1$2;->c:Lcom/byazt/nm/t$c$1;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/byazt/nm/t$c;->nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/byazt/ko/tt;->uj()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
