.class Lcom/join/mgps/customview/SlideBottomPanel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlideBottomPanel;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/customview/SlideBottomPanel;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Landroid/view/View;

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
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel$b;->c:Lcom/join/mgps/customview/SlideBottomPanel;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
