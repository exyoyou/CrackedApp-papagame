.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c1(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    aget v3, v0, v1

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 66
    .line 67
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 70
    .line 71
    aput v3, v4, v1

    .line 72
    .line 73
    :cond_0
    aget v0, v0, v2

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 82
    .line 83
    aput v0, v1, v2

    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->b:Ljava/lang/Runnable;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y0(Lcom/kongzue/dialogx/dialogs/CustomDialog;)Landroid/view/ViewTreeObserver;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Z0(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$e;->c:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 113
    .line 114
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_0
    return v2
.end method
