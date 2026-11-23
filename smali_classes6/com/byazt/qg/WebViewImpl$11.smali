.class public Lcom/byazt/qg/WebViewImpl$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11b,
        0x11c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/WebViewImpl;->setWebViewClient(Landroid/webkit/WebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/webkit/WebViewClient;

.field public final synthetic tt:Lcom/byazt/qg/WebViewImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/WebViewImpl;Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/WebViewImpl$11;->tt:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qg/WebViewImpl$11;->c:Landroid/webkit/WebViewClient;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$11;->c:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/el/SSWebView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/el/SSWebView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v1, v0, Lcom/byazt/el/tt;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/byazt/el/tt;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/el/tt;->c()Landroid/webkit/WebViewClient;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/byazt/qg/WebViewImpl$11;->tt:Lcom/byazt/qg/WebViewImpl;

    .line 22
    .line 23
    new-instance v2, Lcom/byazt/el/tt;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/byazt/el/tt;-><init>(Landroid/webkit/WebViewClient;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, v1, Lcom/byazt/qg/BaseWebView;->tt:Lcom/byazt/el/tt;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$11;->tt:Lcom/byazt/qg/WebViewImpl;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/byazt/qg/BaseWebView;->tt:Lcom/byazt/el/tt;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    return-void
.end method
