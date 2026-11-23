.class public Lcom/byazt/ja/c;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x591,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/uj<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ja/c;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ja/c$1;

    invoke-direct {v0, p1}, Lcom/byazt/ja/c$1;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "interstitial_webview_close"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ja/c;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->hd()Z

    const-string p1, "DoInterstitialWebViewCloseMethod invoke "

    const-string p2, "DoInterstitialWebViewCloseMethod"

    .line 4
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/ja/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/omf/d;

    if-nez p1, :cond_0

    const-string p1, "invoke error"

    .line 6
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/omf/d;->nu()V

    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
