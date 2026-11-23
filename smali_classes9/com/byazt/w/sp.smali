.class public Lcom/byazt/w/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x5b
    }
.end annotation


# static fields
.field public static c:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/w/sp;->c:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/w/sp;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static c(Lcom/byazt/c/sp;)Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$24;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$24;-><init>(Lcom/byazt/c/sp;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/x;)Lcom/byazt/c/IDownloadInterceptor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$22;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$22;-><init>(Lcom/byazt/c/x;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$25;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$25;-><init>(Lcom/byazt/c/i;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/yp;)Lcom/byazt/c/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$3;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$3;-><init>(Lcom/byazt/c/yp;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/eo;)Lcom/byazt/c/d;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$26;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$26;-><init>(Lcom/byazt/c/eo;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/gr;)Lcom/byazt/c/da;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$4;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$4;-><init>(Lcom/byazt/c/gr;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/d;)Lcom/byazt/c/eo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$10;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$10;-><init>(Lcom/byazt/c/d;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/da;)Lcom/byazt/c/gr;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$14;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$14;-><init>(Lcom/byazt/c/da;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/qy;)Lcom/byazt/c/gt;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$16;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$16;-><init>(Lcom/byazt/c/qy;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/rl;)Lcom/byazt/c/gu;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$15;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$15;-><init>(Lcom/byazt/c/rl;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/IDownloadListener;Z)Lcom/byazt/c/i;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$12;

    invoke-direct {v0, p0, p1}, Lcom/byazt/w/sp$12;-><init>(Lcom/byazt/c/IDownloadListener;Z)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/rh;)Lcom/byazt/c/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$31;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$31;-><init>(Lcom/byazt/c/rh;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/zz/x;)Lcom/byazt/c/n;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$5;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$5;-><init>(Lcom/byazt/zz/x;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/qp;)Lcom/byazt/c/nb;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$18;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$18;-><init>(Lcom/byazt/c/qp;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/z;)Lcom/byazt/c/nu;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$2;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$2;-><init>(Lcom/byazt/c/z;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/zz/my;)Lcom/byazt/c/or;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$27;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$27;-><init>(Lcom/byazt/zz/my;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/nb;)Lcom/byazt/c/qp;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$17;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$17;-><init>(Lcom/byazt/c/nb;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/gt;)Lcom/byazt/c/qy;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$30;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$30;-><init>(Lcom/byazt/c/gt;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/m;)Lcom/byazt/c/rh;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$19;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$19;-><init>(Lcom/byazt/c/m;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/gu;)Lcom/byazt/c/rl;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$28;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$28;-><init>(Lcom/byazt/c/gu;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/c/sp;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$29;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$29;-><init>(Lcom/byazt/c/IDownloadFileUriProvider;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/u;)Lcom/byazt/c/t;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$9;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$9;-><init>(Lcom/byazt/c/u;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/t;)Lcom/byazt/c/u;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$8;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$8;-><init>(Lcom/byazt/c/t;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/IDownloadInterceptor;)Lcom/byazt/c/x;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$6;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$6;-><init>(Lcom/byazt/c/IDownloadInterceptor;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/a;)Lcom/byazt/c/yp;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$13;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$13;-><init>(Lcom/byazt/c/a;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/zm;)Lcom/byazt/c/yv;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$7;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$7;-><init>(Lcom/byazt/c/zm;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/nu;)Lcom/byazt/c/z;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$20;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$20;-><init>(Lcom/byazt/c/nu;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/yv;)Lcom/byazt/c/zm;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$23;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$23;-><init>(Lcom/byazt/c/yv;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/t/c;)Lcom/byazt/t/DownloadTask;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Lcom/byazt/t/DownloadTask;

    invoke-interface {p0}, Lcom/byazt/t/c;->c()Lcom/byazt/t/DownloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/t/DownloadTask;-><init>(Lcom/byazt/t/DownloadInfo;)V

    .line 17
    invoke-interface {p0}, Lcom/byazt/t/c;->tt()Lcom/byazt/c/n;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/n;)Lcom/byazt/zz/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/t/DownloadTask;->chunkStategy(Lcom/byazt/zz/x;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 18
    invoke-interface {p0}, Lcom/byazt/t/c;->ve()Lcom/byazt/c/zm;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/zm;)Lcom/byazt/c/yv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->notificationEventListener(Lcom/byazt/c/yv;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 19
    invoke-interface {p0}, Lcom/byazt/t/c;->n()Lcom/byazt/c/x;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/x;)Lcom/byazt/c/IDownloadInterceptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->interceptor(Lcom/byazt/c/IDownloadInterceptor;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 20
    invoke-interface {p0}, Lcom/byazt/t/c;->a()Lcom/byazt/c/a;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/a;)Lcom/byazt/c/yp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->depend(Lcom/byazt/c/yp;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 21
    invoke-interface {p0}, Lcom/byazt/t/c;->da()Lcom/byazt/c/da;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/da;)Lcom/byazt/c/gr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->monitorDepend(Lcom/byazt/c/gr;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 22
    invoke-interface {p0}, Lcom/byazt/t/c;->sp()Lcom/byazt/c/rl;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/rl;)Lcom/byazt/c/gu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->forbiddenHandler(Lcom/byazt/c/gu;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 23
    invoke-interface {p0}, Lcom/byazt/t/c;->i()Lcom/byazt/c/m;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/m;)Lcom/byazt/c/rh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->diskSpaceHandler(Lcom/byazt/c/rh;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 24
    invoke-interface {p0}, Lcom/byazt/t/c;->sl()Lcom/byazt/c/sp;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/sp;)Lcom/byazt/c/IDownloadFileUriProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->fileUriProvider(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 25
    invoke-interface {p0}, Lcom/byazt/t/c;->uj()Lcom/byazt/c/d;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/d;)Lcom/byazt/c/eo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->notificationClickCallback(Lcom/byazt/c/eo;)Lcom/byazt/t/DownloadTask;

    move-result-object v2

    .line 26
    invoke-interface {p0}, Lcom/byazt/t/c;->x()Lcom/byazt/c/or;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/or;)Lcom/byazt/zz/my;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/t/DownloadTask;->retryDelayTimeCalculator(Lcom/byazt/zz/my;)Lcom/byazt/t/DownloadTask;

    .line 27
    sget-object v2, Lcom/byazt/ev/a;->c:Lcom/byazt/ev/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/byazt/t/c;->tt(I)Lcom/byazt/c/i;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/byazt/t/DownloadTask;->mainThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 29
    :cond_1
    sget-object v3, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {p0, v4}, Lcom/byazt/t/c;->tt(I)Lcom/byazt/c/i;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v4}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/byazt/t/DownloadTask;->subThreadListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 31
    :cond_2
    sget-object v4, Lcom/byazt/ev/a;->ve:Lcom/byazt/ev/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {p0, v5}, Lcom/byazt/t/c;->tt(I)Lcom/byazt/c/i;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v5}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/byazt/t/DownloadTask;->notificationListenerWithHashCode(ILcom/byazt/c/IDownloadListener;)Lcom/byazt/t/DownloadTask;

    .line 33
    :cond_3
    invoke-static {v1, p0, v2}, Lcom/byazt/w/sp;->c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;Lcom/byazt/ev/a;)V

    .line 34
    invoke-static {v1, p0, v3}, Lcom/byazt/w/sp;->c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;Lcom/byazt/ev/a;)V

    .line 35
    invoke-static {v1, p0, v4}, Lcom/byazt/w/sp;->c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;Lcom/byazt/ev/a;)V

    .line 36
    invoke-static {v1, p0}, Lcom/byazt/w/sp;->c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/t/DownloadTask;)Lcom/byazt/t/c;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$1;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$1;-><init>(Lcom/byazt/t/DownloadTask;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/or;)Lcom/byazt/zz/my;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$21;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$21;-><init>(Lcom/byazt/c/or;)V

    return-object v0
.end method

.method public static c(Lcom/byazt/c/n;)Lcom/byazt/zz/x;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Lcom/byazt/w/sp$11;

    invoke-direct {v0, p0}, Lcom/byazt/w/sp$11;-><init>(Lcom/byazt/c/n;)V

    return-object v0
.end method

.method private static c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-interface {p1}, Lcom/byazt/t/c;->t()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    invoke-interface {p1, v0}, Lcom/byazt/t/c;->ve(I)Lcom/byazt/c/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {v1}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/t;)Lcom/byazt/c/u;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/byazt/t/DownloadTask;->addDownloadCompleteHandler(Lcom/byazt/c/u;)Lcom/byazt/t/DownloadTask;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Lcom/byazt/t/DownloadTask;Lcom/byazt/t/c;Lcom/byazt/ev/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/byazt/t/c;->c(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lcom/byazt/t/c;->c(II)Lcom/byazt/c/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v2}, Lcom/byazt/c/i;->c()I

    move-result v3

    invoke-static {v2}, Lcom/byazt/w/sp;->c(Lcom/byazt/c/i;)Lcom/byazt/c/IDownloadListener;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/byazt/t/DownloadTask;->setDownloadListeners(Landroid/util/SparseArray;Lcom/byazt/ev/a;)V

    return-void
.end method
