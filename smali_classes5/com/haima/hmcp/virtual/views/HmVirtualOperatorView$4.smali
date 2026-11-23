.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, ""

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeName(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
