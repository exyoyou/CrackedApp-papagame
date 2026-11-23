.class Lcom/join/mgps/activity/s2$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$statuHVIew",
            "val$tab_bar_corner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/s2$k;->a:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/s2$k;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3
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
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 6
    .line 7
    iget v0, p2, Lcom/join/mgps/activity/s2;->R1:I

    .line 8
    .line 9
    iget v1, p2, Lcom/join/mgps/activity/s2;->V1:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ge p1, v0, :cond_3

    .line 16
    .line 17
    iget-object p1, p2, Lcom/join/mgps/activity/s2;->h:Landroid/view/View;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 31
    .line 32
    iget p2, p0, Lcom/join/mgps/activity/s2$k;->b:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_right(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 40
    .line 41
    iget p2, p0, Lcom/join/mgps/activity/s2$k;->b:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_left(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->s:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->t:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->r:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->X:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->X(Lcom/join/mgps/activity/s2;)Lcom/join/android/app/common/manager/b;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->X(Lcom/join/mgps/activity/s2;)Lcom/join/android/app/common/manager/b;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const p2, 0x7f060080

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 102
    .line 103
    iget-object p2, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 104
    .line 105
    if-eqz p2, :cond_2

    .line 106
    .line 107
    iget-boolean p1, p1, Lcom/join/mgps/activity/s2;->V2:Z

    .line 108
    .line 109
    if-nez p1, :cond_2

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const/4 p2, 0x5

    .line 116
    if-ne p1, p2, :cond_2

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 133
    .line 134
    .line 135
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->a:Landroid/view/View;

    .line 136
    .line 137
    const/4 p2, 0x4

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_right(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_left(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->U:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->r:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->s:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->t:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->X:Landroid/widget/RelativeLayout;

    .line 188
    .line 189
    const/4 p2, -0x1

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    const/4 p2, 0x2

    .line 214
    if-ne p1, p2, :cond_4

    .line 215
    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v0, "currentState="

    .line 222
    .line 223
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p1, " -->performClick"

    .line 230
    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 235
    .line 236
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 239
    .line 240
    .line 241
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 242
    .line 243
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->X(Lcom/join/mgps/activity/s2;)Lcom/join/android/app/common/manager/b;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-eqz p1, :cond_5

    .line 248
    .line 249
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->c:Lcom/join/mgps/activity/s2;

    .line 250
    .line 251
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->X(Lcom/join/mgps/activity/s2;)Lcom/join/android/app/common/manager/b;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const p2, 0x7f06007b

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 259
    .line 260
    .line 261
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/s2$k;->a:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :goto_1
    return-void
.end method
