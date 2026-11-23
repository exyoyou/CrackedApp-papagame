.class Lcom/join/mgps/customview/hmfloat/HMBallView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/hmfloat/HMBallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/hmfloat/HMBallView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/hmfloat/HMBallView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView$d;->b:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView$d;->b:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/customview/hmfloat/HMBallView;->d(Lcom/join/mgps/customview/hmfloat/HMBallView;)Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->c(Lcom/join/mgps/customview/hmfloat/HMBallView;Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMBallView$d;->b:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
