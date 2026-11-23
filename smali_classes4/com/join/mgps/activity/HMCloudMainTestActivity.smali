.class public Lcom/join/mgps/activity/HMCloudMainTestActivity;
.super Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;
.source "SourceFile"


# annotations
.annotation build Ldagger/hilt/android/AndroidEntryPoint;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/join/mgps/activity/HMCloudMainTestActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudMainTestActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->inflate(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/aw0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/aw0;->a()Landroid/widget/LinearLayout;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->showPopup(Landroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/widget/PopupWindow;

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0071

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMenuActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->initObserver()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isHmCloudPc()Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0a169a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/join/mgps/activity/r4;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/r4;-><init>(Lcom/join/mgps/activity/HMCloudMainTestActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 40
    .line 41
    const-string v0, "4020753882"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 47
    .line 48
    const-string v0, "1983933881"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 54
    .line 55
    const-string v0, "3803895056"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 61
    .line 62
    const-string v0, "113537263"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 68
    .line 69
    const-string v0, "2075362474"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 75
    .line 76
    const-string v0, "2512250246"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setGameId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadLastCommonConfig()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->viewModel:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-direct {v0, v2, v1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;-><init>(ILjava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget-object v0, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/HmcpManager;->setGameArchitectureType(Lcom/haima/hmcp/beans/GameArchitectureType;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/w90;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/w90;->l:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->checkGuide()V

    .line 128
    .line 129
    .line 130
    return-void
.end method
