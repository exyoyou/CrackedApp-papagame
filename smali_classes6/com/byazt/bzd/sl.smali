.class public Lcom/byazt/bzd/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d4,
        0x9e
    }
.end annotation


# static fields
.field public static a:I = 0x1

.field public static c:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static volatile tt:Lcom/byazt/fk/c;

.field public static uj:Ljava/lang/String;

.field public static volatile ve:Lcom/byazt/fk/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bzd/sl;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "image"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/bzd/sl;->n:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/byazt/bzd/sl;->n:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static c(I)Lcom/byazt/fk/c;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/byazt/bzd/sl;->x()Lcom/byazt/fk/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/bzd/sl;->sp()Lcom/byazt/fk/c;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/byazt/bzd/sl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video_brand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/byazt/bzd/sl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bzd/sl;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/byazt/bzd/sl;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->fv()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sput v0, Lcom/byazt/bzd/sl;->a:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/bzd/sl;->tt(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/byazt/bzd/sl;->c:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bzd/sl;->uj:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "splash_image"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/bzd/sl;->uj:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/byazt/bzd/sl;->uj:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method private static sp()Lcom/byazt/fk/c;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/bzd/sl;->tt:Lcom/byazt/fk/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/bzd/sl;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/bzd/sl;->tt:Lcom/byazt/fk/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/tq/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/tq/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/bzd/sl;->tt:Lcom/byazt/fk/c;

    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/bzd/sl;->i()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Lcom/byazt/fk/c;->setRootDir(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/byazt/bzd/sl;->tt:Lcom/byazt/fk/c;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/byazt/fk/c;->clearCache()V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/bzd/sl;->tt:Lcom/byazt/fk/c;

    .line 37
    .line 38
    return-object v0
.end method

.method private static tt(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "tt_ad"

    const-string v3, "CacheDirConstants"

    if-ne p0, v1, :cond_0

    const-string p0, "\u4f7f\u7528\u5185\u90e8\u5b58\u50a8"

    .line 2
    invoke-static {v3, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result p0

    invoke-static {v0, p0, v2}, Lcom/byazt/nr/x;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "\u4f7f\u7528\u5916\u90e8\u5b58\u50a8"

    .line 4
    invoke-static {v3, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result p0

    invoke-static {v0, p0, v2}, Lcom/byazt/nr/x;->c(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tt()[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    .line 11
    invoke-static {v0}, Lcom/byazt/bzd/sl;->tt(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/dna/h;->createVideoCacheDir()Lcom/byazt/fk/c;

    move-result-object v1

    .line 13
    invoke-interface {v1, v0}, Lcom/byazt/fk/c;->setRootDir(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lcom/byazt/bzd/sl;->tt(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/byazt/dna/h;->createVideoCacheDir()Lcom/byazt/fk/c;

    move-result-object v2

    .line 16
    invoke-interface {v2, v0}, Lcom/byazt/fk/c;->setRootDir(Ljava/lang/String;)V

    .line 17
    invoke-interface {v1}, Lcom/byazt/fk/c;->getBrandCacheDir()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-interface {v1}, Lcom/byazt/fk/c;->getSplashCacheDir()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-interface {v1}, Lcom/byazt/fk/c;->getRewardFullCacheDir()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-interface {v1}, Lcom/byazt/fk/c;->getOtherCacheDir()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-interface {v2}, Lcom/byazt/fk/c;->getBrandCacheDir()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-interface {v2}, Lcom/byazt/fk/c;->getSplashCacheDir()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-interface {v2}, Lcom/byazt/fk/c;->getRewardFullCacheDir()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-interface {v2}, Lcom/byazt/fk/c;->getOtherCacheDir()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uj()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/bzd/sl;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static ve()[J
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :array_0
    .array-data 8
        0xa00000
        0x1400000
        0x1e00000
        0x1400000
        0xa00000
        0x1400000
        0x1e00000
        0x1400000
    .end array-data
.end method

.method private static x()Lcom/byazt/fk/c;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/bzd/sl;->ve:Lcom/byazt/fk/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/bzd/sl;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/bzd/sl;->ve:Lcom/byazt/fk/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/byazt/dna/h;->createVideoCacheDir()Lcom/byazt/fk/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/byazt/bzd/sl;->ve:Lcom/byazt/fk/c;

    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/bzd/sl;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Lcom/byazt/fk/c;->setRootDir(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/byazt/bzd/sl;->ve:Lcom/byazt/fk/c;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/byazt/fk/c;->clearCache()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/bzd/sl;->ve:Lcom/byazt/fk/c;

    .line 40
    .line 41
    return-object v0
.end method
