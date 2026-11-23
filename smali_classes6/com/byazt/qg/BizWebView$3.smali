.class public Lcom/byazt/qg/BizWebView$3;
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
        0x7ce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/BizWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/qg/BizWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/BizWebView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/BizWebView$3;->ve:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qg/BizWebView$3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qg/BizWebView$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$3;->ve:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$3;->ve:Lcom/byazt/qg/BizWebView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/qg/BizWebView$3;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/qg/BizWebView$3;->tt:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/nl/uj;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
