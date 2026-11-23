.class public final Lcom/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/discount/GameDetailActivity;->initTabAndViewpager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2",
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
.field final synthetic this$0:Lcom/join/kotlin/discount/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/discount/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2;->this$0:Lcom/join/kotlin/discount/GameDetailActivity;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2;->this$0:Lcom/join/kotlin/discount/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/kotlin/discount/GameDetailActivity;->access$refreshTab(Lcom/join/kotlin/discount/GameDetailActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2;->this$0:Lcom/join/kotlin/discount/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/discount/GameDetailActivity;->access$refreshTab(Lcom/join/kotlin/discount/GameDetailActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailActivity$initTabAndViewpager$2;->this$0:Lcom/join/kotlin/discount/GameDetailActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/n0;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/n0;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method
