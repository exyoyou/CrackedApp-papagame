.class Lcom/kongzue/dialogx/dialogs/g$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/g$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 4
    .line 5
    sget-object v2, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->BUTTON_CANCEL:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 6
    .line 7
    iput-object v2, v1, Lcom/kongzue/dialogx/dialogs/g;->U:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v0, v2}, Lcom/kongzue/dialogx/dialogs/g;->l1(Lcom/kongzue/dialogx/dialogs/g;Landroid/widget/EditText;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/g;->m1(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 29
    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    instance-of v3, v2, Lcom/kongzue/dialogx/interfaces/v;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 54
    .line 55
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 56
    .line 57
    check-cast v2, Lcom/kongzue/dialogx/interfaces/v;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 60
    .line 61
    invoke-interface {v2, v1, p1, v0}, Lcom/kongzue/dialogx/interfaces/v;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    instance-of v0, v2, Lcom/kongzue/dialogx/interfaces/w;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    check-cast v2, Lcom/kongzue/dialogx/interfaces/w;

    .line 78
    .line 79
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 80
    .line 81
    invoke-interface {v2, v0, p1}, Lcom/kongzue/dialogx/interfaces/w;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    check-cast v2, Lcom/kongzue/dialogx/interfaces/t;

    .line 94
    .line 95
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 96
    .line 97
    invoke-interface {v2, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$d;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_1
    return-void
.end method
