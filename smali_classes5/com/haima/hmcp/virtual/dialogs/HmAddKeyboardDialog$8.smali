.class Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$8;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelect(Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$8;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    iget-object p2, v0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0x6c

    .line 17
    .line 18
    const/16 v5, 0x6c

    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$400(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;Ljava/lang/String;IIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "add error , please register listener"

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
