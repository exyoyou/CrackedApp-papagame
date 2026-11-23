.class Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->initListener()V
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$7;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$7;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$600(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
