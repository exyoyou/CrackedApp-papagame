.class public Lcom/byazt/qx/zm;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x1e2
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/n<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/omf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/qx/zm;->tt:Lcom/byazt/omf/d;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/qx/zm;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "appInfo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 3
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "adInfo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 4
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getTemplateInfo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 5
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getTeMaiAds"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 6
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "isViewable"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 7
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getScreenSize"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 8
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getCloseButtonInfo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 9
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getVolume"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 10
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "sendReward"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 11
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "subscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 12
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 13
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "cancel_download_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 14
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "unsubscribe_app_ad"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 15
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "clickEvent"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 16
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "renderDidFinish"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 17
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "dynamicTrack"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 18
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "skipVideo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 19
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "muteVideo"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 20
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "changeVideoState"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 21
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getCurrentVideoState"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 22
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "send_temai_product_ids"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 23
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "getMaterialMeta"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 24
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "endcard_load"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    const-string v1, "endcard_load"

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 25
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "pauseWebView"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    const-string v1, "pauseWebView"

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 26
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "pauseWebViewTimers"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    const-string v1, "pauseWebViewTimers"

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 27
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "webview_time_track"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    const-string v1, "webview_time_track"

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 28
    new-instance v0, Lcom/byazt/qx/zm;

    const-string v1, "adInfoStash"

    invoke-direct {v0, v1, p1}, Lcom/byazt/qx/zm;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;)V

    const-string p1, "adInfoStash"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/zm;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance p2, Lcom/byazt/omf/d$c;

    invoke-direct {p2}, Lcom/byazt/omf/d$c;-><init>()V

    const-string v0, "call"

    .line 30
    iput-object v0, p2, Lcom/byazt/omf/d$c;->c:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/byazt/qx/zm;->c:Ljava/lang/String;

    iput-object v0, p2, Lcom/byazt/omf/d$c;->ve:Ljava/lang/String;

    .line 32
    iput-object p1, p2, Lcom/byazt/omf/d$c;->uj:Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lcom/byazt/qx/zm;->tt:Lcom/byazt/omf/d;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/omf/d$c;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
