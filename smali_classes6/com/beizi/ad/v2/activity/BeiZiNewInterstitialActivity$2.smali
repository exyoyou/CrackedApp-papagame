.class Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    const-string v0, "BeiZisAd"

    .line 7
    .line 8
    const-string v1, "onPrepared: \u51c6\u5907\u5b8c\u6210"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->s(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/media/MediaPlayer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/media/MediaPlayer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/VideoView;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x3

    .line 58
    const/16 v2, 0x1a

    .line 59
    .line 60
    if-lez v0, :cond_1

    .line 61
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    if-lt v0, v2, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/media/MediaPlayer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-long v2, v2

    .line 79
    invoke-static {v0, v2, v3, v1}, Lcom/aggmoread/sdk/z/a/t/k;->a(Landroid/media/MediaPlayer;JI)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    if-lt v0, v2, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/media/MediaPlayer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-wide/16 v2, 0x2

    .line 94
    .line 95
    invoke-static {v0, v2, v3, v1}, Lcom/aggmoread/sdk/z/a/t/k;->a(Landroid/media/MediaPlayer;JI)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    if-ne v0, v1, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/VideoView;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-lez v0, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    div-int/lit16 p1, p1, 0x3e8

    .line 159
    .line 160
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/TextView;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/TextView;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;->a:Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    .line 202
    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-static {p1, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void
.end method
