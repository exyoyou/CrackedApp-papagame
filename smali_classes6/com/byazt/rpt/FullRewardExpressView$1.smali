.class public Lcom/byazt/rpt/FullRewardExpressView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x581
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rpt/FullRewardExpressView;->yp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rpt/FullRewardExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/rpt/FullRewardExpressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView$1;->c:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    :try_start_0
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/byazt/ouz/NativeExpressView;

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->my()V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView$1;->c:Lcom/byazt/rpt/FullRewardExpressView;

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/ouz/FullRewardExpressBackupView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/byazt/ouz/FullRewardExpressBackupView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p2, Lcom/byazt/rpt/FullRewardExpressView;->tt:Lcom/byazt/ouz/FullRewardExpressBackupView;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView$1;->c:Lcom/byazt/rpt/FullRewardExpressView;

    .line 21
    .line 22
    iget-object v0, p2, Lcom/byazt/rpt/FullRewardExpressView;->tt:Lcom/byazt/ouz/FullRewardExpressBackupView;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/byazt/rpt/FullRewardExpressView;->c(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p1, Lcom/byazt/ouz/NativeExpressView;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Lcom/byazt/ouz/FullRewardExpressBackupView;->c(Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :catch_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method
