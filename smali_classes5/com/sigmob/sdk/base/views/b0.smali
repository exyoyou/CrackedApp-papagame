.class public final synthetic Lcom/sigmob/sdk/base/views/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/ae;

.field public final synthetic c:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/ae;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/b0;->b:Lcom/sigmob/sdk/base/views/ae;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/b0;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b0;->b:Lcom/sigmob/sdk/base/views/ae;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b0;->c:Landroid/graphics/Paint;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/views/ae;->b(Lcom/sigmob/sdk/base/views/ae;Landroid/graphics/Paint;Landroid/animation/ValueAnimator;)V

    return-void
.end method
