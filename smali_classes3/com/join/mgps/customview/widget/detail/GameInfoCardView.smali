.class public Lcom/join/mgps/customview/widget/detail/GameInfoCardView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/widget/detail/b;


# instance fields
.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/join/mgps/customview/MStarBar;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field l:Landroid/widget/RelativeLayout;

.field m:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field private n:Landroid/view/View;

.field private o:Lcom/join/mgps/customview/widget/detail/a;


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

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->c(Landroid/content/Context;)V

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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->c(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;)Lcom/join/mgps/customview/widget/detail/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->o:Lcom/join/mgps/customview/widget/detail/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d08a8

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0a00e6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    const p1, 0x7f0a00ee

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->c:Landroid/widget/TextView;

    .line 28
    .line 29
    const p1, 0x7f0a00e2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->d:Landroid/widget/TextView;

    .line 39
    .line 40
    const p1, 0x7f0a00f7

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 50
    .line 51
    const p1, 0x7f0a00e5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 61
    .line 62
    const p1, 0x7f0a03db

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->g:Lcom/join/mgps/customview/MStarBar;

    .line 72
    .line 73
    const p1, 0x7f0a0401

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->h:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    const p1, 0x7f0a1482

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->i:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const p1, 0x7f0a03de

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->j:Landroid/widget/TextView;

    .line 105
    .line 106
    const p1, 0x7f0a03dd

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->k:Landroid/widget/TextView;

    .line 116
    .line 117
    const p1, 0x7f0a13df

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->l:Landroid/widget/RelativeLayout;

    .line 127
    .line 128
    const p1, 0x7f0a198a

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->m:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 138
    .line 139
    const p1, 0x7f0a0efe

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->n:Landroid/view/View;

    .line 147
    .line 148
    return-void
.end method

.method private d(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "1"

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const-string p1, "0.0"

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const-string v1, "0"

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->j:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->k:Landroid/widget/TextView;

    .line 65
    .line 66
    const-string v2, "\u6682\u672a\u51fa\u5206"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->j:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->g:Lcom/join/mgps/customview/MStarBar;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->g:Lcom/join/mgps/customview/MStarBar;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->g:Lcom/join/mgps/customview/MStarBar;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getTotal_stars()D

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->i:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->i:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->c:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->d:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "M"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-ne v0, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string v0, "0.00"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v1, "\u5df2\u67090\u4eba\u9884\u7ea6"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v5, "\u5df2\u6709"

    .line 116
    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, "\u4eba\u9884\u7ea6"

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    const/4 v1, 0x5

    .line 187
    if-ne v0, v1, :cond_3

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_3

    .line 204
    .line 205
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v5, ""

    .line 252
    .line 253
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_4

    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->f:Landroid/widget/TextView;

    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const v6, 0x7f120105

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    const-string v6, "\u5b89\u88c5"

    .line 293
    .line 294
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getHandle_support()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-ne v0, v4, :cond_5

    .line 306
    .line 307
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->n:Landroid/view/View;

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->n:Landroid/view/View;

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTagInfo()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_6

    .line 327
    .line 328
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->e:Landroid/widget/TextView;

    .line 329
    .line 330
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    :cond_6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->d(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->i:Landroid/widget/LinearLayout;

    .line 337
    .line 338
    new-instance v1, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$a;

    .line 339
    .line 340
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$a;-><init>(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->h:Landroid/widget/LinearLayout;

    .line 347
    .line 348
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->d:Landroid/widget/TextView;

    .line 352
    .line 353
    new-instance v1, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;

    .line 354
    .line 355
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$b;-><init>(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_ranking_pos()Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_a

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_ranking_pos()Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag;->getHot_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_ranking_pos()Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_ranking_pos()Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetailRankingTag;->getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    if-eqz v0, :cond_7

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_7
    if-eqz v1, :cond_8

    .line 395
    .line 396
    move-object v0, v1

    .line 397
    goto :goto_3

    .line 398
    :cond_8
    move-object v0, p1

    .line 399
    :goto_3
    if-eqz v0, :cond_9

    .line 400
    .line 401
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->l:Landroid/widget/RelativeLayout;

    .line 402
    .line 403
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->m:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getTitle()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {p1, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->l:Landroid/widget/RelativeLayout;

    .line 417
    .line 418
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->l:Landroid/widget/RelativeLayout;

    .line 422
    .line 423
    new-instance v1, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;

    .line 424
    .line 425
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/widget/detail/GameInfoCardView$c;-><init>(Lcom/join/mgps/customview/widget/detail/GameInfoCardView;Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->l:Landroid/widget/RelativeLayout;

    .line 433
    .line 434
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    :goto_5
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public setGameInfoCallback(Lcom/join/mgps/customview/widget/detail/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfoCallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/GameInfoCardView;->o:Lcom/join/mgps/customview/widget/detail/a;

    .line 2
    .line 3
    return-void
.end method
