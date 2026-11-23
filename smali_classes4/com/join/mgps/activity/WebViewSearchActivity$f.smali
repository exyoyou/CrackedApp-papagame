.class public Lcom/join/mgps/activity/WebViewSearchActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public processHtml(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "html"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "word"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/WebViewSearchActivity;->isBaiduHost(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->acquirePackageFromBaiduByHtml(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->url:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity;->isSnifferHost(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$f;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->acquirePackageByHtml(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
