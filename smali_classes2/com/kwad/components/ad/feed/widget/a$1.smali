.class final Lcom/kwad/components/ad/feed/widget/a$1;
.super Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/feed/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hV:Lcom/kwad/components/ad/feed/widget/a;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/feed/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/a$1;->hV:Lcom/kwad/components/ad/feed/widget/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/a$1;->hV:Lcom/kwad/components/ad/feed/widget/a;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/kwad/components/ad/feed/widget/a;->b(Lcom/kwad/components/ad/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p2

    .line 14
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/a$1;->hV:Lcom/kwad/components/ad/feed/widget/a;

    .line 15
    .line 16
    iget-wide v5, v3, Lcom/kwad/components/ad/feed/widget/a;->hP:J

    .line 17
    .line 18
    sub-long v5, p2, v5

    .line 19
    .line 20
    move-object v3, p1

    .line 21
    invoke-static/range {v0 .. v6}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/kwad/components/ad/feed/widget/a$1;->hV:Lcom/kwad/components/ad/feed/widget/a;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/kwad/components/ad/feed/widget/a;->a(Lcom/kwad/components/ad/feed/widget/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {p3}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/a$1;->hV:Lcom/kwad/components/ad/feed/widget/a;

    .line 18
    .line 19
    iget-wide v5, v3, Lcom/kwad/components/ad/feed/widget/a;->hP:J

    .line 20
    .line 21
    sub-long v5, p2, v5

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/kwad/components/ad/feed/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
