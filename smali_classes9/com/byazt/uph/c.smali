.class public Lcom/byazt/uph/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1be,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/uph/c$c;,
        Lcom/byazt/uph/c$tt;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/yj/m;)I
    .locals 1

    .line 35
    invoke-interface {p1}, Lcom/byazt/yj/m;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "image_size"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static tt()Lcom/byazt/uph/c$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/uph/c$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/uph/c$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uph/c$tt;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 39
    invoke-interface {p4, p1, p2, p3}, Lcom/byazt/uph/c$tt;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p1, Lcom/byazt/sml/tt;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object p1, p1, Lcom/byazt/sml/tt;->tt:Ljava/lang/String;

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/yj/yp;->key(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->width(I)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 8
    invoke-interface {p1, p4}, Lcom/byazt/yj/yp;->height(I)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 9
    invoke-interface {p1, p6}, Lcom/byazt/yj/yp;->cacheDir(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 10
    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 11
    invoke-interface {p1, p5}, Lcom/byazt/yj/yp;->scaleType(Landroid/widget/ImageView$ScaleType;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 12
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->requestTime(Z)Lcom/byazt/yj/yp;

    move-result-object p1

    new-instance p3, Lcom/byazt/uph/c$1;

    invoke-direct {p3, p0, p2}, Lcom/byazt/uph/c$1;-><init>(Lcom/byazt/uph/c;Lcom/byazt/uph/c$tt;)V

    .line 13
    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    .line 14
    invoke-virtual {p0}, Lcom/byazt/uph/c;->c()V

    return-void
.end method

.method public c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/byazt/yj/gt;Z)V
    .locals 1

    .line 15
    iget-object v0, p1, Lcom/byazt/sml/tt;->c:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object p1, p1, Lcom/byazt/sml/tt;->tt:Ljava/lang/String;

    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/yj/yp;->key(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 18
    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->width(I)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 19
    invoke-interface {p1, p4}, Lcom/byazt/yj/yp;->height(I)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 20
    invoke-interface {p1, p6}, Lcom/byazt/yj/yp;->cacheDir(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 21
    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 22
    invoke-interface {p1, p5}, Lcom/byazt/yj/yp;->scaleType(Landroid/widget/ImageView$ScaleType;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 23
    invoke-interface {p1, p8}, Lcom/byazt/yj/yp;->loadSetp(Lcom/byazt/yj/gt;)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 24
    invoke-interface {p1, p9}, Lcom/byazt/yj/yp;->headers(Z)Lcom/byazt/yj/yp;

    move-result-object p1

    .line 25
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->requestTime(Z)Lcom/byazt/yj/yp;

    move-result-object p1

    new-instance p3, Lcom/byazt/uph/c$2;

    invoke-direct {p3, p0, p2}, Lcom/byazt/uph/c$2;-><init>(Lcom/byazt/uph/c;Lcom/byazt/uph/c$tt;)V

    .line 26
    invoke-interface {p1, p3, p7}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    .line 27
    invoke-virtual {p0}, Lcom/byazt/uph/c;->c()V

    return-void
.end method

.method public c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILjava/lang/String;)V
    .locals 7

    .line 2
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/byazt/uph/c;->c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILjava/lang/String;ILcom/byazt/yj/gt;Z)V
    .locals 10

    .line 3
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/byazt/uph/c;->c(Lcom/byazt/sml/tt;Lcom/byazt/uph/c$tt;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/byazt/yj/gt;Z)V

    return-void
.end method

.method public c(Lcom/byazt/yj/m;Lcom/byazt/uph/c$tt;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 28
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/byazt/uph/c;->c(Lcom/byazt/yj/m;)I

    move-result v1

    .line 30
    instance-of v2, v0, [B

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Lcom/byazt/uph/tt;

    check-cast v0, [B

    invoke-direct {v2, v0, v1}, Lcom/byazt/uph/tt;-><init>([BI)V

    invoke-interface {p2, p1, v2}, Lcom/byazt/uph/c$tt;->c(Lcom/byazt/yj/m;Lcom/byazt/uph/tt;)V

    return-void

    .line 32
    :cond_0
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 33
    new-instance v2, Lcom/byazt/uph/tt;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v1}, Lcom/byazt/uph/tt;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-interface {p2, p1, v2}, Lcom/byazt/uph/c$tt;->c(Lcom/byazt/yj/m;Lcom/byazt/uph/tt;)V

    return-void

    :cond_1
    const-string p1, "not bitmap or gif result!"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-interface {p2, v1, p1, v0}, Lcom/byazt/uph/c$tt;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
