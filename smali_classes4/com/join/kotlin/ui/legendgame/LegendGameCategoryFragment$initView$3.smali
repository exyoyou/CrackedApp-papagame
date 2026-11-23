.class public final Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;
.super Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3",
        "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;",
        "onStateChanged",
        "",
        "appBarLayout",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "state",
        "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 1

    .line 1
    const-string v0, "appBarLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "state"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_2

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 30
    .line 31
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-static {p1, p2}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$setAppBarExpanded$p(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$pauseHeaderVideo(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$setAppBarExpanded$p(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$tryStartHeaderVideo(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method
