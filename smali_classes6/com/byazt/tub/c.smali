.class public Lcom/byazt/tub/c;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33b,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/vn/RoundImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public yo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x19

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/tub/c;->yo:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tub/c;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    const/16 v1, 0x19

    invoke-static {v0, p1, v1}, Lcom/byazt/or/tt;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/tub/c$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/tub/c$3;-><init>(Lcom/byazt/tub/c;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tub/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/tub/c;->tt(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tub/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    return-object p0
.end method

.method private tt(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 9
    new-instance v0, Lcom/byazt/tub/c$4;

    const-string v1, "UG_decode_img"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/tub/c$4;-><init>(Lcom/byazt/tub/c;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tub/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/tub/c;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/tub/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/vn/RoundImageView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/tub/c;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "local://"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/tub/c;->c:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v2, Lcom/byazt/tub/c$1;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/byazt/tub/c$1;-><init>(Lcom/byazt/tub/c;)V

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x140

    .line 44
    .line 45
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/byazt/tub/c;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/byazt/tub/c$2;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/byazt/tub/c$2;-><init>(Lcom/byazt/tub/c;)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/tub/c;->sp()Lcom/byazt/vn/RoundImageView;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "blurRate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iput-object p2, p0, Lcom/byazt/tub/c;->c:Ljava/lang/String;

    return-void

    .line 10
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/tub/c;->yo:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "UGBlurWidget"

    .line 11
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public sp()Lcom/byazt/vn/RoundImageView;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/vn/RoundImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/vn/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/vn/RoundImageView;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 4
    invoke-direct {p0}, Lcom/byazt/tub/c;->x()V

    .line 5
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->b:I

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setBorderColor(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->hd:F

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setCornerRadius(F)V

    .line 8
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/vn/RoundImageView;

    iget v1, p0, Lcom/byazt/xj/ve;->kp:F

    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setBorderWidth(F)V

    return-void
.end method
