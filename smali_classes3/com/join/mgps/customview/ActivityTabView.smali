.class public Lcom/join/mgps/customview/ActivityTabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ActivityTabView$d;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/join/mgps/customview/ActivityTabView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ActivityTabView;)Lcom/join/mgps/customview/ActivityTabView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ActivityTabView;->n:Lcom/join/mgps/customview/ActivityTabView$d;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f0a0f3d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->b:Landroid/view/View;

    .line 11
    .line 12
    const v0, 0x7f0a0a43

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->e:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v0, 0x7f0a1a49

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->h:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a1950

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->k:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->h:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->k:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/ActivityTabView;->b:Landroid/view/View;

    .line 64
    .line 65
    new-instance v0, Lcom/join/mgps/customview/ActivityTabView$a;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ActivityTabView$a;-><init>(Lcom/join/mgps/customview/ActivityTabView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method private c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const v0, 0x7f0a0f3e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->c:Landroid/view/View;

    .line 15
    .line 16
    const v0, 0x7f0a0a44

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->f:Landroid/widget/ImageView;

    .line 26
    .line 27
    const v0, 0x7f0a1a4a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->i:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a1951

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->l:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->i:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->l:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->isExist()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getSub_title()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getDefault_sub_title()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->c:Landroid/view/View;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/customview/ActivityTabView$b;

    .line 81
    .line 82
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/ActivityTabView$b;-><init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_gift_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const v0, 0x7f0a0f3f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->d:Landroid/view/View;

    .line 15
    .line 16
    const v0, 0x7f0a0a45

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->g:Landroid/widget/ImageView;

    .line 26
    .line 27
    const v0, 0x7f0a1a4b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->j:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a1952

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->m:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->j:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->m:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->isExist()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getSub_title()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameBenefitBean;->getDefault_sub_title()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/ActivityTabView;->d:Landroid/view/View;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/customview/ActivityTabView$c;

    .line 81
    .line 82
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/ActivityTabView$c;-><init>(Lcom/join/mgps/customview/ActivityTabView;Lcom/join/mgps/dto/BtGameBenefitBean;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public setListener(Lcom/join/mgps/customview/ActivityTabView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ActivityTabView;->n:Lcom/join/mgps/customview/ActivityTabView$d;

    .line 2
    .line 3
    return-void
.end method

.method public update(Lcom/join/mgps/dto/BtGameWelfare;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "welfare"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v2, 0x7f0d08a0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/join/mgps/dto/BTActivityBean;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/BtGameBenefitSummary;->getGame_coupon_summary()Lcom/join/mgps/dto/BtGameBenefitBean;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const v1, 0x7f0d08a1

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ActivityTabView;->c(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_benefit_summary()Lcom/join/mgps/dto/BtGameBenefitSummary;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ActivityTabView;->d(Lcom/join/mgps/dto/BtGameBenefitSummary;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-lez v0, :cond_2

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const v2, 0x7f0d089f

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/join/mgps/dto/BtGameWelfare;->getGame_activity_summary()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/join/mgps/dto/BTActivityBean;

    .line 173
    .line 174
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ActivityTabView;->b(Lcom/join/mgps/dto/BTActivityBean;)V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_0
    return-void
.end method
