.class Lcom/join/mgps/customview/j0$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/j0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/join/mgps/customview/j0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$shakeAnimPositive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->c:Lcom/join/mgps/customview/j0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/j0$a$e;->b:Landroid/view/animation/Animation;

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->c:Lcom/join/mgps/customview/j0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/customview/j0;->a(Lcom/join/mgps/customview/j0;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x12c

    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->c:Lcom/join/mgps/customview/j0$a;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/customview/j0;->f:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const-wide/16 v1, 0x3e8

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->c:Lcom/join/mgps/customview/j0$a;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/customview/j0;->f:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    const-wide/16 v1, 0x5dc

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->c:Lcom/join/mgps/customview/j0$a;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/customview/j0;->d:Landroid/widget/ImageView;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/j0$a$e;->b:Landroid/view/animation/Animation;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    .line 56
    :goto_0
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
