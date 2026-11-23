.class public Lcom/kingja/loadsir/callback/HintCallback;
.super Lcom/kingja/loadsir/callback/Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingja/loadsir/callback/HintCallback$a;
    }
.end annotation


# instance fields
.field private imgResId:I

.field private subTitle:Ljava/lang/String;

.field private subTitleStyleRes:I

.field private title:Ljava/lang/String;

.field private titleStyleRes:I


# direct methods
.method public constructor <init>(Lcom/kingja/loadsir/callback/HintCallback$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kingja/loadsir/callback/Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kingja/loadsir/callback/HintCallback$a;->a(Lcom/kingja/loadsir/callback/HintCallback$a;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/kingja/loadsir/callback/HintCallback;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/kingja/loadsir/callback/HintCallback$a;->b(Lcom/kingja/loadsir/callback/HintCallback$a;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/kingja/loadsir/callback/HintCallback;->subTitle:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/kingja/loadsir/callback/HintCallback$a;->c(Lcom/kingja/loadsir/callback/HintCallback$a;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/kingja/loadsir/callback/HintCallback;->imgResId:I

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kingja/loadsir/callback/HintCallback$a;->d(Lcom/kingja/loadsir/callback/HintCallback$a;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/kingja/loadsir/callback/HintCallback;->subTitleStyleRes:I

    .line 27
    .line 28
    invoke-static {p1}, Lcom/kingja/loadsir/callback/HintCallback$a;->e(Lcom/kingja/loadsir/callback/HintCallback$a;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/kingja/loadsir/callback/HintCallback;->titleStyleRes:I

    .line 33
    .line 34
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
    iget v1, p0, Lcom/kingja/loadsir/callback/HintCallback;->imgResId:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    new-instance v1, Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iget v3, p0, Lcom/kingja/loadsir/callback/HintCallback;->imgResId:I

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/kingja/loadsir/callback/HintCallback;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/kingja/loadsir/callback/HintCallback;->title:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget v3, p0, Lcom/kingja/loadsir/callback/HintCallback;->titleStyleRes:I

    .line 57
    .line 58
    if-ne v3, v2, :cond_1

    .line 59
    .line 60
    const v3, 0x1030042

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v1, p0, Lcom/kingja/loadsir/callback/HintCallback;->subTitle:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    new-instance v1, Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/kingja/loadsir/callback/HintCallback;->subTitle:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget v3, p0, Lcom/kingja/loadsir/callback/HintCallback;->subTitleStyleRes:I

    .line 92
    .line 93
    if-ne v3, v2, :cond_3

    .line 94
    .line 95
    const v2, 0x1030046

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method
