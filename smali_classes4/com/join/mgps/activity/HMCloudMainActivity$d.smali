.class Lcom/join/mgps/activity/HMCloudMainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->hideHmVirtual()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$d;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$d;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/HMCloudMainActivity$d;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    instance-of v4, v3, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v3, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->hideKeyboard()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showVirtualStick(Z)Z

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    iput-object v4, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVirtualDeviceLayout:Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$d;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$d;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/HMCloudMenuActivity;->resizeOpContainer(II)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
