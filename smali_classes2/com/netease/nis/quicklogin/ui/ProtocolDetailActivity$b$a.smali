.class Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;->a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b$a;->a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;->a:Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method
