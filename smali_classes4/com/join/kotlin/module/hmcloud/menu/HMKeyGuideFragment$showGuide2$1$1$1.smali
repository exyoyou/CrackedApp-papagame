.class public final Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/guideview/GuideBuilder$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1",
        "Lcom/join/mgps/customview/guideview/GuideBuilder$OnVisibilityChangedListener;",
        "onShown",
        "",
        "onDismiss",
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
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v0, v3, v1, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideNext$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 0

    return-void
.end method
