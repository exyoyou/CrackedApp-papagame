.class Lcom/join/mgps/activity/WebViewSearchActivity$g;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$000(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onPageFinished() called."

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "http"

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "https"

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    const-string v0, "file://"

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 55
    .line 56
    iput-object p2, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "data:text/html,chromewebdata"

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_7

    .line 69
    .line 70
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$100(Lcom/join/mgps/activity/WebViewSearchActivity;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$200(Lcom/join/mgps/activity/WebViewSearchActivity;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->tipSniffing:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "word"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->isBaiduHost(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v1, 0x1

    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_3

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 150
    .line 151
    iget-object v0, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->isSnifferHost(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    const/4 v1, 0x0

    .line 161
    :goto_0
    if-nez v1, :cond_5

    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->tipSniffing:Landroid/widget/TextView;

    .line 167
    .line 168
    const v0, 0x7f120408

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->tipSniffing:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->layoutLoading:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 191
    .line 192
    const-string v0, "javascript:wufan.processHtml(document.documentElement.outerHTML);"

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 198
    .line 199
    invoke-static {p1, p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$202(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z

    .line 200
    .line 201
    .line 202
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->refreshUi()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->showLoadingFailed()V

    .line 211
    .line 212
    .line 213
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
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$000(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "onPageStarted() called."

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p1, p3}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "http"

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p1, "https"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    const-string p1, "file://"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 55
    .line 56
    iput-object p2, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->showLoading()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->refreshUi()V

    .line 66
    .line 67
    .line 68
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
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$000(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "onReceivedError() called."

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p2, p3}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    invoke-static {p2, p3}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$102(Lcom/join/mgps/activity/WebViewSearchActivity;Z)Z

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    const-string v2, ""

    .line 38
    .line 39
    const-string v3, "text/html"

    .line 40
    .line 41
    const-string v4, "utf-8"

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p1

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->showLoadingFailed()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->refreshUi()V

    .line 56
    .line 57
    .line 58
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
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->access$000(Lcom/join/mgps/activity/WebViewSearchActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "shouldOverrideUrlLoading() called."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const-string v0, "weixin:"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v2, "android.intent.action.VIEW"

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "http"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string v0, "https"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const-string v0, "file://"

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 57
    .line 58
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return v1

    .line 76
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 77
    .line 78
    iput-object p2, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 79
    .line 80
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 86
    .line 87
    new-instance v0, Landroid/content/Intent;

    .line 88
    .line 89
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->a:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/join/mgps/activity/WebViewSearchActivity$g;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 112
    .line 113
    const v0, 0x7f12031e

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    return v1
.end method
