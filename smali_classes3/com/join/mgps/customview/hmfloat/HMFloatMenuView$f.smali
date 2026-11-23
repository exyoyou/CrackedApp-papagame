.class public final Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;->b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

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
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;->b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->setDismissing(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;->b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->getMWindowManager()Lcom/join/mgps/customview/hmfloat/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/customview/hmfloat/j;->z()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;->b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->setDismissing(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$f;->b:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->getOnHideListener()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$d;->a()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
