.class Lcom/join/mgps/activity/b3$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$collHeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/b3$k;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/join/mgps/activity/b3$k;->a:I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ge p1, p2, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->h:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->s:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->t:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->r:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->H:Landroidx/appcompat/widget/Toolbar;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 58
    .line 59
    iget-object p2, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    iget-boolean p1, p1, Lcom/join/mgps/activity/b3;->M2:Z

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 p2, 0x5

    .line 72
    if-ne p1, p2, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Y(Lcom/join/mgps/activity/b3;)Lcom/join/android/app/common/manager/b;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Y(Lcom/join/mgps/activity/b3;)Lcom/join/android/app/common/manager/b;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const p2, 0x7f060080

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->O:Landroid/view/View;

    .line 114
    .line 115
    const/4 p2, 0x4

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->r:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->s:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->t:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 142
    .line 143
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->H:Landroidx/appcompat/widget/Toolbar;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/16 p2, 0xff

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    const/4 p2, 0x2

    .line 175
    if-ne p1, p2, :cond_4

    .line 176
    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v0, "currentState="

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p1, " -->performClick"

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i:Lcom/join/android/app/component/video/StandardVideoView;

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 200
    .line 201
    .line 202
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 203
    .line 204
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Y(Lcom/join/mgps/activity/b3;)Lcom/join/android/app/common/manager/b;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Y(Lcom/join/mgps/activity/b3;)Lcom/join/android/app/common/manager/b;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const p2, 0x7f06007b

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 220
    .line 221
    .line 222
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/b3$k;->b:Lcom/join/mgps/activity/b3;

    .line 223
    .line 224
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->O:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :goto_1
    return-void
.end method
