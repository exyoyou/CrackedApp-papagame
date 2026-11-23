.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->initImageGallery(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrolled",
        "",
        "position",
        "",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "onPageScrollStateChanged",
        "state",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $holder:Lv2/c;

.field final synthetic $imagesAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;

.field final synthetic $itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

.field final synthetic $rv_top_list:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $viewPager1Adapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;


# direct methods
.method constructor <init>(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Landroidx/recyclerview/widget/RecyclerView;Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$holder:Lv2/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$viewPager1Adapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$rv_top_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$imagesAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$holder:Lv2/c;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    const v1, 0x7f0a1bea

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$holder:Lv2/c;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    const v2, 0x7f0a1b85

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$viewPager1Adapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getViewPager1Views()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$viewPager1Adapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getCount()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge p1, v3, :cond_4

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->isVideo()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x1

    .line 59
    if-ne v4, v5, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v5, 0x0

    .line 63
    :goto_1
    if-eqz v5, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->getCreate()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    sget-object v4, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->Companion:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;

    .line 74
    .line 75
    invoke-virtual {v4, v1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->playVideo(Landroidx/viewpager/widget/ViewPager;Lcom/join/android/app/component/video/MultiStandVideo;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v2, v3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerItem;->setCreate(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    sget-object v1, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->Companion:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->resumePlayVideo(Lcom/join/android/app/component/video/MultiStandVideo;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    sget-object v1, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->Companion:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->pauseVideo(Lcom/join/android/app/component/video/MultiStandVideo;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$rv_top_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$initImageGallery$2;->$imagesAdapter:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->updateCurrentSelected(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
