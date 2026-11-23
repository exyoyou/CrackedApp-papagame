.class Lcom/beizi/fusion/tool/an$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/an$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/an$2;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/an$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/an$2$1;->a:Lcom/beizi/fusion/tool/an$2;

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

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$2$1;->a:Lcom/beizi/fusion/tool/an$2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/beizi/fusion/tool/an$2$1;->a:Lcom/beizi/fusion/tool/an$2;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_0
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
