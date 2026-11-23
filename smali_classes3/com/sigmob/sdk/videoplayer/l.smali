.class public Lcom/sigmob/sdk/videoplayer/l;
.super Landroid/view/TextureView;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "ResizeTextureView"


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentVideoWidth",
            "currentVideoHeight"
        }
    .end annotation

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRotation()F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iget v3, v0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    sget v8, Lcom/sigmob/sdk/videoplayer/f;->u:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    if-eq v1, v7, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :cond_1
    mul-int v3, v2, v4

    div-int/2addr v3, v5

    :cond_2
    if-eq v1, v7, :cond_4

    if-ne v1, v6, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v8, p1

    move/from16 v9, p2

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v9, p1

    move/from16 v8, p2

    :goto_1
    invoke-static {v2, v8}, Landroid/view/View;->getDefaultSize(II)I

    move-result v10

    invoke-static {v3, v9}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    if-lez v2, :cond_d

    if-lez v3, :cond_d

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "widthMeasureSpec  ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "heightMeasureSpec ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v10, v8, :cond_7

    if-ne v12, v8, :cond_7

    mul-int v8, v2, v13

    mul-int v9, v11, v3

    if-ge v8, v9, :cond_5

    :goto_2
    div-int v10, v8, v3

    goto :goto_5

    :cond_5
    if-le v8, v9, :cond_6

    div-int v8, v9, v2

    goto :goto_3

    :cond_6
    move v10, v11

    goto :goto_5

    :cond_7
    const/high16 v9, -0x80000000

    if-ne v10, v8, :cond_9

    mul-int v8, v11, v3

    div-int/2addr v8, v2

    if-ne v12, v9, :cond_8

    if-le v8, v13, :cond_8

    mul-int v8, v13, v2

    goto :goto_2

    :cond_8
    :goto_3
    move v10, v11

    move v11, v8

    goto :goto_7

    :cond_9
    if-ne v12, v8, :cond_b

    mul-int v8, v13, v2

    div-int/2addr v8, v3

    if-ne v10, v9, :cond_a

    if-le v8, v11, :cond_a

    :goto_4
    mul-int v8, v11, v3

    div-int/2addr v8, v2

    goto :goto_3

    :cond_a
    move v10, v8

    :goto_5
    move v11, v13

    goto :goto_7

    :cond_b
    if-ne v12, v9, :cond_c

    if-le v3, v13, :cond_c

    mul-int v8, v13, v2

    div-int/2addr v8, v3

    goto :goto_6

    :cond_c
    move v8, v2

    move v13, v3

    :goto_6
    if-ne v10, v9, :cond_a

    if-le v8, v11, :cond_a

    goto :goto_4

    :cond_d
    :goto_7
    if-eqz v5, :cond_12

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    sget v8, Lcom/sigmob/sdk/videoplayer/f;->u:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    goto :goto_8

    :cond_e
    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    if-eq v1, v7, :cond_f

    if-ne v1, v6, :cond_10

    :cond_f
    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :cond_10
    int-to-double v6, v3

    int-to-double v1, v2

    div-double/2addr v6, v1

    int-to-double v1, v4

    int-to-double v8, v5

    div-double v12, v1, v8

    cmpl-double v3, v6, v12

    if-lez v3, :cond_11

    int-to-double v1, v10

    div-double/2addr v8, v1

    int-to-double v1, v11

    mul-double v8, v8, v1

    double-to-int v3, v8

    move v2, v5

    goto :goto_8

    :cond_11
    cmpg-double v3, v6, v12

    if-gez v3, :cond_12

    int-to-double v5, v11

    div-double/2addr v1, v5

    int-to-double v5, v10

    mul-double v1, v1, v5

    double-to-int v2, v1

    move v3, v4

    goto :goto_8

    :cond_12
    move v2, v10

    move v3, v11

    :goto_8
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
