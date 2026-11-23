.class Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->init(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

.field final synthetic val$clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->val$clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->access$000(Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getKeys()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->val$clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;->this$0:Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 29
    .line 30
    invoke-interface {v0, p1, v1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;->onClick(Landroid/view/View;Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
