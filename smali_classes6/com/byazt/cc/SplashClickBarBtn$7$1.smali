.class public Lcom/byazt/cc/SplashClickBarBtn$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x645
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/SplashClickBarBtn$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/animation/AnimatorSet;

.field public final synthetic tt:Lcom/byazt/cc/SplashClickBarBtn$7;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/SplashClickBarBtn$7;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/SplashClickBarBtn$7$1;->tt:Lcom/byazt/cc/SplashClickBarBtn$7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/SplashClickBarBtn$7$1;->c:Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/cc/SplashClickBarBtn$7$1;->tt:Lcom/byazt/cc/SplashClickBarBtn$7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/cc/SplashClickBarBtn$7;->c:Lcom/byazt/cc/SplashClickBarBtn;

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/cc/SplashClickBarBtn$7$1$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/byazt/cc/SplashClickBarBtn$7$1$1;-><init>(Lcom/byazt/cc/SplashClickBarBtn$7$1;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0xc8

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
