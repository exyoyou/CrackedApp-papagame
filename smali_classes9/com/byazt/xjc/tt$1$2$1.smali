.class public Lcom/byazt/xjc/tt$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x7ca
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xjc/tt$1$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xjc/tt$1$2;


# direct methods
.method public constructor <init>(Lcom/byazt/xjc/tt$1$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xjc/tt$1$2$1;->c:Lcom/byazt/xjc/tt$1$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xjc/tt$1$2$1;->c:Lcom/byazt/xjc/tt$1$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/xjc/tt$1$2;->c:Lcom/byazt/xjc/tt$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/xjc/tt;->n(Lcom/byazt/xjc/tt;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/xjc/tt$1$2$1;->c:Lcom/byazt/xjc/tt$1$2;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/byazt/xjc/tt$1$2;->c:Lcom/byazt/xjc/tt$1;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/xjc/tt;->ve(Lcom/byazt/xjc/tt;)Landroid/view/animation/TranslateAnimation;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/xjc/tt$1$2$1;->c:Lcom/byazt/xjc/tt$1$2;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/byazt/xjc/tt$1$2;->c:Lcom/byazt/xjc/tt$1;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/xjc/tt;->c(Lcom/byazt/xjc/tt;)Lcom/byazt/xjc/c$c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/byazt/xjc/c$c;->c()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/byazt/dqg/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/byazt/xjc/tt$1$2$1;->c:Lcom/byazt/xjc/tt$1$2;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/byazt/xjc/tt$1$2;->c:Lcom/byazt/xjc/tt$1;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/byazt/xjc/tt;->ve(Lcom/byazt/xjc/tt;)Landroid/view/animation/TranslateAnimation;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
