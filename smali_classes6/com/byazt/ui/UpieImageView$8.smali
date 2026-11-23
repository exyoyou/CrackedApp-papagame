.class public Lcom/byazt/ui/UpieImageView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2,
        0x16
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ui/UpieImageView;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/ui/UpieImageView;


# direct methods
.method public constructor <init>(Lcom/byazt/ui/UpieImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ui/UpieImageView$8;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ui/UpieImageView$8;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ui/UpieImageView;->a(Lcom/byazt/ui/UpieImageView;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ui/UpieImageView;->a(Lcom/byazt/ui/UpieImageView;)Lcom/byazt/ga/LottieAnimationView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/ui/UpieImageView$8;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/ui/UpieImageView$8;->tt:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/ui/UpieImageView;->a(Lcom/byazt/ui/UpieImageView;)Lcom/byazt/ga/LottieAnimationView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/byazt/ui/UpieImageView$8$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/byazt/ui/UpieImageView$8$1;-><init>(Lcom/byazt/ui/UpieImageView$8;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$8;->ve:Lcom/byazt/ui/UpieImageView;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/ui/UpieImageView;->a(Lcom/byazt/ui/UpieImageView;)Lcom/byazt/ga/LottieAnimationView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
