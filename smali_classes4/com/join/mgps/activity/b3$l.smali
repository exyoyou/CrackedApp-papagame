.class Lcom/join/mgps/activity/b3$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->Q0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewHeight",
            "val$viewHeight1",
            "val$topGalleyHeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$l;->e:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/b3$l;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/b3$l;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/b3$l;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$l;->e:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/activity/b3;->c2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/join/mgps/activity/b3;->d2:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/b3$l;->b:I

    .line 12
    .line 13
    iget v3, p0, Lcom/join/mgps/activity/b3$l;->c:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v3, p0, Lcom/join/mgps/activity/b3$l;->d:I

    .line 17
    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->b0(Lcom/join/mgps/activity/b3;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v2, v0

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/b3$l;->e:Lcom/join/mgps/activity/b3;

    .line 25
    .line 26
    iget v3, v0, Lcom/join/mgps/activity/b3;->e2:I

    .line 27
    .line 28
    sub-int/2addr v2, v3

    .line 29
    add-int/2addr v2, v1

    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 51
    .line 52
    neg-int v1, v2

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
