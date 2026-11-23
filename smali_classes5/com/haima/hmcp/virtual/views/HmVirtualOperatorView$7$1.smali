.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->reSet()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onExit()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
