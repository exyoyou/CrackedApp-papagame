.class public Lcom/byazt/ui/UpieImageView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2,
        0x694
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ui/UpieImageView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ui/UpieImageView$8;


# direct methods
.method public constructor <init>(Lcom/byazt/ui/UpieImageView$8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ui/UpieImageView$8$1;->c:Lcom/byazt/ui/UpieImageView$8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$8$1;->c:Lcom/byazt/ui/UpieImageView$8;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/ui/UpieImageView;->a(Lcom/byazt/ui/UpieImageView;)Lcom/byazt/ga/LottieAnimationView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$8$1;->c:Lcom/byazt/ui/UpieImageView$8;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {p1, v0, v1}, Lcom/byazt/ui/UpieImageView;->c(Lcom/byazt/ui/UpieImageView;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
