.class public Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/widget/detail/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;
    }
.end annotation


# instance fields
.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/join/mgps/customview/widget/detail/a;

.field m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;


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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e(Landroid/content/Context;)V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e(Landroid/content/Context;)V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dto/TipBean;Lcom/join/mgps/dto/TipBean;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->f(Lcom/join/mgps/dto/TipBean;Lcom/join/mgps/dto/TipBean;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Landroid/content/Context;)V
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
    const v0, 0x7f0d08a9

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0a149d

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
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    const p1, 0x7f0a14af

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const p1, 0x7f0a14b0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const p1, 0x7f0a1919

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
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e:Landroid/widget/TextView;

    .line 50
    .line 51
    const p1, 0x7f0a196f

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
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->f:Landroid/widget/TextView;

    .line 61
    .line 62
    const p1, 0x7f0a1a16

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->g:Landroid/widget/TextView;

    .line 72
    .line 73
    const p1, 0x7f0a0f42

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
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->h:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    const p1, 0x7f0a1b4b

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->i:Landroid/view/View;

    .line 92
    .line 93
    const p1, 0x7f0a0f33

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->j:Landroid/view/View;

    .line 101
    .line 102
    const p1, 0x7f0a0efe

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->k:Landroid/view/View;

    .line 110
    .line 111
    return-void
.end method

.method private static synthetic f(Lcom/join/mgps/dto/TipBean;Lcom/join/mgps/dto/TipBean;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "134"

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getExt_info()Lcom/join/mgps/dto/ExtInfoBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getShare_info()Lcom/join/mgps/dto/ShareInfoBean;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->j:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtInfoBean;->getShare_info()Lcom/join/mgps/dto/ShareInfoBean;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/join/mgps/dto/ShareInfoBean;->getHead_url()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->j:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->j:Landroid/view/View;

    .line 50
    .line 51
    new-instance v4, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;

    .line 52
    .line 53
    invoke-direct {v4, p0, v0}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$a;-><init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Lcom/join/mgps/dto/ExtInfoBean;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getHandle_support()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v3, 0x1

    .line 64
    if-ne v0, v3, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->k:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->k:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCpsGame()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e:Landroid/widget/TextView;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, "\uff08\u4e91\u6e38\u620f\uff09"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->e:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->f:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getInfo()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->g:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->h:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {p0, v0, v3, v4}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/join/mgps/dto/TipNew;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 181
    .line 182
    new-instance v1, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;

    .line 183
    .line 184
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$b;-><init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :goto_3
    return-void
.end method

.method d(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/join/mgps/dto/TipNew;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "tag_info",
            "sp_tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Lcom/join/mgps/dto/TipNew;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-lez p3, :cond_2

    .line 14
    .line 15
    new-instance p3, Lcom/join/mgps/customview/widget/detail/c;

    .line 16
    .line 17
    invoke-direct {p3}, Lcom/join/mgps/customview/widget/detail/c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/join/mgps/dto/TipBean;

    .line 38
    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .line 41
    const/4 v1, -0x2

    .line 42
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f07133d

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    float-to-int v1, v1

    .line 61
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v2, 0x7f0d04b2

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const v2, 0x7f0a1a37

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .line 84
    const-string v3, "134"

    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "\u5e73\u53f0:"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_2
    return-void
.end method

.method public g(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "content"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const v3, 0x7f071448

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    float-to-int v2, v2

    .line 38
    const/4 v3, -0x2

    .line 39
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;-><init>(Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;Landroid/content/Context;II)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f070650

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sub-float/2addr v0, v1

    .line 61
    float-to-int v0, v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, p1, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->m:Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView$c;->b(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
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
    iput-object p1, p0, Lcom/join/mgps/customview/widget/detail/PcGameInfoCardView;->l:Lcom/join/mgps/customview/widget/detail/a;

    .line 2
    .line 3
    return-void
.end method
