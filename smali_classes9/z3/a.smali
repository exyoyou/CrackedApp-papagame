.class public Lz3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
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

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentAttribution",
            "shortcutAttribution",
            "dataSourceExtras",
            "viewportDimensions",
            "scaleType",
            "focusPoint",
            "imageExtras",
            "callerContext",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/net/Uri;",
            ")",
            "Lb4/c$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb4/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb4/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lb4/c$a;->g:I

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iput p3, v0, Lb4/c$a;->h:I

    .line 19
    .line 20
    :cond_0
    iput-object p4, v0, Lb4/c$a;->i:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    iget p3, p5, Landroid/graphics/PointF;->x:F

    .line 25
    .line 26
    iput p3, v0, Lb4/c$a;->j:F

    .line 27
    .line 28
    iget p3, p5, Landroid/graphics/PointF;->y:F

    .line 29
    .line 30
    iput p3, v0, Lb4/c$a;->k:F

    .line 31
    .line 32
    :cond_1
    iput-object p7, v0, Lb4/c$a;->e:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p8, v0, Lb4/c$a;->f:Landroid/net/Uri;

    .line 35
    .line 36
    iput-object p2, v0, Lb4/c$a;->c:Ljava/util/Map;

    .line 37
    .line 38
    iput-object p6, v0, Lb4/c$a;->d:Ljava/util/Map;

    .line 39
    .line 40
    iput-object p1, v0, Lb4/c$a;->b:Ljava/util/Map;

    .line 41
    .line 42
    iput-object p0, v0, Lb4/c$a;->a:Ljava/util/Map;

    .line 43
    .line 44
    return-object v0
.end method
