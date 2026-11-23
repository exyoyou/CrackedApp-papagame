.class Lcom/join/mgps/activity/ModGameIndexActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendExpand:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->rvModGameRecommendShrink:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 49
    .line 50
    invoke-static {v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v3, v5

    .line 58
    :goto_2
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 59
    .line 60
    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v7, 0x1

    .line 69
    sub-int/2addr v5, v7

    .line 70
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 75
    .line 76
    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v4, v6

    .line 84
    :goto_3
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 85
    .line 86
    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    sub-int/2addr v5, v7

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 100
    .line 101
    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    sub-int/2addr v5, v7

    .line 110
    if-ne v4, v5, :cond_5

    .line 111
    .line 112
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 113
    .line 114
    invoke-static {v4}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    const/high16 v5, 0x42700000    # 60.0f

    .line 119
    .line 120
    const/high16 v6, 0x42c80000    # 100.0f

    .line 121
    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    sub-int/2addr v1, v7

    .line 137
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    new-instance v1, Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    int-to-float v1, v1

    .line 156
    mul-float v1, v1, v6

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    int-to-float v0, v0

    .line 163
    div-float/2addr v1, v0

    .line 164
    cmpl-float v0, v1, v5

    .line 165
    .line 166
    if-lez v0, :cond_5

    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    sub-int/2addr v0, v7

    .line 179
    move v3, v0

    .line 180
    goto :goto_4

    .line 181
    :cond_4
    if-eqz v1, :cond_5

    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    sub-int/2addr v0, v7

    .line 194
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    new-instance v1, Landroid/graphics/Rect;

    .line 201
    .line 202
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    int-to-float v1, v1

    .line 213
    mul-float v1, v1, v6

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    int-to-float v0, v0

    .line 220
    div-float/2addr v1, v0

    .line 221
    cmpl-float v0, v1, v5

    .line 222
    .line 223
    if-lez v0, :cond_5

    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    add-int/lit8 v3, v0, -0x1

    .line 236
    .line 237
    :cond_5
    :goto_4
    if-gt v2, v3, :cond_7

    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_6

    .line 256
    .line 257
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 258
    .line 259
    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-static {v1, v0, v2, v4}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$300(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/dto/CollectionBeanSub;IZ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v7}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$r;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$200(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_7
    return-void
.end method
