.class public Lcom/byazt/oq/FlowLightView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x6af
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/oq/FlowLightView$c;
    }
.end annotation


# instance fields
.field public a:I

.field public c:Landroid/graphics/Rect;

.field public da:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Bitmap;

.field public n:I

.field public sl:Landroid/graphics/Xfermode;

.field public sp:I

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public tt:Landroid/graphics/Rect;

.field public u:Landroid/graphics/LinearGradient;

.field public uj:I

.field public ve:I

.field public x:[I

.field public final yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/oq/FlowLightView$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView;->t:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView;->yp:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/oq/FlowLightView;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic c(Lcom/byazt/oq/FlowLightView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private c()V
    .locals 4

    const-string v0, "#00ffffff"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/byazt/oq/FlowLightView;->ve:I

    const-string v1, "#ffffffff"

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/byazt/oq/FlowLightView;->uj:I

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oq/FlowLightView;->n:I

    const/16 v1, 0xa

    .line 5
    iput v1, p0, Lcom/byazt/oq/FlowLightView;->a:I

    const/16 v1, 0x28

    .line 6
    iput v1, p0, Lcom/byazt/oq/FlowLightView;->sp:I

    .line 7
    iget v1, p0, Lcom/byazt/oq/FlowLightView;->ve:I

    iget v2, p0, Lcom/byazt/oq/FlowLightView;->uj:I

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oq/FlowLightView;->x:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/byazt/oq/FlowLightView$1;

    invoke-direct {v1, p0}, Lcom/byazt/oq/FlowLightView$1;-><init>(Lcom/byazt/oq/FlowLightView;)V

    const/16 v2, 0x140

    const-string v3, "tt_splash_unlock_image_arrow"

    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 11
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    iget-object v1, p0, Lcom/byazt/oq/FlowLightView;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/byazt/oq/FlowLightView;->sl:Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->yp:Ljava/util/List;

    new-instance v1, Lcom/byazt/oq/FlowLightView$c;

    invoke-direct {v1, p1}, Lcom/byazt/oq/FlowLightView$c;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/oq/FlowLightView;->c:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/oq/FlowLightView;->tt:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->yp:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/byazt/oq/FlowLightView$c;

    .line 39
    .line 40
    new-instance v11, Landroid/graphics/LinearGradient;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/byazt/oq/FlowLightView$c;->c(Lcom/byazt/oq/FlowLightView$c;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v4, v3

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static {v1}, Lcom/byazt/oq/FlowLightView$c;->c(Lcom/byazt/oq/FlowLightView$c;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v6, p0, Lcom/byazt/oq/FlowLightView;->sp:I

    .line 53
    .line 54
    add-int/2addr v3, v6

    .line 55
    int-to-float v6, v3

    .line 56
    iget v3, p0, Lcom/byazt/oq/FlowLightView;->a:I

    .line 57
    .line 58
    int-to-float v7, v3

    .line 59
    iget-object v8, p0, Lcom/byazt/oq/FlowLightView;->x:[I

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 63
    .line 64
    move-object v3, v11

    .line 65
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 66
    .line 67
    .line 68
    iput-object v11, p0, Lcom/byazt/oq/FlowLightView;->u:Landroid/graphics/LinearGradient;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/byazt/oq/FlowLightView;->u:Landroid/graphics/LinearGradient;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 81
    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    int-to-float v8, v3

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    int-to-float v9, v3

    .line 95
    iget-object v10, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 96
    .line 97
    move-object v5, p1

    .line 98
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/byazt/oq/FlowLightView$c;->c()V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lcom/byazt/oq/FlowLightView$c;->c(Lcom/byazt/oq/FlowLightView$c;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-le v1, v2, :cond_1

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/byazt/oq/FlowLightView;->sl:Landroid/graphics/Xfermode;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/byazt/oq/FlowLightView;->c:Landroid/graphics/Rect;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/byazt/oq/FlowLightView;->tt:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView;->da:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object p3, p0, Lcom/byazt/oq/FlowLightView;->i:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 p4, 0x0

    .line 24
    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView;->c:Landroid/graphics/Rect;

    .line 28
    .line 29
    new-instance p1, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView;->tt:Landroid/graphics/Rect;

    .line 43
    .line 44
    return-void
.end method
