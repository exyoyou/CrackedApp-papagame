.class Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

.field final synthetic c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->H()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k:Z

    .line 28
    .line 29
    const-wide/16 v2, 0x534

    .line 30
    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->E(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget p1, v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:F

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    add-float/2addr p1, v1

    .line 45
    const/high16 v1, 0x40a00000    # 5.0f

    .line 46
    .line 47
    rem-float/2addr p1, v1

    .line 48
    iput p1, v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:F

    .line 49
    .line 50
    :goto_0
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
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:F

    .line 5
    .line 6
    return-void
.end method
