.class Lcom/join/mgps/activity/IntroductionActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/IntroductionActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic b:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$300(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 16
    .line 17
    const v2, 0x7f0d089b

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$302(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$300(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$200(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/activity/IntroductionActivity;->access$202(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/activity/IntroductionActivity;->hideCustomView()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "newProgress"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0xa

    .line 5
    .line 6
    if-le p2, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->pb_progress:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 p1, 0x50

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    if-le p2, p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->pb_progress:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/16 p1, 0x64

    .line 34
    .line 35
    if-ne p2, p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->pb_progress:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "requestedOrientation",
            "callback"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/activity/IntroductionActivity$b;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/IntroductionActivity;->access$200(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->access$202(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$b;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-virtual {v0, p1, p2, p0}, Lcom/join/mgps/activity/IntroductionActivity;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V

    return-void
.end method
