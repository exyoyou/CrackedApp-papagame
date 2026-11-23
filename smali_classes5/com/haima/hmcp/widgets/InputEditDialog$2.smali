.class Lcom/haima/hmcp/widgets/InputEditDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/InputEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/InputEditDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog$2;->this$0:Lcom/haima/hmcp/widgets/InputEditDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog$2;->this$0:Lcom/haima/hmcp/widgets/InputEditDialog;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
