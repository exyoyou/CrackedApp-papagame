.class public final Lcom/join/kotlin/EveryDayNewGameFragment$onViewCreated$4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/EveryDayNewGameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/join/kotlin/EveryDayNewGameFragment$onViewCreated$4",
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
.field final synthetic this$0:Lcom/join/kotlin/EveryDayNewGameFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/EveryDayNewGameFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EveryDayNewGameFragment$onViewCreated$4;->this$0:Lcom/join/kotlin/EveryDayNewGameFragment;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/EveryDayNewGameFragment$onViewCreated$4;->this$0:Lcom/join/kotlin/EveryDayNewGameFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/EveryDayNewGameFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ij;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ij;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
