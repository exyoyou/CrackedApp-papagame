.class Lcom/join/mgps/activity/SplashActivity$q;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->V(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ShowViewDataBean;

.field final synthetic c:Lcom/join/mgps/dto/SplashIntentBean;

.field final synthetic d:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$showViewDataBean",
            "val$appBeanMain"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$q;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SplashActivity$q;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SplashActivity$q;->c:Lcom/join/mgps/dto/SplashIntentBean;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "objects"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/SplashActivity$q;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "objects"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$q;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$q;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$q;->c:Lcom/join/mgps/dto/SplashIntentBean;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->o(Lcom/join/mgps/activity/SplashActivity;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, "0"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "1"

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/join/mgps/activity/SplashActivity;->n(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "objects"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$q;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$q;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 10
    .line 11
    div-int/lit16 p1, p1, 0x3e8

    .line 12
    .line 13
    iput p1, p2, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 14
    .line 15
    invoke-static {p2}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$q;->d:Lcom/join/mgps/activity/SplashActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
