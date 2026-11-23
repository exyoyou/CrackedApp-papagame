.class public Lcom/byazt/rs/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0x2e
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/byazt/rs/n;->c:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/rs/n;Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/rs/n;Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/rs/n;Ljava/io/File;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/rs/n;->c(Ljava/io/File;)V

    return-void
.end method

.method private c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, p2}, Lcom/byazt/rs/sp;->c(Lcom/byazt/rs/uj;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1, p2, p3, p4}, Lcom/byazt/rs/sp;->c(Lcom/byazt/rs/uj;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_0

    const-string p3, "Downloaded file not found"

    const/16 p4, 0x3ee

    .line 24
    invoke-direct {p0, p5, p1, p4, p3}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/rs/uj;->tt()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 26
    invoke-static {p2}, Lcom/byazt/nr/a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p4

    .line 27
    invoke-virtual {p1}, Lcom/byazt/rs/uj;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 28
    invoke-direct {p0, p2}, Lcom/byazt/rs/n;->c(Ljava/io/File;)V

    const-string p3, "MD5 verification failed"

    const/16 p4, 0x3ef

    .line 29
    invoke-direct {p0, p5, p1, p4, p3}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    .line 30
    :cond_1
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 32
    invoke-static {p4}, Lcom/byazt/nr/x;->ve(Ljava/io/File;)V

    .line 33
    :cond_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_3

    .line 34
    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/byazt/nr/zb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 36
    invoke-static {}, Lcom/byazt/rs/x;->c()Lcom/byazt/rs/x;

    move-result-object p3

    invoke-virtual {p1}, Lcom/byazt/rs/uj;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/byazt/rs/x;->c(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/byazt/rs/n;->c(Ljava/io/File;)V

    .line 38
    invoke-direct {p0, p5, p1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Handle download success failed: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/byazt/rs/n;->c(Ljava/io/File;)V

    const/16 p2, 0x3f0

    .line 41
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void
.end method

.method private c(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 45
    :cond_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    .line 47
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v3, v3, v5

    const-wide/32 v5, 0xa00000

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public c(Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V
    .locals 11

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/byazt/rs/uj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/rs/n;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const/16 v0, 0x3ea

    const-string v1, "Context is null"

    .line 6
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/rs/uj;->c()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/byazt/rs/x;->c()Lcom/byazt/rs/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/rs/x;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x3eb

    const-string v1, "Invalid cache path"

    .line 10
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/byazt/rs/n;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/byazt/rs/n;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v0, 0x3ec

    const-string v1, "Insufficient disk space"

    .line 12
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    .line 13
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/rs/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 14
    new-instance v9, Ljava/io/File;

    const-string v2, "tt_lottie_temp"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 17
    :cond_4
    invoke-static {v0}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    new-instance v10, Lcom/byazt/rs/n$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v7, v1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/byazt/rs/n$1;-><init>(Lcom/byazt/rs/n;Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V

    invoke-static {v0, v9, v1, v10}, Lcom/byazt/kk/tt;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/byazt/kk/tt$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download zip failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/kk/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x3ed

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/16 v0, 0x3e9

    const-string v1, "Invalid zip config"

    .line 22
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    return-void
.end method
