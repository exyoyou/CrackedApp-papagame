.class public Lcom/byazt/rpt/FullRewardExpressView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x552
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rpt/FullRewardExpressView$3;->c(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rpt/FullRewardExpressView$3;


# direct methods
.method public constructor <init>(Lcom/byazt/rpt/FullRewardExpressView$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/zd/c;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 13
    .line 14
    iget v2, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->c:I

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->tt:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/rpt/FullRewardExpressView;->ve(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/rpt/FullRewardExpressView;->uj(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/byazt/ete/lt;->c(Lcom/byazt/ete/ic;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-interface {v0, v1}, Lcom/byazt/ouz/sl;->c(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$3$1;->c:Lcom/byazt/rpt/FullRewardExpressView$3;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView$3;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-interface {v0, v1}, Lcom/byazt/ouz/sl;->setPauseFromExpressView(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
