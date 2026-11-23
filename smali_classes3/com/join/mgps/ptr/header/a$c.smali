.class Lcom/join/mgps/ptr/header/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/ptr/header/a$h;

.field final synthetic c:Lcom/join/mgps/ptr/header/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ring"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->c:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
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
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->m()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->c:Lcom/join/mgps/ptr/header/a;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/ptr/header/a;->b(Lcom/join/mgps/ptr/header/a;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$c;->c:Lcom/join/mgps/ptr/header/a;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/ptr/header/a;->a(Lcom/join/mgps/ptr/header/a;)Landroid/view/animation/Animation;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
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

.method public onAnimationStart(Landroid/view/animation/Animation;)V
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
