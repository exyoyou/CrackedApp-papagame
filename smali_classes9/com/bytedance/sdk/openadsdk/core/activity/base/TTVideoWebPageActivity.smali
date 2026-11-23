.class public Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;
.super Lcom/byazt/cty/BaseLandingPageActivity;
.source "SourceFile"


# instance fields
.field private aw:J

.field private b:Z

.field private bm:I

.field private bx:Landroid/widget/RelativeLayout;

.field private hd:I

.field private ic:I

.field private final kk:Lcom/byazt/fn/ve;

.field private kp:Z

.field private l:Landroid/widget/RelativeLayout;

.field private lo:Landroid/widget/TextView;

.field private lr:I

.field private lt:Landroid/widget/TextView;

.field protected nb:Lcom/byazt/un/NativeVideoTsView;

.field protected pf:Lcom/byazt/dh/ve;

.field private pu:Lcom/byazt/ff/RoundImageView;

.field private q:I

.field private sv:Landroid/widget/FrameLayout;

.field private final tk:Lcom/byazt/dh/ve$tt;

.field private to:Z

.field private tx:Lcom/byazt/ua/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->ic:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->hd:I

    .line 8
    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bm:I

    .line 10
    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lr:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->to:Z

    .line 14
    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tk:Lcom/byazt/dh/ve$tt;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kp:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->b:Z

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kk:Lcom/byazt/fn/ve;

    .line 33
    .line 34
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->ic:I

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->hd:I

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bx:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private c(Lcom/byazt/dh/ve;)V
    .locals 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initFeedNaitiveControllerData-isComplete="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/byazt/dh/ve;->gt()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalPlayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->yp()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/byazt/dh/ve;->t()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mutilproces"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "sp_multi_native_video_data"

    .line 28
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "key_video_is_update_flag"

    const/4 v2, 0x1

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    const-string v1, "key_video_isfromvideodetailpage"

    .line 30
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    const-string v1, "key_native_video_complete"

    .line 31
    invoke-interface {p1}, Lcom/byazt/dh/ve;->gt()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    const-string v1, "key_video_current_play_position"

    .line 32
    invoke-interface {p1}, Lcom/byazt/dh/ve;->sl()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 33
    invoke-interface {p1}, Lcom/byazt/dh/ve;->yp()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/byazt/dh/ve;->t()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-string v3, "key_video_total_play_duration"

    invoke-interface {v0, v3, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    const-string v1, "key_video_duration"

    .line 34
    invoke-interface {p1}, Lcom/byazt/dh/ve;->yp()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->to:Z

    return p1
.end method

.method private gt()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zm:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->isShow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_1
    return v1
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->rl()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    :goto_0
    return-wide v0
.end method

.method private my()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->hd:I

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->q:I

    return p1
.end method

.method private nu()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/dh/ve;->z()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private rh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->l:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string v0, ""

    .line 78
    .line 79
    :goto_0
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pu:Lcom/byazt/ff/RoundImageView;

    .line 94
    .line 95
    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lo:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-static {v4, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pu:Lcom/byazt/ff/RoundImageView;

    .line 108
    .line 109
    invoke-interface {v1, v3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pu:Lcom/byazt/ff/RoundImageView;

    .line 120
    .line 121
    invoke-static {v3, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lo:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lo:Landroid/widget/TextView;

    .line 130
    .line 131
    const/4 v3, 0x1

    .line 132
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lt:Landroid/widget/TextView;

    .line 140
    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lt:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_7

    .line 165
    .line 166
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lt:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->rl()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    .line 189
    .line 190
    const/16 v1, 0x8

    .line 191
    .line 192
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    .line 197
    .line 198
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 199
    .line 200
    .line 201
    :cond_9
    :goto_2
    return-void
.end method

.method private rl()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->kz()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    iget v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    .line 22
    .line 23
    if-ne v3, v2, :cond_3

    .line 24
    .line 25
    const-string v3, "embeded_ad_landingpage"

    .line 26
    .line 27
    iget-object v4, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    return v1
.end method

.method static synthetic sp(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->q:I

    return p0
.end method

.method static synthetic tt(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->ic:I

    return p1
.end method

.method static synthetic tt(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sv:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic uj(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lr:I

    return p0
.end method

.method static synthetic uj(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lr:I

    return p1
.end method

.method static synthetic ve(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bm:I

    return p0
.end method

.method static synthetic ve(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bm:I

    return p1
.end method

.method static synthetic x(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    move-result p0

    return p0
.end method

.method private z()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    instance-of v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoScrollWebPageActivity;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/byazt/un/NativeVideoTsView;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :goto_0
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-direct {v1, v3, v4, v2, v2}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZ)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    new-instance v1, Lcom/byazt/un/NativeVideoTsView;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_1
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 54
    .line 55
    invoke-direct {v1, v3, v4, v2, v0}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZ)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 59
    .line 60
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1, v0}, Lcom/byazt/dh/ve;->c(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    .line 88
    .line 89
    iget-boolean v3, v3, Lcom/byazt/ua/c;->c:Z

    .line 90
    .line 91
    invoke-interface {v1, v3}, Lcom/byazt/dh/ve;->ve(Z)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 95
    .line 96
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$4;

    .line 97
    .line 98
    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gt:Z

    .line 105
    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    const-wide/16 v3, 0x0

    .line 109
    .line 110
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    .line 111
    .line 112
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    .line 131
    .line 132
    iget-wide v3, v3, Lcom/byazt/ua/c;->sp:J

    .line 133
    .line 134
    invoke-interface {v1, v3, v4}, Lcom/byazt/dh/ve;->ve(J)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    .line 144
    .line 145
    iget-wide v3, v3, Lcom/byazt/ua/c;->n:J

    .line 146
    .line 147
    invoke-interface {v1, v3, v4}, Lcom/byazt/dh/ve;->uj(J)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1, v0}, Lcom/byazt/dh/ve;->c(Z)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tk:Lcom/byazt/dh/ve$tt;

    .line 174
    .line 175
    invoke-interface {v1, v3}, Lcom/byazt/dh/ve;->c(Lcom/byazt/dh/ve$tt;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ab()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-ne v3, v2, :cond_6

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    const/4 v3, 0x0

    .line 191
    :goto_3
    invoke-virtual {v1, v3}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    .line 192
    .line 193
    .line 194
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 195
    .line 196
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    .line 197
    .line 198
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->b:Z

    .line 199
    .line 200
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_8

    .line 209
    .line 210
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sv:Landroid/widget/FrameLayout;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sv:Landroid/widget/FrameLayout;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sv:Landroid/widget/FrameLayout;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 223
    .line 224
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Lcom/byazt/un/NativeVideoTsView;->uj(Z)V

    .line 236
    .line 237
    .line 238
    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :catch_0
    move-exception v1

    .line 248
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_4
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_a

    .line 262
    .line 263
    :try_start_1
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 264
    .line 265
    const-string v2, "\"\u65e0\u7f51\u7edc\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\""

    .line 266
    .line 267
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    .line 269
    .line 270
    :catch_1
    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sl()V

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->z()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 7

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->q:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "video_play_position"

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 8
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    :cond_0
    const-string v4, "multi_process_data"

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/byazt/ua/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ua/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->tx:Lcom/byazt/ua/c;

    if-eqz v0, :cond_1

    .line 12
    iget-wide v4, v0, Lcom/byazt/ua/c;->sp:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "material_meta"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-nez v4, :cond_2

    .line 15
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    nop

    .line 16
    :cond_2
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    .line 17
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 8

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 20
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/dh/ve;->t()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 21
    invoke-virtual {v3}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v3

    invoke-interface {v3}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v3

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;JLcom/byazt/fk/sp;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 23
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    const-string v2, "embeded_ad"

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->m()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nu()I

    move-result v6

    move-object v3, p1

    .line 25
    invoke-static/range {v1 .. v7}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    return-void
.end method

.method public n()V
    .locals 3

    const v0, 0x7e06ffd2

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTProgressBar;

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gr:Lcom/byazt/ff/TTProgressBar;

    const v0, 0x7e06ff15

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    const v0, 0x7e06fff4

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->i:Lcom/byazt/lbn/TTViewStub;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/cty/BaseLandingPageActivity;->c(Lcom/byazt/dyf/tt$c;Z)V

    const v0, 0x7e06fefc

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->sv:Landroid/widget/FrameLayout;

    const v0, 0x7e06ffe7

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bx:Landroid/widget/RelativeLayout;

    const v0, 0x7e06fec7

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7e06fff5

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lo:Landroid/widget/TextView;

    const v0, 0x7e06ff34

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->lt:Landroid/widget/TextView;

    const v0, 0x7e06fee6

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    const v0, 0x7e06fed0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/RoundImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pu:Lcom/byazt/ff/RoundImageView;

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->rh()V

    .line 15
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->tt()V

    .line 16
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bx:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->bx:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Lcom/byazt/cty/BaseLandingPageActivity;->c(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->t()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/byazt/dh/ve;->da()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 35
    .line 36
    :cond_1
    iput-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kp:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->gt()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kp:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/byazt/dh/ve;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "onPause throw Exception :"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "BaseLandingPageActivity"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Lcom/byazt/dh/ve;->gt()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    :cond_1
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_1
    const-string v2, "sp_multi_native_video_data"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "key_video_is_update_flag"

    .line 92
    .line 93
    invoke-interface {v1, v2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    const-string v2, "key_native_video_complete"

    .line 97
    .line 98
    invoke-interface {v1, v2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    const-string v2, "key_video_isfromvideodetailpage"

    .line 102
    .line 103
    invoke-interface {v1, v2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->c(Lcom/byazt/dh/ve;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->b:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kp:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->yp()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->gt()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kp:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/byazt/dh/ve;->x()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    const-string v1, "material_meta"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    .line 28
    .line 29
    const-string v2, "video_play_position"

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    const-string v0, "is_complete"

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->my()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->aw:J

    .line 44
    .line 45
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/byazt/dh/ve;->sl()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    :cond_2
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method protected sl()V
    .locals 2

    .line 1
    const-string v0, "device_info_new"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kk:Lcom/byazt/fn/ve;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->registerNetworkMonitor(Lcom/byazt/fn/ve;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public sp()Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/vfu/a;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected t()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "device_info_new"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->kk:Lcom/byazt/fn/ve;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->removeNetworkMonitor(Lcom/byazt/fn/ve;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method

.method u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method protected x()Z
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->to:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->nb:Lcom/byazt/un/NativeVideoTsView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/dh/c;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3}, Lcom/byazt/dh/c;->n(Lcom/byazt/dh/tt;Landroid/view/View;)V

    .line 5
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->to:Z

    return v1

    :cond_1
    const-string v0, "detail_back"

    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->c(Ljava/lang/String;)V

    return v2
.end method

.method protected yp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;->pf:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method
