.class public Lcom/byazt/kft/UpieVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x11f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/UpieVideoView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/UpieVideoView;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/UpieVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/UpieVideoView$4;->c:Lcom/byazt/kft/UpieVideoView;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/UpieVideoView$4;->c:Lcom/byazt/kft/UpieVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kft/UpieVideoView;->ve(Lcom/byazt/kft/UpieVideoView;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/kft/UpieVideoView$4;->c:Lcom/byazt/kft/UpieVideoView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/kft/UpieVideoView;->ve(Lcom/byazt/kft/UpieVideoView;)Lcom/byazt/ga/LottieAnimationView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Lcom/byazt/ga/LottieAnimationView;->tt(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/byazt/kft/UpieVideoView$4;->c:Lcom/byazt/kft/UpieVideoView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/byazt/kft/UpieVideoView;->uj(Lcom/byazt/kft/UpieVideoView;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
