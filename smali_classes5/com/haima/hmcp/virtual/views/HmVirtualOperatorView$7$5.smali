.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onReset()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->reSet()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
