.class Lcom/join/mgps/customview/LJNestScrollWebView$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LJNestScrollWebView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic b:Lcom/join/mgps/customview/LJNestScrollWebView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LJNestScrollWebView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/join/mgps/customview/LJNestScrollWebView;->n:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->o(Lcom/join/mgps/customview/LJNestScrollWebView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "valueCallback",
            "acceptType"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/join/mgps/customview/LJNestScrollWebView;->n:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/customview/LJNestScrollWebView;->o(Lcom/join/mgps/customview/LJNestScrollWebView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "valueCallback",
            "acceptType",
            "capture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/join/mgps/customview/LJNestScrollWebView;->n:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/join/mgps/customview/LJNestScrollWebView;->o(Lcom/join/mgps/customview/LJNestScrollWebView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->m(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->i(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 20
    .line 21
    const v2, 0x7f0d089b

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->n(Lcom/join/mgps/customview/LJNestScrollWebView;Landroid/view/View;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->m(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consoleMessage"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "Uncaught ReferenceError"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "papaBackPageUp"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/join/mgps/customview/LJNestScrollWebView$b;->noMethod()V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " -- From line "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " of "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1
.end method

.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->k(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/customview/LJNestScrollWebView;->l(Lcom/join/mgps/customview/LJNestScrollWebView;Landroid/view/View;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/join/mgps/customview/LJNestScrollWebView$b;->onHideCustomView()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
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
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/join/mgps/customview/LJNestScrollWebView$b;->showMainWebview()V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/16 p1, 0x50

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    if-le p2, p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->b(Lcom/join/mgps/customview/LJNestScrollWebView;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sget v1, Lcom/join/mgps/customview/LJNestScrollWebView;->r:I

    .line 38
    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    const/16 p1, 0x64

    .line 77
    .line 78
    if-ne p2, p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->b(Lcom/join/mgps/customview/LJNestScrollWebView;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    sget p2, Lcom/join/mgps/customview/LJNestScrollWebView;->r:I

    .line 87
    .line 88
    if-ne p1, p2, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->g(Lcom/join/mgps/customview/LJNestScrollWebView;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v1, 0x0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->b(Lcom/join/mgps/customview/LJNestScrollWebView;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sget v2, Lcom/join/mgps/customview/LJNestScrollWebView;->r:I

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    const/4 v4, -0x1

    .line 147
    if-ne v0, v2, :cond_5

    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->i(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const v5, 0x7f0d07fb

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroid/widget/ProgressBar;

    .line 167
    .line 168
    invoke-static {v0, v2}, Lcom/join/mgps/customview/LJNestScrollWebView;->d(Lcom/join/mgps/customview/LJNestScrollWebView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 196
    .line 197
    invoke-static {v2}, Lcom/join/mgps/customview/LJNestScrollWebView;->j(Lcom/join/mgps/customview/LJNestScrollWebView;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {p1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->i(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const v2, 0x7f0d0652

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 223
    .line 224
    invoke-static {p1, v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->f(Lcom/join/mgps/customview/LJNestScrollWebView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 234
    .line 235
    .line 236
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 237
    .line 238
    const/4 v0, 0x1

    .line 239
    invoke-static {p1, v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->h(Lcom/join/mgps/customview/LJNestScrollWebView;Z)Z

    .line 240
    .line 241
    .line 242
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->b(Lcom/join/mgps/customview/LJNestScrollWebView;)I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    sget v0, Lcom/join/mgps/customview/LJNestScrollWebView;->r:I

    .line 249
    .line 250
    if-ne p1, v0, :cond_7

    .line 251
    .line 252
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 262
    .line 263
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->c(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/ProgressBar;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 272
    .line 273
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->e(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/widget/RelativeLayout;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    :cond_8
    :goto_2
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p2}, Lcom/join/mgps/customview/LJNestScrollWebView$b;->onReceivedTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
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

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/customview/LJNestScrollWebView$a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->k(Lcom/join/mgps/customview/LJNestScrollWebView;)Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->l(Lcom/join/mgps/customview/LJNestScrollWebView;Landroid/view/View;)Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    invoke-static {v0}, Lcom/join/mgps/customview/LJNestScrollWebView;->a(Lcom/join/mgps/customview/LJNestScrollWebView;)Lcom/join/mgps/customview/LJNestScrollWebView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lcom/join/mgps/customview/LJNestScrollWebView$b;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V

    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "filePathCallback",
            "fileChooserParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/LJNestScrollWebView$a;->b:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/join/mgps/customview/LJNestScrollWebView;->o:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->o(Lcom/join/mgps/customview/LJNestScrollWebView;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
