.class Lcom/kongzue/dialogx/dialogs/l$h$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h$j;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/l$h$j;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$j$a;->b:Lcom/kongzue/dialogx/dialogs/l$h$j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j$a;->b:Lcom/kongzue/dialogx/dialogs/l$h$j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j$a;->b:Lcom/kongzue/dialogx/dialogs/l$h$j;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->y1(Lcom/kongzue/dialogx/dialogs/l;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$j$a;->b:Lcom/kongzue/dialogx/dialogs/l$h$j;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h$j;->d:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->k2()Lcom/kongzue/dialogx/dialogs/l$h;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Float;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
