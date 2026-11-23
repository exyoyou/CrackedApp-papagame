.class Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->startShake(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v2, 0x190

    .line 14
    .line 15
    rem-long/2addr v0, v2

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
