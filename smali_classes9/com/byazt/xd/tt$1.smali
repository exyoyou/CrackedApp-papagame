.class public Lcom/byazt/xd/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x208,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xd/tt;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/xd/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/xd/tt;->c(Lcom/byazt/xd/tt;)Landroid/graphics/Matrix;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/byazt/xd/tt;->tt(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/byazt/xd/tt;->tt(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/xd/tt;->c(Lcom/byazt/xd/tt;)Landroid/graphics/Matrix;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/byazt/xd/tt;->ve(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/byazt/xd/tt;->ve(Lcom/byazt/xd/tt;)Landroid/graphics/LinearGradient;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/byazt/xd/tt;->c(Lcom/byazt/xd/tt;)Landroid/graphics/Matrix;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p1, p0, Lcom/byazt/xd/tt$1;->c:Lcom/byazt/xd/tt;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
