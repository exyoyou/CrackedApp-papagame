.class public Lcom/byazt/rs/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/rs/c;


# instance fields
.field public tt:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/rs/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/rs/c;->c:Lcom/byazt/rs/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/rs/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/rs/c;->c:Lcom/byazt/rs/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/rs/c;

    invoke-direct {v1}, Lcom/byazt/rs/c;-><init>()V

    sput-object v1, Lcom/byazt/rs/c;->c:Lcom/byazt/rs/c;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/rs/c;->c:Lcom/byazt/rs/c;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/yj/md;
    .locals 1

    .line 39
    new-instance v0, Lcom/byazt/rs/c$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/rs/c$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "http"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x2f

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/rs/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/rs/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/i;)V
    .locals 1

    const-string v0, "local_img_loader"

    .line 35
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yj/yv;

    .line 36
    invoke-static {p2, p3}, Lcom/byazt/rs/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/yj/md;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/byazt/yj/yv;->from(Lcom/byazt/yj/md;)Lcom/byazt/yj/yp;

    move-result-object p3

    .line 37
    invoke-interface {p3, p2}, Lcom/byazt/yj/yp;->cacheDir(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->isLocalRes(Z)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->sync(Z)Lcom/byazt/yj/yp;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 p3, 0x2

    .line 38
    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p2

    new-instance p3, Lcom/byazt/rs/c$1;

    invoke-direct {p3, p0, p4, p1}, Lcom/byazt/rs/c$1;-><init>(Lcom/byazt/rs/c;Lcom/byazt/rs/i;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/rs/x;->c()Lcom/byazt/rs/x;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/byazt/rs/x;->tt(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/rs/c;->tt:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/rs/c;->tt:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/ga/a$tt;Ljava/lang/String;Lcom/byazt/rs/i;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rs/a;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void

    :cond_1
    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p1, Lcom/byazt/ga/a$tt;->x:Lcom/byazt/rs/uj;

    if-nez p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/rs/uj;->c()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void

    .line 16
    :cond_3
    invoke-static {}, Lcom/byazt/rs/x;->c()Lcom/byazt/rs/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/rs/x;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void

    .line 19
    :cond_4
    invoke-direct {p0, p2}, Lcom/byazt/rs/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void

    .line 22
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void

    .line 25
    :cond_6
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/byazt/rs/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/i;)V

    return-void

    .line 26
    :cond_7
    :goto_0
    invoke-interface {p3}, Lcom/byazt/rs/i;->c()V

    return-void
.end method
