.class public final Lcom/byazt/omf/rh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/qy;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x2e3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/omf/rh$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/omf/rh$c;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/yj/qy;->clearAllCache()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public clearCache(D)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/qy;->clearCache(D)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public clearDiskCache(D)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/qy;->clearDiskCache(D)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public clearMemoryCache(D)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/qy;->clearMemoryCache(D)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public from(Ljava/lang/String;)Lcom/byazt/yj/yp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/yj/qy;->from(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getCacheStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/qy;->getCacheStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getDiskCacheStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/yj/qy;->getDiskCacheStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public hasDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/yj/qy;->hasDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
