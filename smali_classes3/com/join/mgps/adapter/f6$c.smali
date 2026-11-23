.class Lcom/join/mgps/adapter/f6$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f6;->d0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic b:Lcom/join/mgps/dto/HomeRankingListBean;

.field final synthetic c:Lcom/join/mgps/adapter/f6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;Lcom/join/mgps/dto/HomeRankingListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$tablayout",
            "val$rankingListBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6$c;->c:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/f6$c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/f6$c;->b:Lcom/join/mgps/dto/HomeRankingListBean;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
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
    iget-object p3, p0, Lcom/join/mgps/adapter/f6$c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 6
    .line 7
    .line 8
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
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$c;->c:Lcom/join/mgps/adapter/f6;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f6;->S(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$c;->c:Lcom/join/mgps/adapter/f6;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$c;->c:Lcom/join/mgps/adapter/f6;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$c;->b:Lcom/join/mgps/dto/HomeRankingListBean;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Lcom/join/mgps/adapter/f6$g;->n(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
