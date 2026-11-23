.class public abstract Lcom/kwad/sdk/core/network/l;
.super Lcom/kwad/sdk/core/network/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/kwad/sdk/core/network/f;",
        "T:",
        "Lcom/kwad/sdk/core/response/model/BaseResultData;",
        ">",
        "Lcom/kwad/sdk/core/network/a<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static HTTP_CODE_ERROR_MSG:Ljava/lang/String; = "\u7f51\u7edc\u9519\u8bef"

.field private static final TAG:Ljava/lang/String; = "Networking"


# instance fields
.field private mListener:Lcom/kwad/sdk/core/network/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/core/network/g<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/core/network/b/c;->MD()Lcom/kwad/sdk/core/network/b/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 12
    .line 13
    return-void
.end method

.method private checkAndSetHasData(Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->hasData()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/network/b/b;->ey(I)Lcom/kwad/sdk/core/network/b/b;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private checkIpDirect(Lcom/kwad/sdk/core/network/c;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/network/c;->Mf()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const-class p1, Lcom/kwad/sdk/service/a/f;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/kwad/sdk/service/a/f;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/kwad/sdk/utils/aq;->isNetworkConnected(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/sdk/ip/direct/a;->Rs()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private getHostTypeByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "/rest/zt/emoticon/package/list"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "zt"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "api"

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method

.method private notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/network/h;->Mg()Lcom/kwad/sdk/core/network/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/core/network/h;->b(Lcom/kwad/sdk/core/network/f;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/network/l;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/core/network/g;->onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    invoke-interface {p1}, Lcom/kwad/sdk/core/network/b/b;->MC()Lcom/kwad/sdk/core/network/b/b;

    return-void
.end method

.method private notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/network/c;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/kwad/sdk/core/network/c;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/kwad/sdk/core/network/idc/DomainException;

    iget v2, p2, Lcom/kwad/sdk/core/network/c;->aSW:I

    iget-object v3, p2, Lcom/kwad/sdk/core/network/c;->aSX:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/network/idc/DomainException;-><init>(ILjava/lang/Throwable;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/network/l;->getHostTypeByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/kwad/sdk/core/network/idc/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/network/idc/DomainException;)V

    .line 5
    iget p2, p2, Lcom/kwad/sdk/core/network/c;->code:I

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    return-void
.end method

.method private notifyOnStartRequest(Lcom/kwad/sdk/core/network/f;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/network/g;->onStartRequest(Lcom/kwad/sdk/core/network/f;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private notifyOnSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/network/idc/a;->Mq()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/network/l;->getHostTypeByUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "api"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/network/idc/a;->eN(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/network/g;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/kwad/sdk/core/network/b/b;->MC()Lcom/kwad/sdk/core/network/b/b;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private onRequest(Lcom/kwad/sdk/core/network/g;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/network/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/network/g<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/core/network/b/b;->Mw()Lcom/kwad/sdk/core/network/b/b;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    .line 7
    .line 8
    return-void
.end method

.method private parseCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "requestSessionData"

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {}, Lcom/kwad/sdk/core/network/q;->Mj()Lcom/kwad/sdk/core/network/q;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/core/network/q;->X(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private reportSdkCaughtException(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/l;->enableCrashReport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setMonitorRequestId(Lcom/kwad/sdk/core/network/f;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/kwad/sdk/core/network/f;->getHeader()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "kuaishou-tracing-token"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/network/b/b;->eX(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method protected afterParseData(Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/core/network/a;->cancel()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/sdk/core/network/l;->mListener:Lcom/kwad/sdk/core/network/g;

    .line 6
    .line 7
    return-void
.end method

.method protected enableCrashReport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected enableMonitorReport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected fetchImpl()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "Networking"

    .line 2
    .line 3
    const-string v1, "requestError:"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 7
    .line 8
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/b/b;->MA()Lcom/kwad/sdk/core/network/b/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/a;->createRequest()Lcom/kwad/sdk/core/network/f;

    .line 12
    .line 13
    .line 14
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/network/l;->notifyOnStartRequest(Lcom/kwad/sdk/core/network/f;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 19
    .line 20
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-interface {v4, v5}, Lcom/kwad/sdk/core/network/b/b;->eT(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v4, v5}, Lcom/kwad/sdk/core/network/b/b;->eU(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/network/l;->setMonitorRequestId(Lcom/kwad/sdk/core/network/f;)V

    .line 36
    .line 37
    .line 38
    const-class v4, Lcom/kwad/sdk/service/a/f;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/kwad/sdk/service/a/f;

    .line 45
    .line 46
    invoke-interface {v4}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Lcom/kwad/sdk/utils/aq;->isNetworkConnected(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTc:Lcom/kwad/sdk/core/network/e;

    .line 57
    .line 58
    iget v2, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 59
    .line 60
    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p0, v3, v2, v0}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 66
    .line 67
    sget-object v2, Lcom/kwad/sdk/core/network/e;->aTc:Lcom/kwad/sdk/core/network/e;

    .line 68
    .line 69
    iget v2, v2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 70
    .line 71
    invoke-interface {v0, v2}, Lcom/kwad/sdk/core/network/b/b;->ex(I)Lcom/kwad/sdk/core/network/b/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Lcom/kwad/sdk/core/network/e;->aTc:Lcom/kwad/sdk/core/network/e;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v2}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    :try_start_2
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {}, Lcom/kwad/sdk/h;->EG()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    instance-of v6, v5, Lcom/kwad/sdk/core/network/c/b;

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    iget-object v6, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 97
    .line 98
    const-string v7, "ok_http"

    .line 99
    .line 100
    invoke-interface {v6, v7}, Lcom/kwad/sdk/core/network/b/b;->eW(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-interface {v6}, Lcom/kwad/sdk/core/network/b/b;->Mz()Lcom/kwad/sdk/core/network/b/b;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v6, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 109
    .line 110
    const-string v7, "http"

    .line 111
    .line 112
    invoke-interface {v6, v7}, Lcom/kwad/sdk/core/network/b/b;->eW(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v6}, Lcom/kwad/sdk/core/network/b/b;->Mz()Lcom/kwad/sdk/core/network/b/b;

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/l;->isPostByJson()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_2

    .line 124
    .line 125
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getHeader()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getBody()Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-interface {v5, v4, v6, v7}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getHeader()Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getBodyMap()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v5, v4, v6, v7}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, "url: "

    .line 153
    .line 154
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, ", response: "

    .line 161
    .line 162
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_0
    move-exception v4

    .line 177
    :try_start_3
    sget-object v5, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 178
    .line 179
    iget v5, v5, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 180
    .line 181
    invoke-static {v4}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-direct {p0, v3, v5, v6}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v4}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    iget-object v5, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 192
    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v5, v4}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 210
    .line 211
    .line 212
    :goto_2
    iget-object v4, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 213
    .line 214
    invoke-interface {v4}, Lcom/kwad/sdk/core/network/b/b;->Mx()Lcom/kwad/sdk/core/network/b/b;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-interface {v4}, Lcom/kwad/sdk/core/network/b/b;->My()Lcom/kwad/sdk/core/network/b/b;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-static {}, Lcom/kwad/sdk/ip/direct/a;->getType()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-interface {v4, v5}, Lcom/kwad/sdk/core/network/b/b;->eA(I)Lcom/kwad/sdk/core/network/b/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    :try_start_4
    invoke-virtual {p0, v3, v2}, Lcom/kwad/sdk/core/network/l;->onResponse(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/network/c;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :catch_1
    move-exception v2

    .line 234
    :try_start_5
    sget-object v4, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 235
    .line 236
    iget v4, v4, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 237
    .line 238
    invoke-static {v2}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-direct {p0, v3, v4, v5}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v4, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 246
    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v6, "onResponseError:"

    .line 250
    .line 251
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-interface {v4, v5}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 266
    .line 267
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v5, "jky onResponseError: "

    .line 271
    .line 272
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v3}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 290
    .line 291
    .line 292
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/l;->enableMonitorReport()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_3

    .line 297
    .line 298
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 299
    .line 300
    invoke-interface {v0}, Lcom/kwad/sdk/core/network/b/b;->report()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 301
    .line 302
    .line 303
    :catch_2
    :cond_3
    return-void

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    move-object v2, v3

    .line 306
    goto :goto_4

    .line 307
    :catchall_1
    move-exception v0

    .line 308
    :goto_4
    :try_start_7
    iget-object v3, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 309
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-interface {v3, v1}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :catchall_2
    move-exception v0

    .line 331
    goto :goto_6

    .line 332
    :catch_3
    :goto_5
    :try_start_8
    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 333
    .line 334
    iget v1, v1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 335
    .line 336
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-direct {p0, v2, v1, v3}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 344
    .line 345
    .line 346
    :try_start_9
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/l;->enableMonitorReport()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_4

    .line 351
    .line 352
    iget-object v0, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 353
    .line 354
    invoke-interface {v0}, Lcom/kwad/sdk/core/network/b/b;->report()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 355
    .line 356
    .line 357
    :catch_4
    :cond_4
    return-void

    .line 358
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/l;->enableMonitorReport()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_5

    .line 363
    .line 364
    iget-object v1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 365
    .line 366
    invoke-interface {v1}, Lcom/kwad/sdk/core/network/b/b;->report()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 367
    .line 368
    .line 369
    :catch_5
    :cond_5
    throw v0
.end method

.method protected isPostByJson()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onResponse(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/network/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/kwad/sdk/core/network/c;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "Networking"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTc:Lcom/kwad/sdk/core/network/e;

    .line 6
    .line 7
    iget v1, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 8
    .line 9
    iget-object p2, p2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1, v1, p2}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 15
    .line 16
    const-string p2, "responseBase is null"

    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 19
    .line 20
    .line 21
    const-string p1, "request responseBase is null"

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 28
    .line 29
    iget v2, p2, Lcom/kwad/sdk/core/network/c;->code:I

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lcom/kwad/sdk/core/network/b/b;->ex(I)Lcom/kwad/sdk/core/network/b/b;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/network/l;->checkIpDirect(Lcom/kwad/sdk/core/network/c;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p2, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, ":"

    .line 44
    .line 45
    if-nez v1, :cond_6

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/kwad/sdk/core/network/c;->Mf()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/kwad/sdk/core/network/f;->getUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p2, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/network/l;->parseCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p2, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/network/l;->parseData(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BaseResultData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/network/l;->afterParseData(Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    iget-object p2, p2, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    int-to-long v3, p2

    .line 84
    invoke-interface {v1, v3, v4}, Lcom/kwad/sdk/core/network/b/b;->aE(J)Lcom/kwad/sdk/core/network/b/b;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2}, Lcom/kwad/sdk/core/network/b/b;->MB()Lcom/kwad/sdk/core/network/b/b;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget v1, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    .line 93
    .line 94
    invoke-interface {p2, v1}, Lcom/kwad/sdk/core/network/b/b;->ez(I)Lcom/kwad/sdk/core/network/b/b;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->isResultOk()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "serverCodeError:"

    .line 108
    .line 109
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v3, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->errorMsg:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {p2, v1}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->notifyFailOnResultError()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_3

    .line 137
    .line 138
    iget p2, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    .line 139
    .line 140
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->errorMsg:Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->isDataEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_5

    .line 151
    .line 152
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 153
    .line 154
    iget p2, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 155
    .line 156
    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_4

    .line 163
    .line 164
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 170
    .line 171
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_5
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/network/l;->checkAndSetHasData(Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/network/l;->notifyOnSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :catch_0
    move-exception p2

    .line 183
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTd:Lcom/kwad/sdk/core/network/e;

    .line 184
    .line 185
    iget v1, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 186
    .line 187
    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {p0, p1, v1, v0}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p2}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v1, "parseDataError:"

    .line 200
    .line 201
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-interface {p1, p2}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_6
    :goto_1
    sget-object v1, Lcom/kwad/sdk/core/network/l;->HTTP_CODE_ERROR_MSG:Ljava/lang/String;

    .line 220
    .line 221
    invoke-direct {p0, p1, p2, v1}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/network/c;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/kwad/sdk/core/network/l;->mMonitorRecorder:Lcom/kwad/sdk/core/network/b/b;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v3, "httpCodeError:"

    .line 229
    .line 230
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget v3, p2, Lcom/kwad/sdk/core/network/c;->code:I

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v2, p2, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-interface {p1, v1}, Lcom/kwad/sdk/core/network/b/b;->eV(Ljava/lang/String;)Lcom/kwad/sdk/core/network/b/b;

    .line 251
    .line 252
    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v1, "request responseBase httpCodeError:"

    .line 256
    .line 257
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget p2, p2, Lcom/kwad/sdk/core/network/c;->code:I

    .line 261
    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method protected abstract parseData(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/BaseResultData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public request(Lcom/kwad/sdk/core/network/g;)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/core/network/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/network/g<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/network/l;->onRequest(Lcom/kwad/sdk/core/network/g;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/a;->fetch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 10
    .line 11
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v2, v0, v1}, Lcom/kwad/sdk/core/network/l;->notifyOnErrorListener(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/network/l;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
