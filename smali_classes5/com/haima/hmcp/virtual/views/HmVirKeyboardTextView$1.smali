.class Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->init(Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;

.field final synthetic val$keyboardInfoBean:Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;->val$keyboardInfoBean:Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;)Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->access$000(Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;)Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;->val$keyboardInfoBean:Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;->onSelect(Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
