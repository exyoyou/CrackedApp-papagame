.class Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->n(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->b:Landroid/view/View;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->j(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->l(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->c:Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->i(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;->b:Landroid/view/View;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    return-void
.end method
