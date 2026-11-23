.class Lcom/join/mgps/fragment/n5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/n5;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/n5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

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
    .locals 0
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

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/n5;->N(Lcom/join/mgps/fragment/n5;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/fragment/n5;->N(Lcom/join/mgps/fragment/n5;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/fragment/n5;->O(Lcom/join/mgps/fragment/n5;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/fragment/n5;->Q(Lcom/join/mgps/fragment/n5;)Lcom/join/mgps/fragment/n5$c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/join/mgps/fragment/n5;->O(Lcom/join/mgps/fragment/n5;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/join/mgps/fragment/n5;->P(Lcom/join/mgps/fragment/n5;I)I

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/fragment/n5;->N(Lcom/join/mgps/fragment/n5;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/join/mgps/fragment/n5;->O(Lcom/join/mgps/fragment/n5;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/mgps/fragment/n5;->Q(Lcom/join/mgps/fragment/n5;)Lcom/join/mgps/fragment/n5$c;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/join/mgps/fragment/n5;->O(Lcom/join/mgps/fragment/n5;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/fragment/n5$b;->b:Lcom/join/mgps/fragment/n5;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/join/mgps/fragment/n5;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method
