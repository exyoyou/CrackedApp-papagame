.class final Lcom/kwad/components/ad/fullscreen/f$1$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/fullscreen/f$1;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic dN:Ljava/util/List;

.field final synthetic jS:Lcom/kwad/components/ad/fullscreen/f$1;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/fullscreen/f$1;Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->jS:Lcom/kwad/components/ad/fullscreen/f$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->dN:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->jS:Lcom/kwad/components/ad/fullscreen/f$1;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 5
    .line 6
    iget v1, v1, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object v4, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->jS:Lcom/kwad/components/ad/fullscreen/f$1;

    .line 13
    .line 14
    iget-wide v4, v4, Lcom/kwad/components/ad/fullscreen/f$1;->ch:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    invoke-static {v1, v2, v3, v0}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->jS:Lcom/kwad/components/ad/fullscreen/f$1;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/kwad/components/ad/fullscreen/f$1;->jR:Lcom/kwad/components/ad/fullscreen/e;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->dN:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/kwad/components/ad/fullscreen/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :catchall_1
    :try_start_2
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->jS:Lcom/kwad/components/ad/fullscreen/f$1;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/kwad/components/ad/fullscreen/f$1;->jR:Lcom/kwad/components/ad/fullscreen/e;

    .line 39
    .line 40
    const-string v2, "onRequestResult"

    .line 41
    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/kwad/components/ad/fullscreen/f$1$2;->dN:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v3, v0, v4

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/utils/ab;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    .line 59
    .line 60
    :catchall_2
    return-void
.end method
