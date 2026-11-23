.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->initListeners()V
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$200(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$300(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 20
    .line 21
    iget v1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 22
    .line 23
    neg-int v1, v1

    .line 24
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$400(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;II)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$500(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget v0, Lcom/haima/hmcp/R$mipmap;->hm_vir_operate_down:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-static {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$302(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Z)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 46
    .line 47
    iget v1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 48
    .line 49
    neg-int v1, v1

    .line 50
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$400(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;II)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$500(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/ImageView;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget v1, Lcom/haima/hmcp/R$mipmap;->hm_vir_operate_up:I

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$302(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Z)Z

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method
