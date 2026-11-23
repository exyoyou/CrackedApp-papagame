.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1, v0}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onDelete(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;->this$1:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->reSet()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
