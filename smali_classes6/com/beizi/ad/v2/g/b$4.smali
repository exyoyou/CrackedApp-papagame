.class Lcom/beizi/ad/v2/g/b$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/g/b;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/g/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->c(Lcom/beizi/ad/v2/g/b;)Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 13
    .line 14
    const/16 p2, 0xa

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->x(Lcom/beizi/ad/v2/g/b;)Landroid/webkit/WebView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 29
    .line 30
    const/16 p2, 0x9

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->y(Lcom/beizi/ad/v2/g/b;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->z(Lcom/beizi/ad/v2/g/b;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->q(Lcom/beizi/ad/v2/g/b;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->r(Lcom/beizi/ad/v2/g/b;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->s(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/v2/b/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->s(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/v2/b/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lcom/beizi/ad/v2/b/a;->a()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->c(Lcom/beizi/ad/v2/g/b;)Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/beizi/ad/v2/g/b;->x(Lcom/beizi/ad/v2/g/b;)Landroid/webkit/WebView;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->q(Lcom/beizi/ad/v2/g/b;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->r(Lcom/beizi/ad/v2/g/b;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/beizi/ad/v2/g/b;->t(Lcom/beizi/ad/v2/g/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/beizi/ad/v2/g/b$4;->a:Lcom/beizi/ad/v2/g/b;

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
