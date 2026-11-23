.class Lcom/facebook/drawee/view/c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/c;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/drawee/view/GenericDraweeView;

.field final synthetic c:Lcom/facebook/drawee/view/c;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/c;Lcom/facebook/drawee/view/GenericDraweeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$draweeView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/view/c$b;->c:Lcom/facebook/drawee/view/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/facebook/drawee/generic/a;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/view/c$b;->c:Lcom/facebook/drawee/view/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/facebook/drawee/view/c;->a(Lcom/facebook/drawee/view/c;)Lcom/facebook/drawee/drawable/s$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->c:Lcom/facebook/drawee/view/c;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/facebook/drawee/view/c;->b(Lcom/facebook/drawee/view/c;)Landroid/graphics/PointF;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/facebook/drawee/view/c$b;->b:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/facebook/drawee/generic/a;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/facebook/drawee/view/c$b;->c:Lcom/facebook/drawee/view/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/facebook/drawee/view/c;->b(Lcom/facebook/drawee/view/c;)Landroid/graphics/PointF;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->x(Landroid/graphics/PointF;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
