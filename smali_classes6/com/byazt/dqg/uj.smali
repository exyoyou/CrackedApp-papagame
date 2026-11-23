.class public Lcom/byazt/dqg/uj;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0xf
    }
.end annotation


# instance fields
.field public gt:F

.field public m:Lcom/byazt/iym/RewardDrawRecyclerView;

.field public my:F

.field public nu:Lcom/byazt/iym/c;

.field public qy:Z

.field public rh:Lcom/byazt/iym/ve;

.field public rl:Z

.field public yp:Z

.field public z:Lcom/byazt/iym/RewardGuideSlideUp;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/byazt/dqg/uj;->rl:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dqg/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/dqg/uj;->yp:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/dqg/uj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dqg/uj;->rl:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/dqg/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/dqg/uj;->rl:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/dqg/uj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dqg/uj;->qy:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/dqg/uj;)Lcom/byazt/iym/RewardGuideSlideUp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/uj;->z:Lcom/byazt/iym/RewardGuideSlideUp;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dqg/uj;->yp:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/dqg/uj;->rl:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/byazt/dqg/uj;->qy:Z

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/dqg/uj;->z:Lcom/byazt/iym/RewardGuideSlideUp;

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/dqg/uj;->z:Lcom/byazt/iym/RewardGuideSlideUp;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/byazt/iym/RewardGuideSlideUp;->tt()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-boolean v0, p0, Lcom/byazt/dqg/uj;->qy:Z

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public c()V
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06ffad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/iym/RewardDrawRecyclerView;

    iput-object v0, p0, Lcom/byazt/dqg/uj;->m:Lcom/byazt/iym/RewardDrawRecyclerView;

    .line 7
    new-instance v0, Lcom/byazt/iym/ve;

    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/iym/ve;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/byazt/dqg/uj;->rh:Lcom/byazt/iym/ve;

    .line 8
    iget-object v1, p0, Lcom/byazt/dqg/uj;->m:Lcom/byazt/iym/RewardDrawRecyclerView;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/RecyclerView;->setLayoutManager(Lcom/byazt/kt/RecyclerView$i;)V

    .line 9
    new-instance v0, Lcom/byazt/iym/c;

    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget v2, p0, Lcom/byazt/dqg/uj;->my:F

    iget v3, p0, Lcom/byazt/dqg/uj;->gt:F

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/iym/c;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/byazt/dqg/uj;->nu:Lcom/byazt/iym/c;

    .line 10
    iget-object v1, p0, Lcom/byazt/dqg/uj;->m:Lcom/byazt/iym/RewardDrawRecyclerView;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/RecyclerView;->setAdapter(Lcom/byazt/kt/RecyclerView$c;)V

    .line 11
    iget-boolean v0, p0, Lcom/byazt/dqg/uj;->yp:Z

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    const v1, 0x7e06fffe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/iym/RewardGuideSlideUp;

    iput-object v0, p0, Lcom/byazt/dqg/uj;->z:Lcom/byazt/iym/RewardGuideSlideUp;

    .line 13
    invoke-virtual {v0}, Lcom/byazt/iym/RewardGuideSlideUp;->c()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 14
    iget-object p1, p0, Lcom/byazt/dqg/uj;->rh:Lcom/byazt/iym/ve;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/iym/ve;->tt(Z)V

    return-void
.end method

.method public c([F)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    iput v0, p0, Lcom/byazt/dqg/uj;->my:F

    const/4 v0, 0x1

    .line 4
    aget p1, p1, v0

    iput p1, p0, Lcom/byazt/dqg/uj;->gt:F

    return-void
.end method

.method public da()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->da()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/dqg/uj;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dqg/uj;->yp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/dqg/uj;->rl:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/dqg/uj$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/dqg/uj$1;-><init>(Lcom/byazt/dqg/uj;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public tt()Lcom/byazt/kt/RecyclerView;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/uj;->m:Lcom/byazt/iym/RewardDrawRecyclerView;

    return-object v0
.end method

.method public uj()Lcom/byazt/iym/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/uj;->rh:Lcom/byazt/iym/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/iym/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/uj;->nu:Lcom/byazt/iym/c;

    return-object v0
.end method
