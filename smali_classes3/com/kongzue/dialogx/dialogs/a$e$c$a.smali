.class Lcom/kongzue/dialogx/dialogs/a$e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e$c;->d(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/a$e$c;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$c$a;->b:Lcom/kongzue/dialogx/dialogs/a$e$c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$c$a;->b:Lcom/kongzue/dialogx/dialogs/a$e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e$c;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 18
    .line 19
    .line 20
    return-void
.end method
