.class public Lcom/byazt/yj/nb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/yv;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ad,
        0x28b
    }
.end annotation


# instance fields
.field public loadFactory:Lcom/byazt/oz/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/oz/a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {}, Lcom/byazt/oz/n;->da()Lcom/byazt/oz/n;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/byazt/oz/a;-><init>(Landroid/content/Context;Lcom/byazt/yj/my;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 15
    .line 16
    return-void
.end method

.method private c(Lcom/byazt/yj/md;)Lcom/byazt/yj/tt;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/yj/nb$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/yj/nb$1;-><init>(Lcom/byazt/yj/nb;Lcom/byazt/yj/md;)V

    return-object v0
.end method

.method private c(Ljava/util/Collection;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/byazt/yj/c;",
            ">;D)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yj/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p2, p3}, Lcom/byazt/yj/c;->c(D)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_5

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_3

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/yj/nb;->clearAllMemoryCache()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcom/byazt/yj/h;

    .line 38
    .line 39
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Lcom/byazt/yj/h;-><init>(Ljava/util/function/Function;)V

    .line 44
    .line 45
    .line 46
    move-object p1, v0

    .line 47
    :cond_2
    check-cast p1, Lcom/byazt/yj/md;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/yj/nb;->clearMemoryRawCache(Lcom/byazt/yj/md;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    new-instance v0, Lcom/byazt/yj/h;

    .line 60
    .line 61
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v0, p1}, Lcom/byazt/yj/h;-><init>(Ljava/util/function/Function;)V

    .line 66
    .line 67
    .line 68
    move-object p1, v0

    .line 69
    :cond_4
    check-cast p1, Lcom/byazt/yj/md;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/byazt/yj/nb;->clearMemoryBitmapCache(Lcom/byazt/yj/md;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    const/4 p1, 0x0

    .line 75
    return-object p1

    .line 76
    :cond_5
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    new-instance v0, Lcom/byazt/yj/h;

    .line 83
    .line 84
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Lcom/byazt/yj/h;-><init>(Ljava/util/function/Function;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v0

    .line 92
    :cond_6
    check-cast p1, Lcom/byazt/yj/md;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/byazt/yj/nb;->from(Lcom/byazt/yj/md;)Lcom/byazt/yj/yp;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    new-instance v0, Lcom/byazt/yj/z;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Lcom/byazt/yj/z;-><init>(Lcom/byazt/yj/yp;)V

    .line 103
    .line 104
    .line 105
    move-object p1, v0

    .line 106
    :cond_7
    return-object p1
.end method

.method public clearAllMemoryCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/oz/a;->c()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/yj/nb;->c(Ljava/util/Collection;D)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/oz/a;->tt()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/yj/nb;->c(Ljava/util/Collection;D)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public clearMemoryBitmapCache(Lcom/byazt/yj/md;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/yj/nb;->c(Lcom/byazt/yj/md;)Lcom/byazt/yj/tt;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/oz/a;->c(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/byazt/yj/c;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public clearMemoryRawCache(Lcom/byazt/yj/md;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/yj/nb;->c(Lcom/byazt/yj/md;)Lcom/byazt/yj/tt;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/byazt/yj/c;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public from(Lcom/byazt/yj/md;)Lcom/byazt/yj/yp;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/byazt/yj/md;->getCacheDir()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/byazt/yj/md;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/byazt/oz/ve$tt;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/yj/nb;->loadFactory:Lcom/byazt/oz/a;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/byazt/oz/ve$tt;-><init>(Lcom/byazt/oz/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/byazt/oz/ve$tt;->from(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v1}, Lcom/byazt/in/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v2, v1}, Lcom/byazt/yj/yp;->key(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v0}, Lcom/byazt/yj/yp;->cacheDir(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/byazt/yj/nb;->c(Lcom/byazt/yj/md;)Lcom/byazt/yj/tt;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v2, p1}, Lcom/byazt/yj/yp;->cache(Lcom/byazt/yj/tt;)Lcom/byazt/yj/yp;

    .line 35
    .line 36
    .line 37
    return-object v2
.end method
