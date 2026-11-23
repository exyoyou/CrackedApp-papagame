.class Lcom/join/mgps/activity/HMCloudMainActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->afterFirstFrameArrival()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getResolutionList()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getResolutionList()Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getResolutionList()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getResolutionList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentResolution()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$c;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/BaseVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
