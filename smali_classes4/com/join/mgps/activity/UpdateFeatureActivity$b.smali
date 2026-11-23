.class Lcom/join/mgps/activity/UpdateFeatureActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UpdateFeatureActivity;->initViewpager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/UpdateFeatureActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UpdateFeatureActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$000(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    add-int/lit8 p3, p3, -0x2

    .line 12
    .line 13
    if-lt p1, p3, :cond_0

    .line 14
    .line 15
    float-to-double p1, p2

    .line 16
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 17
    .line 18
    cmpl-double p3, p1, v0

    .line 19
    .line 20
    if-ltz p3, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/activity/UpdateFeatureActivity;->finish()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$000(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$200(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$200(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_3

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$200(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$200(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    rem-int v4, p1, v4

    .line 55
    .line 56
    if-ne v2, v4, :cond_1

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v4, 0x0

    .line 61
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$300(Lcom/join/mgps/activity/UpdateFeatureActivity;)Lcom/join/mgps/activity/UpdateFeatureActivity$c;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$300(Lcom/join/mgps/activity/UpdateFeatureActivity;)Lcom/join/mgps/activity/UpdateFeatureActivity$c;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$400(Lcom/join/mgps/activity/UpdateFeatureActivity;)Landroid/os/Handler;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$400(Lcom/join/mgps/activity/UpdateFeatureActivity;)Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateFeatureActivity;->access$400(Lcom/join/mgps/activity/UpdateFeatureActivity;)Landroid/os/Handler;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity$b;->b:Lcom/join/mgps/activity/UpdateFeatureActivity;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/join/mgps/activity/UpdateFeatureActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 115
    .line 116
    const-wide/16 v1, 0xbb8

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method
