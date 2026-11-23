.class Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;->a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 1
    new-instance p2, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method
