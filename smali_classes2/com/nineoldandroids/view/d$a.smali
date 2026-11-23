.class Lcom/nineoldandroids/view/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/view/d;->s(Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/nineoldandroids/animation/a$a;

.field final synthetic c:Lcom/nineoldandroids/view/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/view/d;Lcom/nineoldandroids/animation/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/d$a;->c:Lcom/nineoldandroids/view/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/animation/a$a;

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

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->onAnimationCancel(Lcom/nineoldandroids/animation/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/view/d$a;->b:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/nineoldandroids/animation/a$a;->onAnimationStart(Lcom/nineoldandroids/animation/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
