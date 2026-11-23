.class Lcom/join/mgps/ptr/header/a$e;
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
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->c:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a$h;

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

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->m()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->e()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->c:Lcom/join/mgps/ptr/header/a;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/ptr/header/a;->e(Lcom/join/mgps/ptr/header/a;)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    add-float/2addr v0, v1

    .line 29
    const/high16 v1, 0x40a00000    # 5.0f

    .line 30
    .line 31
    rem-float/2addr v0, v1

    .line 32
    invoke-static {p1, v0}, Lcom/join/mgps/ptr/header/a;->f(Lcom/join/mgps/ptr/header/a;F)F

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
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
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->c:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/ptr/header/a;->f(Lcom/join/mgps/ptr/header/a;F)F

    .line 5
    .line 6
    .line 7
    return-void
.end method
