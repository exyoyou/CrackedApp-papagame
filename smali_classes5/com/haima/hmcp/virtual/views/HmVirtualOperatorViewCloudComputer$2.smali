.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$200(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "top act null"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget v1, Lcom/haima/hmcp/R$id;->tvExit:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$300(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sget v1, Lcom/haima/hmcp/R$id;->tvSave:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$400(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sget v0, Lcom/haima/hmcp/R$id;->tvReset:I

    .line 54
    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->access$500(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method
