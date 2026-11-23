.class public final synthetic Lcom/google/android/material/search/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/search/d0;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/d0;FFLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/c0;->b:Lcom/google/android/material/search/d0;

    iput p2, p0, Lcom/google/android/material/search/c0;->c:F

    iput p3, p0, Lcom/google/android/material/search/c0;->d:F

    iput-object p4, p0, Lcom/google/android/material/search/c0;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/c0;->b:Lcom/google/android/material/search/d0;

    iget v1, p0, Lcom/google/android/material/search/c0;->c:F

    iget v2, p0, Lcom/google/android/material/search/c0;->d:F

    iget-object v3, p0, Lcom/google/android/material/search/c0;->e:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/material/search/d0;->d(Lcom/google/android/material/search/d0;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
