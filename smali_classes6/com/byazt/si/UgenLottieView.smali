.class public Lcom/byazt/si/UgenLottieView;
.super Lcom/byazt/ga/LottieAnimationView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x7ef
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/sa/uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ga/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sa/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/UgenLottieView;->c:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ga/LottieAnimationView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/si/UgenLottieView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ga/LottieAnimationView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/si/UgenLottieView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
