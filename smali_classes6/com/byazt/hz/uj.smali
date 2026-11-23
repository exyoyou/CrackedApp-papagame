.class public abstract Lcom/byazt/hz/uj;
.super Lcom/byazt/hz/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hz/uj$c;
    }
.end annotation


# instance fields
.field public c:Z

.field public gr:I

.field public gt:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public gu:I

.field public final h:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public m:Z

.field public md:Ljava/lang/String;

.field public my:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/Object;

.field public qy:I

.field public rl:Landroid/os/Handler;

.field public volatile tt:Z

.field public yv:Lcom/byazt/yl/ve;

.field public zm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/da;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/hz/uj;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/byazt/hz/uj;->m:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/byazt/hz/uj;->tt:Z

    .line 11
    .line 12
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/hz/uj;->my:Ljava/lang/ref/SoftReference;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    .line 26
    .line 27
    iput p1, p0, Lcom/byazt/hz/uj;->qy:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/byazt/hz/uj;->gu:I

    .line 31
    .line 32
    iput p1, p0, Lcom/byazt/hz/uj;->gr:I

    .line 33
    .line 34
    const/16 p1, 0x3a98

    .line 35
    .line 36
    iput p1, p0, Lcom/byazt/hz/uj;->zm:I

    .line 37
    .line 38
    new-instance p1, Lcom/byazt/hz/uj$1;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/byazt/hz/uj$1;-><init>(Lcom/byazt/hz/uj;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/byazt/hz/uj;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 44
    .line 45
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/uj;->rl:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt$c;->c()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/hz/uj;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/uj;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hz/uj;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method private c(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 4

    .line 18
    iget v0, p0, Lcom/byazt/hz/uj;->zm:I

    add-int/lit16 v0, v0, -0x7d0

    if-gtz v0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/byazt/hz/uj$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/hz/uj$2;-><init>(Lcom/byazt/hz/uj;Landroid/app/Activity;Landroid/os/Handler;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/uj;Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/hz/uj;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TTMediationSDK"

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/byazt/hz/uj;->md()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u65e0\u4efb\u4f55\u5e7f\u544a\u53ef\u7528\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 36
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const v1, 0x13c70

    invoke-static {p1, v1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;I)V

    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u4ec5\u6709\u81ea\u5b9a\u4e49adn\u5e7f\u544a\u53ef\u7528\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 38
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const v1, 0x13c71

    invoke-static {p1, v1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;I)V

    return v0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/hz/tt;->tt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const-string v2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u547d\u4e2d\u4e86\u5c55\u793a\u9891\u63a7\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 41
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v1, p1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;I)V

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cshowingActivity\u6b63\u5728finish\u6216\u5df2\u7ecfdestroy\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 43
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private c(Landroid/app/Activity;Landroid/app/Activity;Lcom/byazt/yl/ve;)Z
    .locals 4

    .line 21
    iget v0, p0, Lcom/byazt/hz/uj;->qy:I

    iget v1, p0, Lcom/byazt/hz/uj;->gu:I

    const/4 v2, 0x0

    const-string v3, "TTMediationSDK"

    if-lt v0, v1, :cond_0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u8f6e\u64ad\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/byazt/hz/uj;->gu:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad \u505c\u6b62\u8f6e\u64ad developerActivity\u4e3anull"

    .line 23
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cttBaseAd\u4e3anull\uff0c\u4e0d\u8f6e\u64ad"

    .line 24
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 25
    :cond_2
    invoke-direct {p0, p3}, Lcom/byazt/hz/uj;->uj(Lcom/byazt/yl/ve;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u5c55\u793a\u7684\u662f\u81ea\u5b9a\u4e49adn\uff0c\u5219\u4e0d\u8f6e\u64ad"

    .line 26
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 27
    :cond_3
    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0c\u5f53\u524d\u5c55\u793a\u7684\u5e7f\u544a\u4e0d\u652f\u6301\u8f6e\u64ad: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", adtype: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getAdType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", subType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const p2, 0x13c73

    invoke-static {p1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;I)V

    return v2

    :cond_4
    if-nez p1, :cond_5

    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\uff0cshowingActivity\u662fnull\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 32
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const p2, 0x13c72

    invoke-static {p1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;I)V

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic c(Lcom/byazt/hz/uj;Landroid/app/Activity;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/hz/uj;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/hz/uj;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/hz/uj;->c:Z

    return p1
.end method

.method private c(Lcom/byazt/nbs/da;)Z
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->sv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->c()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private md()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    move-object v2, v0

    .line 25
    move-object v3, v2

    .line 26
    :goto_0
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-lez v6, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v6, 0x0

    .line 41
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_5

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lcom/byazt/yl/ve;

    .line 52
    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    iget-object v8, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    invoke-virtual {v7}, Lcom/byazt/yl/ve;->isHasShown()Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, v7}, Lcom/byazt/hz/uj;->uj(Lcom/byazt/yl/ve;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v7}, Lcom/byazt/yl/ve;->getAdType()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    invoke-virtual {v7}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-static {v6, v8, v7}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    return v5

    .line 95
    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/4 v6, 0x0

    .line 98
    :cond_5
    if-eqz v3, :cond_9

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-lez v0, :cond_9

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_9

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/byazt/yl/ve;

    .line 121
    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    iget-object v7, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v7}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isHasShown()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_6

    .line 137
    .line 138
    invoke-direct {p0, v3}, Lcom/byazt/hz/uj;->uj(Lcom/byazt/yl/ve;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_8

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdType()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-static {v6, v7, v3}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    return v5

    .line 164
    :cond_8
    :goto_4
    const/4 v6, 0x1

    .line 165
    goto :goto_3

    .line 166
    :cond_9
    if-eqz v2, :cond_d

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-lez v0, :cond_d

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_d

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lcom/byazt/yl/ve;

    .line 189
    .line 190
    if-eqz v2, :cond_a

    .line 191
    .line 192
    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_a

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isHasShown()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_a

    .line 205
    .line 206
    invoke-direct {p0, v2}, Lcom/byazt/hz/uj;->uj(Lcom/byazt/yl/ve;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-nez v3, :cond_c

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdType()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v3, v6, v2}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_b

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_b
    return v5

    .line 232
    :cond_c
    :goto_6
    const/4 v6, 0x1

    .line 233
    goto :goto_5

    .line 234
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    goto :goto_7

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :goto_7
    if-eqz v1, :cond_11

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-lez v0, :cond_11

    .line 250
    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :cond_e
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_11

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Lcom/byazt/nbs/da;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->gt()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_e

    .line 276
    .line 277
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    iget-object v7, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    invoke-virtual {v3, v7, v2, v8}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_e

    .line 292
    .line 293
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v7, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 298
    .line 299
    invoke-virtual {v3, v2, v7, v5}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    const/4 v3, 0x3

    .line 304
    if-ne v2, v3, :cond_e

    .line 305
    .line 306
    invoke-direct {p0, v1}, Lcom/byazt/hz/uj;->c(Lcom/byazt/nbs/da;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_10

    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->u()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->a()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-static {v2, v3, v1}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_f

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_f
    return v5

    .line 332
    :cond_10
    :goto_9
    const/4 v6, 0x1

    .line 333
    goto :goto_8

    .line 334
    :cond_11
    if-eqz v6, :cond_12

    .line 335
    .line 336
    return v4

    .line 337
    :cond_12
    const/4 v0, 0x2

    .line 338
    return v0
.end method

.method private n()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/hz/uj;->tt:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt$c;->c()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TTMediationSDK"

    const-string v1, "--==--- app is null, \u63d2\u5168\u5c4f\u8f6e\u64ad\u76f4\u63a5return"

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/byazt/hz/uj;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    iget-object v1, p0, Lcom/byazt/hz/uj;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/hz/uj;->tt:Z

    return-void
.end method

.method public static synthetic n(Lcom/byazt/hz/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/uj;->a()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/hz/uj;)Lcom/byazt/yl/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/uj;->yv:Lcom/byazt/yl/ve;

    return-object p0
.end method

.method private tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/hz/uj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/uj;->md:Ljava/lang/String;

    return-object p0
.end method

.method private uj()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/hz/uj;->gr:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private uj(Lcom/byazt/yl/ve;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getIsRefresh()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/hz/uj;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/uj;->p:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/byazt/hz/uj;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/byazt/hz/uj;->n()V

    .line 9
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/hz/uj;->my:Ljava/lang/ref/SoftReference;

    .line 10
    iput-object p1, p0, Lcom/byazt/hz/uj;->yv:Lcom/byazt/yl/ve;

    .line 11
    iput-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 12
    iput-object p3, p0, Lcom/byazt/hz/uj;->p:Ljava/lang/Object;

    .line 13
    iput-object p4, p0, Lcom/byazt/hz/uj;->md:Ljava/lang/String;

    .line 14
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gr()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/uj;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "TTMediationSDK"

    .line 9
    .line 10
    const-string v1, "--==--- \u7528\u6237\u70b9\u51fb\u4e86\u5e7f\u544a\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/hz/uj;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final gu()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/uj;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/hz/uj;->m:Z

    .line 9
    .line 10
    const-string v1, "TTMediationSDK"

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const-string v0, "--==--- \u7528\u6237\u5173\u95ed\u4e86\u5e7f\u544a\uff0c\u505c\u6b62\u8f6e\u64ad"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/Activity;

    .line 26
    .line 27
    instance-of v2, v0, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v2, "--==--- \u7528\u6237\u5173\u95ed\u4e86\u5e7f\u544a\uff0cfinish showingActivity"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    .line 46
    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/byazt/hz/uj;->a()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string v0, "--==--- \u8c03\u7528finish\u89e6\u53d1\u4e86close\u56de\u8c03"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final qy()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/hz/uj;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/hz/uj;->m:Z

    .line 10
    .line 11
    iget v1, p0, Lcom/byazt/hz/uj;->qy:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/byazt/hz/uj;->qy:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/hz/uj;->my:Ljava/lang/ref/SoftReference;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/app/Activity;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/hz/uj;->gt:Ljava/lang/ref/SoftReference;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/Activity;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/hz/uj;->yv:Lcom/byazt/yl/ve;

    .line 33
    .line 34
    invoke-direct {p0, v1, v0, v2}, Lcom/byazt/hz/uj;->c(Landroid/app/Activity;Landroid/app/Activity;Lcom/byazt/yl/ve;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/byazt/hz/uj;->a()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/byazt/hz/uj;->rl:Landroid/os/Handler;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/byazt/hz/uj;->rl:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {p0, v3, v1}, Lcom/byazt/hz/uj;->c(Landroid/os/Handler;Landroid/app/Activity;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/byazt/hz/uj;->rl:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v4, Lcom/byazt/hz/uj$3;

    .line 60
    .line 61
    invoke-direct {v4, p0, v1, v2, v0}, Lcom/byazt/hz/uj$3;-><init>(Lcom/byazt/hz/uj;Landroid/app/Activity;Lcom/byazt/yl/ve;Landroid/app/Activity;)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/byazt/hz/uj;->zm:I

    .line 65
    .line 66
    int-to-long v0, v0

    .line 67
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public rl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/uj;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt(Lcom/byazt/ll/tt;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->m()I

    move-result p1

    iput p1, p0, Lcom/byazt/hz/uj;->gr:I

    .line 5
    invoke-direct {p0}, Lcom/byazt/hz/uj;->uj()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nu()I

    move-result p1

    iput p1, p0, Lcom/byazt/hz/uj;->gu:I

    .line 7
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->pf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/nbs/tt;->sl(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/hz/uj;->zm:I

    if-gtz p1, :cond_0

    const/16 p1, 0x3a98

    .line 8
    iput p1, p0, Lcom/byazt/hz/uj;->zm:I

    .line 9
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/byazt/hz/uj;->rl:Landroid/os/Handler;

    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string v0, "--==--- inter full refresh is not enabled"

    .line 10
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
