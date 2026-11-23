.class public Lcom/aggmoread/sdk/z/a/u/f;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/f$b;,
        Lcom/aggmoread/sdk/z/a/u/f$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/animation/AnimatorSet;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Camera;

.field private j:F

.field private final k:F

.field private final l:F

.field private final m:F

.field private final n:F

.field private final o:F

.field private final p:F

.field private final q:F

.field private final r:F

.field private final s:F

.field private final t:F

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    int-to-float p1, p2

    neg-float p2, p1

    const/high16 v0, 0x42900000    # 72.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->k:F

    const p2, 0x3c20a0a1

    mul-float p2, p2, p1

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->l:F

    const p2, 0x3c70f0f1

    mul-float p2, p2, p1

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->m:F

    const p2, 0x3cf0f0f1

    mul-float p2, p2, p1

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->n:F

    const v0, 0x3d20a0a1

    mul-float v0, v0, p1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->o:F

    const v0, 0x3e52d2d3

    mul-float v0, v0, p1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->p:F

    const v1, 0x3ea5a5a6

    mul-float v1, v1, p1

    iput v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->q:F

    const v2, 0x3ed2d2d3

    mul-float v2, v2, p1

    iput v2, p0, Lcom/aggmoread/sdk/z/a/u/f;->r:F

    const v3, 0x3eebebec

    mul-float v3, v3, p1

    iput v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->s:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    iput v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->t:F

    const v4, 0x3f0a0a0a

    mul-float v4, v4, p1

    iput v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->u:F

    const v4, 0x3f169697

    mul-float v4, v4, p1

    iput v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->v:F

    const v4, 0x3f25a5a6

    mul-float v4, v4, p1

    iput v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->w:F

    const v5, 0x3f2d2d2d

    mul-float v5, v5, p1

    iput v5, p0, Lcom/aggmoread/sdk/z/a/u/f;->x:F

    const v6, 0x3f323232

    mul-float v6, v6, p1

    iput v6, p0, Lcom/aggmoread/sdk/z/a/u/f;->y:F

    const v6, 0x3f4b4b4b

    mul-float p1, p1, v6

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->z:F

    sub-float/2addr v2, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v4, p2

    div-float/2addr v4, v6

    new-instance p2, Landroid/graphics/RectF;

    sub-float v6, v3, v2

    sub-float v7, v3, v4

    add-float/2addr v2, v3

    add-float/2addr v3, v4

    invoke-direct {p2, v6, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->a:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v1, v0, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/f;->b:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->c:Landroid/graphics/RectF;

    new-instance p1, Lcom/aggmoread/sdk/z/a/u/f$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/a/u/f$a;-><init>(Lcom/aggmoread/sdk/z/a/u/f;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 15

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "py"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x258

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v10, v0, [F

    fill-array-data v10, :array_2

    const-string v11, "pz"

    invoke-static {p0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v12, v0, [F

    fill-array-data v12, :array_3

    invoke-static {p0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v13, v0, [F

    fill-array-data v13, :array_4

    invoke-static {p0, v2, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v13, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v14, v0, [F

    fill-array-data v14, :array_5

    invoke-static {p0, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v14, v0, [F

    fill-array-data v14, :array_6

    invoke-static {p0, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v14, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v5, v0, [F

    fill-array-data v5, :array_7

    invoke-static {p0, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->g:Landroid/animation/AnimatorSet;

    const/16 v4, 0x8

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v7, v4, v1

    aput-object v10, v4, v0

    const/4 v0, 0x3

    aput-object v12, v4, v0

    const/4 v0, 0x4

    aput-object v13, v4, v0

    const/4 v0, 0x5

    aput-object v2, v4, v0

    const/4 v0, 0x6

    aput-object v14, v4, v0

    const/4 v0, 0x7

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/aggmoread/sdk/z/a/u/f$b;-><init>(Lcom/aggmoread/sdk/z/a/u/f$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40cccccd    # -0.7f
    .end array-data

    :array_1
    .array-data 4
        -0x40cccccd    # -0.7f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_3
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_5
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x40cccccd    # -0.7f
    .end array-data

    :array_7
    .array-data 4
        -0x40cccccd    # -0.7f
        0x0
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/f;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->t:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->d:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->k:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->setLocation(FFF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->i:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->t:F

    neg-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->n:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->a:Landroid/graphics/RectF;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->n:F

    iget v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->m:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    const v3, -0x4b4845

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->b:Landroid/graphics/RectF;

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/f;->n:F

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->q:F

    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->z:F

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/f;->j:F

    iget v6, p0, Lcom/aggmoread/sdk/z/a/u/f;->v:F

    mul-float v5, v5, v6

    sub-float v5, v4, v5

    iput v5, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/f;->x:F

    iput v5, v0, Landroid/graphics/RectF;->right:F

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/f;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v5, p0, Lcom/aggmoread/sdk/z/a/u/f;->s:F

    iget v8, p0, Lcom/aggmoread/sdk/z/a/u/f;->y:F

    iget v7, p0, Lcom/aggmoread/sdk/z/a/u/f;->u:F

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->l:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "si onVisibilityChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/f;->a()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/f;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPx(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->j:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPy(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->j:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->e:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPz(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/f;->j:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/f;->f:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
