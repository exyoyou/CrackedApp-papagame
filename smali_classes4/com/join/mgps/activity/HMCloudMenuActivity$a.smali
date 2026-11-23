.class public final Lcom/join/mgps/activity/HMCloudMenuActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMenuActivity;->hideKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/w90;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/w90;->e:Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->access$setBtnSettings(Lcom/join/mgps/activity/HMCloudMenuActivity;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->access$setBtnKeyboard(Lcom/join/mgps/activity/HMCloudMenuActivity;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/w90;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/w90;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isLatencyOn()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
