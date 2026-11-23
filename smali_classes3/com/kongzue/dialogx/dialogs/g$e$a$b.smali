.class Lcom/kongzue/dialogx/dialogs/g$e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g$e$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/g$e$a;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g$e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-static {v2, v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->g1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/j;->i()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$b;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method
