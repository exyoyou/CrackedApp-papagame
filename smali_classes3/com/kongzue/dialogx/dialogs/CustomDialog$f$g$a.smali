.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 81
    .line 82
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->a1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->h1(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
