.class final Lcom/kwad/sdk/utils/ah$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/ah;->aw(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BE:Ljava/lang/String;

.field final synthetic bfj:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/utils/ah$1;->BE:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/utils/ah$1;->bfj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    const-string v0, "ksadsdk_kv_perf"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/utils/ah$1;->BE:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/bq;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/kwad/sdk/utils/ah$1;->bfj:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kwad/sdk/utils/ah$1;->BE:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/bq;->az(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/kwad/sdk/utils/ah$1;->BE:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/bq;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    iget-object v2, p0, Lcom/kwad/sdk/utils/ah$1;->BE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/kwad/sdk/utils/bq;->az(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
