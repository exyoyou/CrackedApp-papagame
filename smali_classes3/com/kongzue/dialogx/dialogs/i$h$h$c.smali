.class Lcom/kongzue/dialogx/dialogs/i$h$h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h$h;->c(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i$h$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h$h;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h$h;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Float;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
