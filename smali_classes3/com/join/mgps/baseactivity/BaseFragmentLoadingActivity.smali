.class public Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;
.implements Lcom/join/mgps/customview/LoadingLayout$a;


# instance fields
.field loadingHintMsg:Ljava/lang/String;

.field protected mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->loadingHintMsg:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public callBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->showLoadingLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->loadData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected getLoadingLayoutResID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLoadingMarginTop()I
    .locals 1

    .line 1
    const/high16 v0, 0x42400000    # 48.0f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected hideLoadingLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$b;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public noDataCallBack()V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0d05f2

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/join/mgps/customview/LoadingLayout;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->loadingHintMsg:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->getLoadingLayoutResID()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/LoadingLayout;->b(Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->getLoadingMarginTop()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method protected setLoadingFailMsg(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingFailMsg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setFailedMessage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoadingHintMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->loadingHintMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected setNoDataListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setmLoadingHintMsgLoading(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected showFailLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$d;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$d;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected showLoadingLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected showNoDataLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$c;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$c;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
