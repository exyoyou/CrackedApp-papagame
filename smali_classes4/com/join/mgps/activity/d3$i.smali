.class Lcom/join/mgps/activity/d3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d3;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/d3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "verticalOffset"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->I:Landroidx/appcompat/widget/Toolbar;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/d3;->R(Lcom/join/mgps/activity/d3;)I

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const v0, 0x7f0713ad

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-ge p1, p2, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->h:Landroid/view/View;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->t:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->u:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->s:Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->I:Landroidx/appcompat/widget/Toolbar;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/join/mgps/activity/d3;->S(Lcom/join/mgps/activity/d3;)Lcom/join/android/app/common/manager/b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/join/mgps/activity/d3;->S(Lcom/join/mgps/activity/d3;)Lcom/join/android/app/common/manager/b;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const p2, 0x7f060080

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 104
    .line 105
    iget-object p2, p1, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 106
    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    iget-boolean p1, p1, Lcom/join/mgps/activity/d3;->I2:Z

    .line 110
    .line 111
    if-nez p1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p2, 0x5

    .line 118
    if-ne p1, p2, :cond_2

    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->R:Landroid/view/View;

    .line 130
    .line 131
    const/4 p2, 0x4

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->s:Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->t:Landroid/widget/RelativeLayout;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->u:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->I:Landroidx/appcompat/widget/Toolbar;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/16 p2, 0xff

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 173
    .line 174
    if-nez p1, :cond_4

    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    const/4 p2, 0x2

    .line 182
    if-ne p1, p2, :cond_5

    .line 183
    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v0, "currentState="

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, " -->performClick"

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 207
    .line 208
    .line 209
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/join/mgps/activity/d3;->S(Lcom/join/mgps/activity/d3;)Lcom/join/android/app/common/manager/b;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 218
    .line 219
    invoke-static {p1}, Lcom/join/mgps/activity/d3;->S(Lcom/join/mgps/activity/d3;)Lcom/join/android/app/common/manager/b;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const p2, 0x7f06007b

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 227
    .line 228
    .line 229
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/d3$i;->a:Lcom/join/mgps/activity/d3;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/join/mgps/activity/d3;->R:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :goto_1
    return-void
.end method
