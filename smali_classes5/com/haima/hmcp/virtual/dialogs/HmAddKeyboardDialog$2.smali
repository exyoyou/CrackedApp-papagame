.class Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;-><init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$100(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/LinearLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v3, 0x15

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dp2px(ILandroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v1, v2

    .line 30
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$202(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;I)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$300(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
