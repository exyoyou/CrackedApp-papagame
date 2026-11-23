.class public Lcom/byazt/oq/WriggleGuideView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x898
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/oq/WriggleGuideView$c;
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public da:Lcom/byazt/oq/WriggleGuideView$c;

.field public i:Z

.field public n:Landroid/graphics/Paint;

.field public sp:Z

.field public tt:I

.field public uj:Landroid/graphics/Bitmap;

.field public ve:Landroid/graphics/Bitmap;

.field public x:Z


# direct methods
.method public static synthetic c(Lcom/byazt/oq/WriggleGuideView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/WriggleGuideView;->ve:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/oq/WriggleGuideView;)Landroid/graphics/Paint;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/oq/WriggleGuideView;->ve:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/oq/WriggleGuideView;->uj:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/byazt/oq/WriggleGuideView;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/oq/WriggleGuideView;->i:Z

    .line 7
    new-instance v0, Lcom/byazt/oq/WriggleGuideView$3;

    invoke-direct {v0, p0}, Lcom/byazt/oq/WriggleGuideView$3;-><init>(Lcom/byazt/oq/WriggleGuideView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private c(II)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/byazt/oq/WriggleGuideView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/oq/WriggleGuideView$1;-><init>(Lcom/byazt/oq/WriggleGuideView;II)V

    const/16 p1, 0x140

    const-string p2, "tt_wriggle_union"

    invoke-static {v0, p2, v1, p1}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/oq/WriggleGuideView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/WriggleGuideView;->uj:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private tt(II)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/byazt/oq/WriggleGuideView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/oq/WriggleGuideView$2;-><init>(Lcom/byazt/oq/WriggleGuideView;II)V

    const/16 p1, 0x140

    const-string p2, "tt_wriggle_union_white"

    invoke-static {v0, p2, v1, p1}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/oq/WriggleGuideView;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/oq/WriggleGuideView;->c()V

    return-void
.end method

.method private ve(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Landroid/graphics/Canvas;

    .line 8
    .line 9
    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    div-int/lit8 p1, p1, 0x2

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    iget v2, p0, Lcom/byazt/oq/WriggleGuideView;->a:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    const/high16 v3, 0x41200000    # 10.0f

    .line 29
    .line 30
    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/oq/WriggleGuideView;->da:Lcom/byazt/oq/WriggleGuideView$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/oq/WriggleGuideView;->da:Lcom/byazt/oq/WriggleGuideView$c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/oq/WriggleGuideView;->sp:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/byazt/oq/WriggleGuideView;->c:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/byazt/oq/WriggleGuideView;->tt:I

    .line 20
    .line 21
    iget v2, p0, Lcom/byazt/oq/WriggleGuideView;->c:I

    .line 22
    .line 23
    invoke-direct {p0, v2, v0}, Lcom/byazt/oq/WriggleGuideView;->c(II)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/byazt/oq/WriggleGuideView;->c:I

    .line 27
    .line 28
    iget v2, p0, Lcom/byazt/oq/WriggleGuideView;->tt:I

    .line 29
    .line 30
    invoke-direct {p0, v0, v2}, Lcom/byazt/oq/WriggleGuideView;->tt(II)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/byazt/oq/WriggleGuideView;->sp:Z

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/oq/WriggleGuideView;->ve:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/byazt/oq/WriggleGuideView;->uj:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-float v7, v0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-float v8, v0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/16 v10, 0x1f

    .line 64
    .line 65
    move-object v4, p1

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lcom/byazt/oq/WriggleGuideView;->uj:Landroid/graphics/Bitmap;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    .line 78
    .line 79
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 80
    .line 81
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 82
    .line 83
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/byazt/oq/WriggleGuideView;->c:I

    .line 90
    .line 91
    iget v4, p0, Lcom/byazt/oq/WriggleGuideView;->tt:I

    .line 92
    .line 93
    invoke-direct {p0, v2, v4}, Lcom/byazt/oq/WriggleGuideView;->ve(II)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v4, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/byazt/oq/WriggleGuideView;->n:Landroid/graphics/Paint;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 109
    .line 110
    .line 111
    iget-boolean p1, p0, Lcom/byazt/oq/WriggleGuideView;->x:Z

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    iget p1, p0, Lcom/byazt/oq/WriggleGuideView;->a:I

    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x5

    .line 118
    .line 119
    iput p1, p0, Lcom/byazt/oq/WriggleGuideView;->a:I

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/byazt/oq/WriggleGuideView;->a:I

    .line 125
    .line 126
    iget v0, p0, Lcom/byazt/oq/WriggleGuideView;->c:I

    .line 127
    .line 128
    if-lt p1, v0, :cond_2

    .line 129
    .line 130
    iput-boolean v1, p0, Lcom/byazt/oq/WriggleGuideView;->x:Z

    .line 131
    .line 132
    :cond_2
    :goto_0
    return-void
.end method
