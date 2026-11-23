.class Lcom/kongzue/dialogx/dialogs/WaitDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog;->z3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/WaitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/WaitDialog;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_wait:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->B1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->M1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->e(Z)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->Q1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i0()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;->e(Z)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    new-instance v3, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 64
    .line 65
    invoke-direct {v3, v4, v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->i1:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->j2()Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->g()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->w2()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->w2()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->b:Landroid/app/Activity;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$b;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->w2()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->R1(Landroid/app/Activity;Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method
