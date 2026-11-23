.class public Lcom/byazt/ga/LottieAnimationView$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x105
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/LottieAnimationView$16;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/ga/LottieAnimationView$16;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/LottieAnimationView$16;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->tt:Lcom/byazt/ga/LottieAnimationView$16;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "TMe"

    .line 2
    .line 3
    const-string v1, "--==-- lottie real start play"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->tt:Lcom/byazt/ga/LottieAnimationView$16;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/byazt/ga/LottieAnimationView$16;->c:Lcom/byazt/ga/LottieAnimationView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->tt:Lcom/byazt/ga/LottieAnimationView$16;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/byazt/ga/LottieAnimationView$16;->c:Lcom/byazt/ga/LottieAnimationView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->tt:Lcom/byazt/ga/LottieAnimationView$16;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/byazt/ga/LottieAnimationView$16;->c:Lcom/byazt/ga/LottieAnimationView;

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/byazt/ga/LottieAnimationView$16$1;->c:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Lcom/byazt/ga/LottieAnimationView;J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
