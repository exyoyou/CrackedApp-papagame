.class public Lcom/join/mgps/ad/union/channel/tbid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdRender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/windmill/sdk/natives/WMNativeAdRender<",
        "Lcom/windmill/sdk/natives/WMNativeAdData;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "a"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->b:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adPatternType"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "---------createView----------"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->a:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const v0, 0x7f0d0775

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->b:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/view/ViewGroup;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-object v0
.end method

.method public renderAdView(Landroid/view/View;Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "adData"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "renderAdView:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a172b

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->c:Landroid/widget/TextView;

    .line 28
    .line 29
    const v0, 0x7f0a1020

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->d:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    const v0, 0x7f0a0932

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 50
    .line 51
    const v0, 0x7f0a10e3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->f:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    const v0, 0x7f0a08fb

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->g:Landroid/widget/ImageView;

    .line 72
    .line 73
    const v0, 0x7f0a08fc

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->h:Landroid/widget/ImageView;

    .line 83
    .line 84
    const v0, 0x7f0a08fd

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->i:Landroid/widget/ImageView;

    .line 94
    .line 95
    const v0, 0x7f0a1735

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->j:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->j:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->j:Landroid/widget/TextView;

    .line 127
    .line 128
    const-string v1, "\u70b9\u5f00\u6709\u60ca\u559c"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->c:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->c:Landroid/widget/TextView;

    .line 154
    .line 155
    const-string v1, "\u542c\u8bf4\u70b9\u5f00\u5b83\u7684\u4eba\u90fd\u4ea4\u4e86\u597d\u8fd0!"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v3, "patternType:"

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    const/4 v8, 0x0

    .line 197
    const/16 v9, 0x8

    .line 198
    .line 199
    if-eq v1, v2, :cond_3

    .line 200
    .line 201
    const/4 v2, 0x2

    .line 202
    if-ne v1, v2, :cond_2

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_2
    const/4 v2, 0x3

    .line 206
    if-ne v1, v2, :cond_4

    .line 207
    .line 208
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->f:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 214
    .line 215
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->d:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->f:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->g:Landroid/widget/ImageView;

    .line 229
    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->h:Landroid/widget/ImageView;

    .line 234
    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->i:Landroid/widget/ImageView;

    .line 239
    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 245
    .line 246
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->f:Landroid/widget/LinearLayout;

    .line 250
    .line 251
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->d:Landroid/widget/FrameLayout;

    .line 255
    .line 256
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 265
    .line 266
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->a:Landroid/content/Context;

    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    move-object v2, p2

    .line 273
    move-object v4, p1

    .line 274
    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-nez p1, :cond_5

    .line 282
    .line 283
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->a:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {p2, p1, v0, v8}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_5
    const/4 p1, 0x4

    .line 290
    if-ne v1, p1, :cond_6

    .line 291
    .line 292
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->e:Landroid/widget/ImageView;

    .line 293
    .line 294
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->f:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->d:Landroid/widget/FrameLayout;

    .line 303
    .line 304
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->a:Landroid/content/Context;

    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/a;->d:Landroid/widget/FrameLayout;

    .line 310
    .line 311
    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 312
    .line 313
    .line 314
    :cond_6
    :goto_4
    return-void
.end method
