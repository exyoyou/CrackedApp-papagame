.class Lcom/join/mgps/activity/ModGameIndexActivity$s;
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$500(Lcom/join/mgps/activity/ModGameIndexActivity;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$602(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$700(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$600(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1000(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/papa/sim/statistic/Event;->listClickBigPicSlideUPDown:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$800(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->getPointGameId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v4, -0x1

    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$900(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$702(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$602(Lcom/join/mgps/activity/ModGameIndexActivity;Z)Z

    .line 81
    .line 82
    .line 83
    :cond_1
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
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$400(Lcom/join/mgps/activity/ModGameIndexActivity;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$s;->t:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 34
    .line 35
    invoke-static {p1, p3}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$712(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 36
    .line 37
    .line 38
    return-void
.end method
