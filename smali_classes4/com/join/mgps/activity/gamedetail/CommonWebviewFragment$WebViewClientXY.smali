.class Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientXY"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url2"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, ".zip"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "onPageFinished() called."

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "http"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string v0, "https"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "file://"

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 62
    .line 63
    iput-object p2, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->url:Ljava/lang/String;

    .line 64
    .line 65
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->url:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "data:text/html,chromewebdata"

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_4

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 78
    .line 79
    invoke-static {p2}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$100(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/4 p2, -0x2

    .line 99
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->showLodingFailed()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url2",
            "favicon"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "onPageStarted() called."

    .line 14
    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p1, p3}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, ".zip"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p1, "http"

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    const-string p1, "https"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const-string p1, "file://"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 62
    .line 63
    iput-object p2, p1, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->url:Ljava/lang/String;

    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->showLoding()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode",
            "description",
            "failingUrl"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "onReceivedError() called."

    .line 14
    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p2, ".zip"

    .line 29
    .line 30
    invoke-virtual {p4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    invoke-static {p2, p3}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$102(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;Z)Z

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v2, ""

    .line 45
    .line 46
    const-string v3, "text/html"

    .line 47
    .line 48
    const-string v4, "utf-8"

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    move-object v0, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->showLodingFailed()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "handler",
            "error"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x3

    .line 6
    if-eq p1, p3, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x5

    .line 9
    if-eq p1, p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "shouldOverrideUrlLoading() called."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const-string v0, "weixin:"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v2, "android.intent.action.VIEW"

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "http"

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "https"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "file://"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 59
    .line 60
    new-instance v0, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return v1

    .line 78
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 79
    .line 80
    iput-object p2, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->url:Ljava/lang/String;

    .line 81
    .line 82
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 88
    .line 89
    new-instance v0, Landroid/content/Intent;

    .line 90
    .line 91
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebViewClientXY;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 118
    .line 119
    const v0, 0x7f12031e

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    return v1
.end method
