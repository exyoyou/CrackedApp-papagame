.class public Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;
.super Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;
    }
.end annotation


# instance fields
.field protected d:Landroid/view/View;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/widget/TextView;

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 6
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 9
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    return-void
.end method


# virtual methods
.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    .line 5
    .line 6
    check-cast p2, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 9
    .line 10
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 13
    .line 14
    iput-boolean p1, p2, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->k()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public g(Ljava/util/List;ZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h(Ljava/util/List;ZILjava/io/File;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/papa/gsyvideoplayer/R$layout;->video_layout_sample_ad:I

    .line 2
    .line 3
    return v0
.end method

.method public h(Ljava/util/List;ZILjava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->i(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected hideAllWidget()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public i(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->j(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->jump_ad:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->d:Landroid/view/View;

    .line 11
    .line 12
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->ad_time:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->f:Landroid/widget/TextView;

    .line 21
    .line 22
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->widget_container:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->e:Landroid/view/ViewGroup;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->d:Landroid/view/View;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$a;-><init>(Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method protected j(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    check-cast v2, Lcom/papa/gsyvideoplayer/model/b;

    .line 6
    .line 7
    instance-of v3, v2, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;

    .line 8
    .line 9
    if-eqz v3, :cond_2

    .line 10
    .line 11
    check-cast v2, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v3, v4

    .line 25
    if-ge p3, v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v3, p3, 0x1

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    move v2, p2

    .line 32
    move-object v4, p4

    .line 33
    move-object v5, p5

    .line 34
    move v6, p6

    .line 35
    invoke-virtual/range {v0 .. v6}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->j(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_0
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sget v3, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;->f:I

    .line 45
    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v4, 0x0

    .line 50
    :goto_0
    iput-boolean v4, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->k()V

    .line 53
    .line 54
    .line 55
    invoke-super/range {p0 .. p6}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->j(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method protected k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->d:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v3, 0x8

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->f:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/16 v3, 0x8

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->e:Landroid/view/ViewGroup;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/4 v1, 0x0

    .line 56
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget v1, Lcom/papa/gsyvideoplayer/R$color;->bottom_container_bg:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    :goto_3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 93
    .line 94
    const/4 v1, 0x4

    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 98
    .line 99
    if-eqz v3, :cond_8

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    goto :goto_4

    .line 107
    :cond_8
    const/4 v3, 0x0

    .line 108
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 112
    .line 113
    if-eqz v0, :cond_b

    .line 114
    .line 115
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 116
    .line 117
    if-eqz v3, :cond_a

    .line 118
    .line 119
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 120
    .line 121
    if-eqz v3, :cond_a

    .line 122
    .line 123
    const/4 v3, 0x4

    .line 124
    goto :goto_5

    .line 125
    :cond_a
    const/4 v3, 0x0

    .line 126
    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_b
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 130
    .line 131
    if-eqz v0, :cond_f

    .line 132
    .line 133
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 134
    .line 135
    if-eqz v3, :cond_c

    .line 136
    .line 137
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 138
    .line 139
    if-eqz v3, :cond_c

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_c
    const/4 v1, 0x0

    .line 143
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 149
    .line 150
    if-eqz v1, :cond_d

    .line 151
    .line 152
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 153
    .line 154
    if-nez v1, :cond_e

    .line 155
    .line 156
    :cond_d
    const/4 v2, 0x1

    .line 157
    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    .line 159
    .line 160
    :cond_f
    return-void
.end method

.method public l(Ljava/util/ArrayList;ZI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;",
            ">;ZI)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g(Ljava/util/List;ZI)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public m(Ljava/util/ArrayList;ZILjava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h(Ljava/util/List;ZILjava/io/File;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public n(Ljava/util/ArrayList;ZILjava/io/File;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer$b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->i(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/ListGSYVideoPlayer;->onPrepared()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->h:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->k()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected setProgressAndTime(IIIIZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->f:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-lez p3, :cond_0

    .line 9
    .line 10
    div-int/lit16 p4, p4, 0x3e8

    .line 11
    .line 12
    div-int/lit16 p3, p3, 0x3e8

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p5, ""

    .line 20
    .line 21
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sub-int/2addr p4, p3

    .line 25
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method protected touchDoubleUp()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchDoubleUp()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 2
    .line 3
    int-to-float v1, v0

    .line 4
    cmpl-float v1, p1, v1

    .line 5
    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    int-to-float v0, v0

    .line 9
    cmpl-float v0, p2, v0

    .line 10
    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->h(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    cmpl-float v1, p1, v1

    .line 29
    .line 30
    if-ltz v1, :cond_1

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 34
    .line 35
    sub-float/2addr v0, v1

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    cmpl-float v0, v0, v1

    .line 44
    .line 45
    if-lez v0, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/GSYSampleADVideoPlayer;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected updateStartImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->video_click_pause_selector:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x7

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
