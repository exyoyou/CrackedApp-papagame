.class final Lcom/kwad/components/ad/splashscreen/presenter/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/h;->l(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HP:Lcom/kwad/components/ad/splashscreen/presenter/h;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/kwad/components/ad/splashscreen/b/a;->Hn:Lcom/kwad/sdk/core/config/item/d;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/d;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 17
    .line 18
    iget-object v0, p3, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {p3}, Lcom/kwad/components/ad/splashscreen/presenter/h;->b(Lcom/kwad/components/ad/splashscreen/presenter/h;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/kwad/components/ad/splashscreen/presenter/h;->c(Lcom/kwad/components/ad/splashscreen/presenter/h;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 34
    .line 35
    invoke-static {p3}, Lcom/kwad/components/ad/splashscreen/presenter/h;->d(Lcom/kwad/components/ad/splashscreen/presenter/h;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    sub-long v5, p1, v5

    .line 40
    .line 41
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 42
    .line 43
    iget-object p3, p3, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 44
    .line 45
    iget-object p3, p3, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 46
    .line 47
    iget-wide v7, p3, Lcom/kwad/sdk/core/response/model/AdTemplate;->showTime:J

    .line 48
    .line 49
    sub-long v7, p1, v7

    .line 50
    .line 51
    invoke-static/range {v1 .. v8}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IIIJJ)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/h;->e(Lcom/kwad/components/ad/splashscreen/presenter/h;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/h$2;->HP:Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/h;->a(Lcom/kwad/components/ad/splashscreen/presenter/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
