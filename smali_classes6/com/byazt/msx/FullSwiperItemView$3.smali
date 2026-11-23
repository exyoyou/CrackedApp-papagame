.class public Lcom/byazt/msx/FullSwiperItemView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/msx/FullSwiperItemView$ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x8be
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/msx/FullSwiperItemView;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/msx/FullSwiperItemView;


# direct methods
.method public constructor <init>(Lcom/byazt/msx/FullSwiperItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->tt(Lcom/byazt/msx/FullSwiperItemView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->tt(Lcom/byazt/msx/FullSwiperItemView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kk()V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->ve(Lcom/byazt/msx/FullSwiperItemView;)Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->tt(Lcom/byazt/msx/FullSwiperItemView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->tt(Lcom/byazt/msx/FullSwiperItemView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/byazt/kcl/a;->tt(J)V

    .line 7
    iget-object v1, p0, Lcom/byazt/msx/FullSwiperItemView$3;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v1}, Lcom/byazt/msx/FullSwiperItemView;->ve(Lcom/byazt/msx/FullSwiperItemView;)Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->md()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    cmp-long v5, p1, p3

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->eo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 10
    :goto_1
    invoke-virtual {v1, v2, v4, v3, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Ljava/lang/CharSequence;IIZ)V

    :cond_2
    return-void
.end method
