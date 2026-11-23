.class public Lcom/join/mgps/ad/union/channel/tbid/b;
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
.field private static final t:Ljava/lang/String; = "b"


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

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Button;


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
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->b:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->i:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->j:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/ad/union/channel/tbid/b;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->k:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
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
    iput-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->a:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->b:Ljava/util/Map;

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
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eq p2, v0, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const v0, 0x7f0d0776

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f0d0777

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    move-object v0, p1

    .line 58
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->b:Ljava/util/Map;

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctaText"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->s:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->s:Landroid/widget/Button;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->s:Landroid/widget/Button;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
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
    const v0, 0x7f0a092c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const v0, 0x7f0a033b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->d:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v0, 0x7f0a033a

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->e:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    const v0, 0x7f0a0a32

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/ImageView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->f:Landroid/widget/ImageView;

    .line 61
    .line 62
    const v0, 0x7f0a172b

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->g:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a1b6c

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->h:Landroid/view/View;

    .line 81
    .line 82
    const v0, 0x7f0a02b2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/Button;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->i:Landroid/widget/Button;

    .line 92
    .line 93
    const v0, 0x7f0a02b1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/Button;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->j:Landroid/widget/Button;

    .line 103
    .line 104
    const v0, 0x7f0a02cd

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/Button;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->k:Landroid/widget/Button;

    .line 114
    .line 115
    const v0, 0x7f0a1020

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/FrameLayout;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->l:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    const v0, 0x7f0a0932

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 136
    .line 137
    const v0, 0x7f0a10e3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/LinearLayout;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->n:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    const v0, 0x7f0a08fb

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->o:Landroid/widget/ImageView;

    .line 158
    .line 159
    const v0, 0x7f0a08fc

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .line 168
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->p:Landroid/widget/ImageView;

    .line 169
    .line 170
    const v0, 0x7f0a08fd

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/ImageView;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->q:Landroid/widget/ImageView;

    .line 180
    .line 181
    const v0, 0x7f0a1735

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/widget/TextView;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->r:Landroid/widget/TextView;

    .line 191
    .line 192
    const v0, 0x7f0a0291

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/widget/Button;

    .line 200
    .line 201
    iput-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->s:Landroid/widget/Button;

    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    const/4 v1, 0x0

    .line 212
    if-nez v0, :cond_0

    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_1

    .line 237
    .line 238
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->r:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->r:Landroid/widget/TextView;

    .line 249
    .line 250
    const-string v2, "\u70b9\u5f00\u6709\u60ca\u559c"

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    :goto_0
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_2

    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->g:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->g:Landroid/widget/TextView;

    .line 276
    .line 277
    const-string v2, "\u542c\u8bf4\u70b9\u5f00\u5b83\u7684\u4eba\u90fd\u4ea4\u4e86\u597d\u8fd0!"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    :goto_1
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const/16 v2, 0x8

    .line 287
    .line 288
    if-eqz v0, :cond_3

    .line 289
    .line 290
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->d:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->d:Landroid/widget/ImageView;

    .line 296
    .line 297
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->d:Landroid/widget/ImageView;

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    :goto_2
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdChoice()Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_4

    .line 315
    .line 316
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->e:Landroid/widget/RelativeLayout;

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->e:Landroid/widget/RelativeLayout;

    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->e:Landroid/widget/RelativeLayout;

    .line 327
    .line 328
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdChoice()Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->e:Landroid/widget/RelativeLayout;

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    new-instance v7, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->s:Landroid/widget/Button;

    .line 355
    .line 356
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    new-instance v0, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v4, "patternType:"

    .line 374
    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const/4 v3, 0x1

    .line 382
    if-eq v9, v3, :cond_6

    .line 383
    .line 384
    const/4 v3, 0x2

    .line 385
    if-ne v9, v3, :cond_5

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_5
    const/4 v3, 0x3

    .line 389
    if-ne v9, v3, :cond_7

    .line 390
    .line 391
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->n:Landroid/widget/LinearLayout;

    .line 392
    .line 393
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 397
    .line 398
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->h:Landroid/view/View;

    .line 402
    .line 403
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->l:Landroid/widget/FrameLayout;

    .line 407
    .line 408
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->n:Landroid/widget/LinearLayout;

    .line 412
    .line 413
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->o:Landroid/widget/ImageView;

    .line 417
    .line 418
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->p:Landroid/widget/ImageView;

    .line 422
    .line 423
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->q:Landroid/widget/ImageView;

    .line 427
    .line 428
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 433
    .line 434
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->h:Landroid/view/View;

    .line 438
    .line 439
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .line 441
    .line 442
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->n:Landroid/widget/LinearLayout;

    .line 443
    .line 444
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->l:Landroid/widget/FrameLayout;

    .line 448
    .line 449
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 453
    .line 454
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    iget-object v3, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 458
    .line 459
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    :cond_7
    :goto_5
    iget-object v4, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->a:Landroid/content/Context;

    .line 463
    .line 464
    iget-object v8, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->f:Landroid/widget/ImageView;

    .line 465
    .line 466
    move-object v3, p2

    .line 467
    move-object v5, p1

    .line 468
    invoke-virtual/range {v3 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-nez p1, :cond_8

    .line 476
    .line 477
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->a:Landroid/content/Context;

    .line 478
    .line 479
    invoke-virtual {p2, p1, v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindImageViews(Landroid/content/Context;Ljava/util/List;I)V

    .line 480
    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_8
    const/4 p1, 0x4

    .line 484
    if-ne v9, p1, :cond_9

    .line 485
    .line 486
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->m:Landroid/widget/ImageView;

    .line 487
    .line 488
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->n:Landroid/widget/LinearLayout;

    .line 492
    .line 493
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->l:Landroid/widget/FrameLayout;

    .line 497
    .line 498
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->a:Landroid/content/Context;

    .line 502
    .line 503
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->l:Landroid/widget/FrameLayout;

    .line 504
    .line 505
    invoke-virtual {p2, p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 506
    .line 507
    .line 508
    iget-object p1, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->h:Landroid/view/View;

    .line 509
    .line 510
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    new-instance p1, Lcom/join/mgps/ad/union/channel/tbid/b$a;

    .line 514
    .line 515
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/ad/union/channel/tbid/b$a;-><init>(Lcom/join/mgps/ad/union/channel/tbid/b;Lcom/windmill/sdk/natives/WMNativeAdData;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->i:Landroid/widget/Button;

    .line 519
    .line 520
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    .line 522
    .line 523
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->j:Landroid/widget/Button;

    .line 524
    .line 525
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    iget-object v0, p0, Lcom/join/mgps/ad/union/channel/tbid/b;->k:Landroid/widget/Button;

    .line 529
    .line 530
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    .line 532
    .line 533
    :cond_9
    :goto_6
    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCTAText()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    const-string v0, "ctaText:"

    .line 543
    .line 544
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0, p1}, Lcom/join/mgps/ad/union/channel/tbid/b;->d(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    return-void
.end method
