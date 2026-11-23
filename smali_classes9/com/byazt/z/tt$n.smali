.class public Lcom/byazt/z/tt$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/u/x$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x6a1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/z/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation


# static fields
.field public static c:I

.field public static tt:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public i:Z

.field public final n:Lcom/byazt/z/tt$tt;

.field public final sp:J

.field public final uj:Landroid/content/Intent;

.field public final ve:Landroid/content/Context;

.field public x:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILcom/byazt/z/tt$tt;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/z/tt$n;->i:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/z/tt$n;->uj:Landroid/content/Intent;

    .line 10
    .line 11
    sput p3, Lcom/byazt/z/tt$n;->tt:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/byazt/z/tt$n;->n:Lcom/byazt/z/tt$tt;

    .line 14
    .line 15
    new-instance p1, Lcom/byazt/u/x;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2, p0}, Lcom/byazt/u/x;-><init>(Landroid/os/Looper;Lcom/byazt/u/x$c;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/z/tt$n;->a:Landroid/os/Handler;

    .line 25
    .line 26
    iput-wide p5, p0, Lcom/byazt/z/tt$n;->sp:J

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic c(Lcom/byazt/z/tt$n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/z/tt$n;->i:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/z/tt$n;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/z/tt$n;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_9

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget-wide v1, p0, Lcom/byazt/z/tt$n;->sp:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    const-wide/16 v3, 0x2710

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sput v0, Lcom/byazt/z/tt$n;->c:I

    .line 5
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v6, Lcom/byazt/z/tt$uj;

    iget-object v1, p0, Lcom/byazt/z/tt$n;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/z/tt$n;->n:Lcom/byazt/z/tt$tt;

    iget-wide v4, p0, Lcom/byazt/z/tt$n;->sp:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/z/tt$uj;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/byazt/z/tt$tt;J)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/z/tt$n;->x:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 6
    sput v1, Lcom/byazt/z/tt$n;->c:I

    .line 7
    iget-object p1, p0, Lcom/byazt/z/tt$n;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcom/byazt/z/tt$n;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/z/tt$n;->x:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcom/byazt/z/tt$n;->i:Z

    const/4 v1, 0x0

    if-nez p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_4

    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/g/c;->tt()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/byazt/z/tt$n;->uj:Landroid/content/Intent;

    if-eqz p1, :cond_5

    .line 13
    iget-object v2, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    sget v2, Lcom/byazt/z/tt$n;->tt:I

    invoke-virtual {p1, v2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isDownloadOverStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    sget v2, Lcom/byazt/z/tt$n;->tt:I

    invoke-static {p1, v2, v1}, Lcom/byazt/z/ve;->tt(Landroid/content/Context;IZ)I

    .line 17
    :cond_6
    :goto_1
    iput-boolean v0, p0, Lcom/byazt/z/tt$n;->i:Z

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/byazt/z/tt$n;->uj:Landroid/content/Intent;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 19
    :goto_2
    sget p1, Lcom/byazt/z/tt$n;->tt:I

    iget-object v1, p0, Lcom/byazt/z/tt$n;->ve:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/z/tt;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/byazt/z/tt;->c(IZZ)V

    :cond_9
    return-void
.end method
