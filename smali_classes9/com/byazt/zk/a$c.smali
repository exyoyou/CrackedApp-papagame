.class public Lcom/byazt/zk/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Landroid/graphics/Paint;

.field public n:F

.field public tt:I

.field public uj:I

.field public ve:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/a$c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zk/a$c;->ve:F

    return p1
.end method

.method public static synthetic c(Lcom/byazt/zk/a$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/zk/a$c;->tt:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/zk/a$c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zk/a$c;->n:F

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/zk/a$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/zk/a$c;->uj:I

    return p1
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 12

    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    .line 1
    iget v3, v0, Lcom/byazt/zk/a$c;->ve:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 2
    iget-object v3, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    iget v5, v0, Lcom/byazt/zk/a$c;->tt:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v3, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    iget v5, v0, Lcom/byazt/zk/a$c;->ve:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v3, p6

    int-to-float v3, v3

    .line 4
    iget v5, v0, Lcom/byazt/zk/a$c;->ve:F

    add-float v10, v3, v5

    int-to-float v7, v1

    int-to-float v9, v2

    .line 5
    iget-object v11, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    :cond_0
    iget v3, v0, Lcom/byazt/zk/a$c;->n:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 7
    iget-object v3, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    iget v4, v0, Lcom/byazt/zk/a$c;->uj:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v3, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    iget v4, v0, Lcom/byazt/zk/a$c;->n:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int v3, p7, p5

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v1, v1

    int-to-float v2, v2

    .line 9
    iget-object v4, v0, Lcom/byazt/zk/a$c;->c:Landroid/graphics/Paint;

    move p2, v1

    move p3, v3

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
