.class Lcom/join/mgps/activity/b3$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->q1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [I

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/join/mgps/activity/b3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/b3$s;->b:Lcom/join/mgps/activity/b3;

    .line 63
    .line 64
    iget-object v3, v2, Lcom/join/mgps/activity/b3;->I:Lcom/join/mgps/customview/CoordinatorLayout;

    .line 65
    .line 66
    iget-object v4, v2, Lcom/join/mgps/activity/b3;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 67
    .line 68
    iget-object v5, v2, Lcom/join/mgps/activity/b3;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v2, 0x1

    .line 72
    aget v0, v0, v2

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    filled-new-array {v2, v2}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const/4 v8, 0x0

    .line 80
    move-object v2, v3

    .line 81
    move-object v3, v4

    .line 82
    move-object v4, v5

    .line 83
    move v5, v6

    .line 84
    move v6, v0

    .line 85
    invoke-virtual/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-void
.end method
