.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0xc8

    .line 23
    .line 24
    if-ne v3, v4, :cond_3

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getScreening_condition()Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iput-object v4, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getSort_type()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 59
    .line 60
    invoke-direct {v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setId(I)V

    .line 64
    .line 65
    .line 66
    const-string v5, "\u5168\u90e8\u6e38\u620f"

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setTitle(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v6, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 75
    .line 76
    iget-object v6, v6, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_class()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-interface {v6, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 86
    .line 87
    invoke-direct {v3}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setId(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setTitle(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->setIsselected(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 100
    .line 101
    iget-object v5, v5, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;->getGame_type()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v5, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 115
    .line 116
    .line 117
    iget-object v3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 118
    .line 119
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getBanner()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const/4 v5, 0x0

    .line 129
    move-object v7, v5

    .line 130
    move-object v8, v7

    .line 131
    const/4 v6, 0x0

    .line 132
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-ge v6, v9, :cond_2

    .line 137
    .line 138
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Lcom/join/mgps/dto/BannerBean;

    .line 143
    .line 144
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    new-instance v11, Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    iget-object v12, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 151
    .line 152
    iget v12, v12, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 153
    .line 154
    invoke-direct {v11, v12}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v11}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 158
    .line 159
    .line 160
    iget-object v11, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 161
    .line 162
    iget-object v11, v11, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    const v12, 0x7f0d01ae

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    const v13, 0x7f0a0094

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    check-cast v14, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 183
    .line 184
    new-instance v15, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$1;

    .line 185
    .line 186
    invoke-direct {v15, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$1;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const v13, 0x7f071310

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    int-to-float v4, v4

    .line 212
    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const v4, 0x7f08018d

    .line 217
    .line 218
    .line 219
    invoke-static {v14, v4, v15, v1}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 223
    .line 224
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    if-nez v6, :cond_0

    .line 230
    .line 231
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 232
    .line 233
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    const v1, 0x7f0a0094

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 251
    .line 252
    new-instance v11, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;

    .line 253
    .line 254
    invoke-direct {v11, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    iget-object v10, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 265
    .line 266
    iget-object v10, v10, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 267
    .line 268
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    int-to-float v11, v11

    .line 277
    invoke-static {v10, v11}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-static {v1, v4, v9, v10}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 282
    .line 283
    .line 284
    const/4 v11, 0x1

    .line 285
    goto :goto_1

    .line 286
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    const/4 v11, 0x1

    .line 291
    sub-int/2addr v1, v11

    .line 292
    if-ne v6, v1, :cond_1

    .line 293
    .line 294
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 297
    .line 298
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v1, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    const v1, 0x7f0a0094

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 314
    .line 315
    new-instance v12, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$3;

    .line 316
    .line 317
    invoke-direct {v12, v0, v10}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$3;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    iget-object v10, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 328
    .line 329
    iget-object v10, v10, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    int-to-float v12, v12

    .line 340
    invoke-static {v10, v12}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-static {v1, v4, v9, v10}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 345
    .line 346
    .line 347
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 348
    .line 349
    const/4 v1, 0x0

    .line 350
    const/4 v4, 0x1

    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 354
    .line 355
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 356
    .line 357
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 361
    .line 362
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 363
    .line 364
    const/4 v3, 0x0

    .line 365
    invoke-interface {v1, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 369
    .line 370
    invoke-static {v1, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$400(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_3
    const/4 v3, 0x0

    .line 375
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 376
    .line 377
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    .line 378
    .line 379
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 383
    .line 384
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    .line 385
    .line 386
    const/16 v2, 0x8

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 392
    .line 393
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    return-void
.end method
