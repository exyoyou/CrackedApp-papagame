.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->startAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$600(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$700(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$600(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
