.class Lcom/join/mgps/customview/k0$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/k0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/join/mgps/customview/k0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/k0$a;Landroid/view/animation/Animation;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/k0$a$e;->c:Lcom/join/mgps/customview/k0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/k0$a$e;->b:Landroid/view/animation/Animation;

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
    iget-object p1, p0, Lcom/join/mgps/customview/k0$a$e;->c:Lcom/join/mgps/customview/k0$a;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/customview/k0;->d(Lcom/join/mgps/customview/k0;)J

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
    invoke-static {}, Lcom/join/mgps/customview/k0;->f()Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/k0$a$e;->c:Lcom/join/mgps/customview/k0$a;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const-wide/16 v1, 0x7d0

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/k0$a$e;->c:Lcom/join/mgps/customview/k0$a;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/customview/k0$a;->a:Lcom/join/mgps/customview/k0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/customview/k0;->b:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    const-wide/16 v1, 0x9c4

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/join/mgps/customview/k0;->c()Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/k0$a$e;->b:Landroid/view/animation/Animation;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 59
    .line 60
    .line 61
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
