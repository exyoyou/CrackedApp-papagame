.class Lcom/kongzue/dialogx/dialogs/d$e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e$b;->c(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/d$e$b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$b$a;->b:Lcom/kongzue/dialogx/dialogs/d$e$b;

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
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$b$a;->b:Lcom/kongzue/dialogx/dialogs/d$e$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$b$a;->b:Lcom/kongzue/dialogx/dialogs/d$e$b;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e$b;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    cmpl-float p1, p1, v1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/d$e;->f(Lcom/kongzue/dialogx/dialogs/d$e;Z)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
