.class public Lcom/windmill/sdk/widget/c;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/widget/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/windmill/sdk/widget/CircleWebView;

.field private d:Lcom/windmill/sdk/widget/c$a;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/windmill/sdk/widget/CircleWebView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "webView"
        }
    .end annotation

    .line 1
    const-string v0, "tobid_dialog_custom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/windmill/sdk/widget/c;->e:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/windmill/sdk/widget/c;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    .line 34
    if-le p1, p2, :cond_0

    .line 35
    .line 36
    mul-int/lit8 p1, p1, 0x2

    .line 37
    .line 38
    div-int/lit8 p1, p1, 0x5

    .line 39
    .line 40
    iput p1, p0, Lcom/windmill/sdk/widget/c;->a:I

    .line 41
    .line 42
    iput p2, p0, Lcom/windmill/sdk/widget/c;->b:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    mul-int/lit8 p2, p1, 0x4

    .line 46
    .line 47
    div-int/lit8 p2, p2, 0x5

    .line 48
    .line 49
    iput p2, p0, Lcom/windmill/sdk/widget/c;->a:I

    .line 50
    .line 51
    iput p1, p0, Lcom/windmill/sdk/widget/c;->b:I

    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x50

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/widget/c;->e:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "tobid_dialog_window_anim"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v2, p0, Lcom/windmill/sdk/widget/c;->b:I

    .line 36
    .line 37
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    .line 39
    iget v2, p0, Lcom/windmill/sdk/widget/c;->a:I

    .line 40
    .line 41
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/c;->c:Lcom/windmill/sdk/widget/CircleWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/windmill/sdk/widget/c;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/c;->d:Lcom/windmill/sdk/widget/c$a;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, p0, Lcom/windmill/sdk/widget/c;->d:Lcom/windmill/sdk/widget/c$a;

    :cond_1
    return-void
.end method

.method public a(Lcom/windmill/sdk/widget/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/c;->d:Lcom/windmill/sdk/widget/c$a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/high16 v3, 0x41200000    # 10.0f

    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    new-array v3, v3, [F

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    const/4 v4, 0x0

    .line 46
    aput v2, v3, v4

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    aput v2, v3, v4

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    aput v2, v3, v5

    .line 53
    .line 54
    const/4 v5, 0x3

    .line 55
    aput v2, v3, v5

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    aput v5, v3, v2

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    aput v5, v3, v2

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    aput v5, v3, v2

    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    aput v5, v3, v2

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "SixElementsDialog onCreate:"

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v3, p0, Lcom/windmill/sdk/widget/c;->b:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, ":"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v3, p0, Lcom/windmill/sdk/widget/c;->a:I

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v0, v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/windmill/sdk/widget/c;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 120
    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .line 125
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/windmill/sdk/widget/c;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 129
    .line 130
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/windmill/sdk/widget/c;->b()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/widget/c;->d:Lcom/windmill/sdk/widget/c$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/windmill/sdk/widget/c$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/widget/c;->d:Lcom/windmill/sdk/widget/c$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/windmill/sdk/widget/c$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
