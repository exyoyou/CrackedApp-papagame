.class public Lcom/kongzue/dialogx/impl/c;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/View;

.field private d:Lcom/kongzue/dialogx/interfaces/BaseDialog;

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kongzue/dialogx/impl/c;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/kongzue/dialogx/impl/c;->e:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/kongzue/dialogx/impl/c;->c:Landroid/view/View;

    .line 6
    iput-object p1, p0, Lcom/kongzue/dialogx/impl/c;->d:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/kongzue/dialogx/impl/c;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic M(Lcom/kongzue/dialogx/impl/c;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/impl/c;->d:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/impl/c;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method public onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/impl/c;->e:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, -0x1

    .line 45
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    .line 47
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 51
    .line 52
    const/4 v3, -0x2

    .line 53
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 54
    .line 55
    iget-object v3, p0, Lcom/kongzue/dialogx/impl/c;->c:Landroid/view/View;

    .line 56
    .line 57
    new-instance v4, Lcom/kongzue/dialogx/impl/c$a;

    .line 58
    .line 59
    invoke-direct {v4, p0, v0}, Lcom/kongzue/dialogx/impl/c$a;-><init>(Lcom/kongzue/dialogx/impl/c;Landroid/app/Activity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    const/high16 v3, 0x4000000

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v5, 0x1c

    .line 84
    .line 85
    if-lt v3, v5, :cond_2

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 92
    .line 93
    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/16 v2, 0x2000

    .line 114
    .line 115
    and-int/2addr v0, v2

    .line 116
    if-ne v0, v2, :cond_3

    .line 117
    .line 118
    const/16 v0, 0x2500

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/16 v0, 0x500

    .line 122
    .line 123
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 128
    .line 129
    .line 130
    const/high16 v0, -0x78000000

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "DialogX.DialogFragment \u6a21\u5f0f\u65e0\u6cd5\u652f\u6301\u975e AppCompatActivity \u542f\u52a8\u3002"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kongzue/dialogx/DialogX;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 17
    .line 18
    .line 19
    return-void
.end method
