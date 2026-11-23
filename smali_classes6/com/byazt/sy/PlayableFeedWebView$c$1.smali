.class public Lcom/byazt/sy/PlayableFeedWebView$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jlk/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x9a3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sy/PlayableFeedWebView$c;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic tt:Lcom/byazt/sy/PlayableFeedWebView$c;


# direct methods
.method public constructor <init>(Lcom/byazt/sy/PlayableFeedWebView$c;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView$c$1;->tt:Lcom/byazt/sy/PlayableFeedWebView$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sy/PlayableFeedWebView$c$1;->c:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/or/da$c;Ljava/lang/String;)Lcom/byazt/six/c;
    .locals 2

    .line 2
    new-instance p3, Lcom/byazt/six/c;

    invoke-direct {p3}, Lcom/byazt/six/c;-><init>()V

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p3, v0}, Lcom/byazt/six/c;->c(I)V

    .line 4
    invoke-static {}, Lcom/byazt/tlc/tt;->tt()Lcom/byazt/tlc/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView$c$1;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p2, p1}, Lcom/byazt/tlc/tt;->c(Landroid/webkit/WebView;Lcom/byazt/or/da$c;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/byazt/six/c;->c(Landroid/webkit/WebResourceResponse;)V

    return-object p3
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
