.class public Lcom/kongzue/dialogx/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/p$c;
    }
.end annotation


# static fields
.field public static a:Lcom/kongzue/dialogx/util/p$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/util/p;->d(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "window"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/WindowManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/view/View;

    .line 32
    .line 33
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/util/p;->d(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/kongzue/dialogx/util/p$a;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lcom/kongzue/dialogx/util/p$a;-><init>(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    nop

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/util/p;->d(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x17

    .line 9
    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/mgps/installer/b;->a(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p1, "\u4f7f\u7528 DialogX.globalHoverWindow \u5fc5\u987b\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 19
    .line 20
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/kongzue/dialogx/util/p;->a:Lcom/kongzue/dialogx/util/p$c;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/util/p$c;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    const/4 v3, -0x1

    .line 76
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "window"

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/view/WindowManager;

    .line 89
    .line 90
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 93
    .line 94
    .line 95
    const/16 v4, 0x10

    .line 96
    .line 97
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    .line 99
    const/4 v5, -0x2

    .line 100
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 101
    .line 102
    sget-boolean v5, Lcom/kongzue/dialogx/DialogX;->K:Z

    .line 103
    .line 104
    if-eqz v5, :cond_5

    .line 105
    .line 106
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    const/16 v6, 0x1a

    .line 109
    .line 110
    if-lt v5, v6, :cond_4

    .line 111
    .line 112
    const/16 v5, 0x7f6

    .line 113
    .line 114
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const/16 v5, 0x7d2

    .line 118
    .line 119
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    const/16 v5, 0x3eb

    .line 123
    .line 124
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 125
    .line 126
    :goto_1
    const v5, 0xc000500

    .line 127
    .line 128
    .line 129
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    .line 131
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 132
    .line 133
    if-nez p2, :cond_6

    .line 134
    .line 135
    new-instance p2, Lcom/kongzue/dialogx/util/p$b;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/util/p$b;-><init>(Landroid/app/Activity;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    .line 145
    const/16 v4, 0x1c

    .line 146
    .line 147
    if-lt p2, v4, :cond_7

    .line 148
    .line 149
    invoke-static {v3, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    sget-object p2, Lcom/kongzue/dialogx/util/p;->a:Lcom/kongzue/dialogx/util/p$c;

    .line 153
    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    invoke-virtual {p2, p0, p1, v3}, Lcom/kongzue/dialogx/util/p$c;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-eqz p0, :cond_8

    .line 161
    .line 162
    move-object v3, p0

    .line 163
    :cond_8
    invoke-interface {v2, v0, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
