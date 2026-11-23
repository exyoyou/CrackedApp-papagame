.class Lcom/join/mgps/activity/ModGameIndexActivity$t;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->initRecommendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$400(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$602(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$700(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$600(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1000(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickIconSlideUPDown:Lcom/papa/sim/statistic/Event;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$800(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, -0x1

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$900(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$702(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 74
    .line 75
    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$602(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1100(Lcom/join/mgps/activity/ModGameIndexActivity;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sub-long/2addr p1, v0

    .line 12
    const-wide/16 v0, 0xc8

    .line 13
    .line 14
    cmp-long v2, p1, v0

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$400(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1102(Lcom/join/mgps/activity/ModGameIndexActivity;J)J

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$t;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 34
    .line 35
    invoke-static {p1, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$712(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 36
    .line 37
    .line 38
    return-void
.end method
