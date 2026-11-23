.class public Lcom/kingja/loadsir/callback/ProgressCallback;
.super Lcom/kingja/loadsir/callback/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingja/loadsir/callback/ProgressCallback$b;
    }
.end annotation


# instance fields
.field private subTitle:Ljava/lang/String;

.field private subTitleStyleRes:I

.field private title:Ljava/lang/String;

.field private titleStyleRes:I


# direct methods
.method private constructor <init>(Lcom/kingja/loadsir/callback/ProgressCallback$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/kingja/loadsir/callback/Callback;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitleStyleRes:I

    .line 4
    iput v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->titleStyleRes:I

    .line 5
    invoke-static {p1}, Lcom/kingja/loadsir/callback/ProgressCallback$b;->a(Lcom/kingja/loadsir/callback/ProgressCallback$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->title:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/kingja/loadsir/callback/ProgressCallback$b;->b(Lcom/kingja/loadsir/callback/ProgressCallback$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitle:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/kingja/loadsir/callback/ProgressCallback$b;->c(Lcom/kingja/loadsir/callback/ProgressCallback$b;)I

    move-result v0

    iput v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitleStyleRes:I

    .line 8
    invoke-static {p1}, Lcom/kingja/loadsir/callback/ProgressCallback$b;->d(Lcom/kingja/loadsir/callback/ProgressCallback$b;)I

    move-result v0

    iput v0, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->titleStyleRes:I

    .line 9
    invoke-static {p1}, Lcom/kingja/loadsir/callback/ProgressCallback$b;->e(Lcom/kingja/loadsir/callback/ProgressCallback$b;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kingja/loadsir/callback/Callback;->setSuccessVisible(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingja/loadsir/callback/ProgressCallback$b;Lcom/kingja/loadsir/callback/ProgressCallback$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/callback/ProgressCallback;-><init>(Lcom/kingja/loadsir/callback/ProgressCallback$b;)V

    return-void
.end method


# virtual methods
.method protected onBuildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected onCreateView()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onViewCreate(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 10
    .line 11
    check-cast p2, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->title:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, -0x1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->title:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget v3, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->titleStyleRes:I

    .line 48
    .line 49
    if-ne v3, v2, :cond_0

    .line 50
    .line 51
    const v3, 0x1030042

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitle:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    new-instance v1, Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitle:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget v3, p0, Lcom/kingja/loadsir/callback/ProgressCallback;->subTitleStyleRes:I

    .line 83
    .line 84
    if-ne v3, v2, :cond_2

    .line 85
    .line 86
    const v2, 0x1030044

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method
