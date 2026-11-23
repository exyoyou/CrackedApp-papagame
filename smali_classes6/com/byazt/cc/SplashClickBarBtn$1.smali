.class public Lcom/byazt/cc/SplashClickBarBtn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x1ca
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/SplashClickBarBtn;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/SplashClickBarBtn;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/SplashClickBarBtn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/SplashClickBarBtn$1;->c:Lcom/byazt/cc/SplashClickBarBtn;

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
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/byazt/cc/SplashClickBarBtn$1;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/cc/SplashClickBarBtn;->c(Lcom/byazt/cc/SplashClickBarBtn;)Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/cc/SplashClickBarBtn$1;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/byazt/cc/SplashClickBarBtn;->c(Lcom/byazt/cc/SplashClickBarBtn;)Landroid/graphics/drawable/GradientDrawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
