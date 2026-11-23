.class public final Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "onTabSelected",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "onTabUnselected",
        "onTabReselected",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gd0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$applyTabStyle(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/google/android/material/tabs/TabLayout$g;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$applyTabStyle(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/google/android/material/tabs/TabLayout$g;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
