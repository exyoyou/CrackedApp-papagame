.class public final Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
        "",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$setTabChangeFromPager$p(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/go0;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/go0;->d:Lcom/google/android/material/tabs/TabLayout;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$setTabChangeFromPager$p(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$4;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$notifyPageVisible(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
