.class Lcom/join/mgps/activity/s2$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2;->f1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/s2$p;->b:Lcom/join/mgps/activity/s2;

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
    iget-object v0, p0, Lcom/join/mgps/activity/s2$p;->b:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/s2;->q:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/s2$p;->b:Lcom/join/mgps/activity/s2;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/join/mgps/activity/s2;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/s2$p;->b:Lcom/join/mgps/activity/s2;

    .line 28
    .line 29
    iget-object v3, v2, Lcom/join/mgps/activity/s2;->H:Lcom/join/mgps/customview/CoordinatorLayout;

    .line 30
    .line 31
    iget-object v4, v2, Lcom/join/mgps/activity/s2;->q:Lcom/google/android/material/appbar/AppBarLayout;

    .line 32
    .line 33
    iget-object v5, v2, Lcom/join/mgps/activity/s2;->k:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    aget v0, v0, v2

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    filled-new-array {v2, v2}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v2, v3

    .line 46
    move-object v3, v4

    .line 47
    move-object v4, v5

    .line 48
    move v5, v6

    .line 49
    move v6, v0

    .line 50
    invoke-virtual/range {v1 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
