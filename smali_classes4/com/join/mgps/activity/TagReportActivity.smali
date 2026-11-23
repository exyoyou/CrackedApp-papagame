.class public Lcom/join/mgps/activity/TagReportActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00ad
.end annotation


# instance fields
.field btn_commit:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/f1;

.field et_reason_text:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fl_tag_all:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lv_reasons:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
            "Lcom/join/mgps/dto/TagReportReasonBean;",
            ">;"
        }
    .end annotation
.end field

.field reasonTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTagsBean;",
            ">;"
        }
    .end annotation
.end field

.field reasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TagReportReasonBean;",
            ">;"
        }
    .end annotation
.end field

.field reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/impl/i;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/TagReportActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameTag",
            "fl_tag_view"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d04b4

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0a1a48

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    .line 24
    const v3, 0x7f0a0f41

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    const v4, 0x7f081112

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const v4, 0x7f0810f6

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    const-string v3, "#FFA047"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string v3, "#555555"

    .line 66
    .line 67
    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/join/mgps/activity/TagReportActivity$c;

    .line 75
    .line 76
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/TagReportActivity$c;-><init>(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->title_textview:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "\u4e3e\u62a5\u6807\u7b7e"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->title_textview:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 35
    .line 36
    new-instance v2, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 37
    .line 38
    const-string v3, "\u6807\u7b7e\u4e0d\u9002\u5408\u6b64\u6e38\u620f"

    .line 39
    .line 40
    invoke-direct {v2, v1, v3}, Lcom/join/mgps/dto/TagReportReasonBean;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 49
    .line 50
    const-string v2, "\u5176\u4ed6"

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-direct {v1, v3, v2}, Lcom/join/mgps/dto/TagReportReasonBean;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const v2, 0x7f07133d

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    float-to-int v1, v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const v2, 0x7f071395

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    float-to-int v1, v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 94
    .line 95
    if-nez v0, :cond_0

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLoding()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->getListData()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->hideLoding()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const/4 v2, 0x3

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eq v4, v3, :cond_2

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-ne v4, v2, :cond_1

    .line 158
    .line 159
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eq v4, v3, :cond_5

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-ne v4, v2, :cond_4

    .line 206
    .line 207
    :cond_5
    iget-object v4, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 230
    .line 231
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 232
    .line 233
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/TagReportActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 238
    .line 239
    if-nez v0, :cond_8

    .line 240
    .line 241
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity$a;

    .line 242
    .line 243
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity$a;-><init>(Lcom/join/mgps/activity/TagReportActivity;)V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->lv_reasons:Landroid/widget/ListView;

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 254
    .line 255
    new-instance v1, Lcom/join/mgps/activity/TagReportActivity$b;

    .line 256
    .line 257
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagReportActivity$b;-><init>(Lcom/join/mgps/activity/TagReportActivity;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 264
    .line 265
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method dismissLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getListData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setUid(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->gameId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;->setGameId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Lcom/join/mgps/rpc/impl/i;->x0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagReportActivity;->showMain(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    throw v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method hideLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method onCommit()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a028d
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameTagsBean;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u60f3\u8981\u6295\u8bc9\u7684\u6807\u7b7e"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->reasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TagReportReasonBean;

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/TagReportReasonBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    :cond_4
    if-nez v2, :cond_5

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u4e3e\u62a5\u539f\u56e0"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/TagReportReasonBean;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->et_reason_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u4e3e\u62a5\u8bf4\u660e"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_6
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/TagReportReasonBean;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/TagReportActivity;->onCommit(Ljava/lang/String;I)V

    return-void
.end method

.method onCommit(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagName",
            "feedType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingDialog()V

    .line 13
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v1, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setFeedbackUid(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/TagReportActivity;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setGameId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setTagName(Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setFeedbackType(Ljava/lang/Integer;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->et_reason_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setReason(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->et_reason_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;->setReason(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/rpc/impl/i;->W(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p1

    const-string p2, "\u4e3e\u62a5\u6807\u7b7e\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->dismissLodingDialog()V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 28
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p1

    const-string p2, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->dismissLodingDialog()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->dismissLodingDialog()V

    .line 32
    throw p1

    .line 33
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p1

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->getListData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method showLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->hideLoding()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x3

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eq v3, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ne v2, v1, :cond_1

    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->reportTags:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eq v3, v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ne v3, v1, :cond_4

    .line 103
    .line 104
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity;->reasonTags:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 129
    .line 130
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/TagReportActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_7
    return-void
.end method
