.class Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

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
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->refreshMoreKeyUI()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
