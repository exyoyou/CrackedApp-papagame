.class public Lcom/join/mgps/activity/TagAddActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00ac
.end annotation


# instance fields
.field autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/f1;

.field dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

.field et_tag:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fl_tag_all:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fl_tag_my:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLogin:Z

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lv_auto_search:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field netConnectExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field nsv_view:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/impl/i;

.field searchKey:Ljava/lang/String;

.field searchRunner:Ljava/lang/Runnable;

.field tagList:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

.field tagSearchWatcher:Landroid/text/TextWatcher;

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_tag_add:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->searchKey:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->isLogin:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$d;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$d;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->tagSearchWatcher:Landroid/text/TextWatcher;

    .line 27
    .line 28
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$e;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$e;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->searchRunner:Ljava/lang/Runnable;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->setListViewHeightBasedOnChildren()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->showConfirmDialog(Lcom/join/mgps/dto/GameTagsBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameTag",
            "fl_tag_view",
            "isUserTag"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d04b5

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
    const v3, 0x7f0a0a42

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/ImageView;

    .line 32
    .line 33
    const v4, 0x7f0a0f31

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->isShowDelete()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/16 v7, 0x8

    .line 53
    .line 54
    const-string v8, "#A4B5C7"

    .line 55
    .line 56
    const v9, 0x7f0810e3

    .line 57
    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getVoteFlag()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_1

    .line 84
    .line 85
    const v6, 0x7f0810f6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    const-string v4, "#555555"

    .line 92
    .line 93
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    const v4, 0x7f080806

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    new-instance v4, Lcom/join/mgps/activity/TagAddActivity$f;

    .line 110
    .line 111
    invoke-direct {v4, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$f;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    new-instance v3, Lcom/join/mgps/activity/TagAddActivity$g;

    .line 132
    .line 133
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$g;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v6, 0x2

    .line 149
    if-eq v4, v6, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const/4 v6, 0x3

    .line 160
    if-ne v4, v6, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    const v4, 0x7f080895

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Lcom/join/mgps/activity/TagAddActivity$h;

    .line 173
    .line 174
    invoke-direct {v4, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$h;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    const v4, 0x7f08081a

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    new-instance v2, Lcom/join/mgps/activity/TagAddActivity$i;

    .line 195
    .line 196
    invoke-direct {v2, p0, p3, p1}, Lcom/join/mgps/activity/TagAddActivity$i;-><init>(Lcom/join/mgps/activity/TagAddActivity;ZLcom/join/mgps/dto/GameTagsBean;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private setListViewHeightBasedOnChildren()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v6, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 21
    .line 22
    invoke-interface {v0, v3, v5, v6}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v4, v5

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    mul-int v2, v2, v0

    .line 56
    .line 57
    add-int/2addr v4, v2

    .line 58
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private showConfirmDialog(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameTag"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    const v1, 0x7f13000d

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\u662f\u5426\u8981\u5220\u9664\""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\"\u6807\u7b7e"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$j;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/TagAddActivity$j;-><init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "\u4ecd\u8981\u5220\u9664"

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    .line 54
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity$a;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity$a;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "\u53d6\u6d88"

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->dialogConfirm:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method accountChange(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method addUserCustomGameTag(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->hideKeyboard()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingDialog()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setTagName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestAddUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/rpc/impl/i;->n0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0xc8

    .line 62
    .line 63
    if-ne v0, v1, :cond_0

    .line 64
    .line 65
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "\u6807\u7b7e\u6dfb\u52a0\u6210\u529f"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->clearEtTag()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "\u6807\u7b7e\u6dfb\u52a0\u5931\u8d25"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void
.end method

.method afterViews()V
    .locals 4
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
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->title_textview:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->title_textview:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v2, 0x7f07133d

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v3, 0x7f071395

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    float-to-int v1, v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_my:Lcom/join/mgps/customview/FlowLayout;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    float-to-int v1, v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_my:Lcom/join/mgps/customview/FlowLayout;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    float-to-int v1, v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->isLogin:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLoding()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->tagSearchWatcher:Landroid/text/TextWatcher;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 120
    .line 121
    if-nez v0, :cond_0

    .line 122
    .line 123
    new-instance v0, Lcom/join/mgps/activity/TagAddActivity$b;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagAddActivity$b;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->lv_auto_search:Landroid/widget/ListView;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->setListViewHeightBasedOnChildren()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 139
    .line 140
    new-instance v1, Lcom/join/mgps/activity/TagAddActivity$c;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagAddActivity$c;-><init>(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 146
    .line 147
    .line 148
    :cond_0
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method clearEtTag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method deleteUserCustomGameTag(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u81ea\u5b9a\u4e49\u6e38\u620f\u6807\u7b7e\u5220\u9664\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setTagId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingDialog()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/i;->M(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0xc8

    .line 68
    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "\u81ea\u5b9a\u4e49\u6e38\u620f\u6807\u7b7e\u5220\u9664\u6210\u529f"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method

.method deleteUserCustomTag(Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u5e38\u7528\u6807\u7b7e\u5220\u9664\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setTagId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setGameId(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestDeleteUserCustomTag;->setUid(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingDialog()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/i;->q(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0xc8

    .line 68
    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "\u5e38\u7528\u6807\u7b7e\u5220\u9664\u6210\u529f"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->dismissLodingDialog()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method

.method dismissLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->searchRunner:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method getAutoSearchList(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setSearchWord(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setGameId(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;->setUid(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Lcom/join/mgps/rpc/impl/i;->j0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/TagAddActivity;->updateSearchUi(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->netConnectExcption:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->updateSearchUi(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->updateSearchUi(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->netExcption:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
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
    iget-object v2, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->rpcGameClient:Lcom/join/mgps/rpc/impl/i;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->hideLoding()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->showMain(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    throw v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLodingFailed()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method hideKeyboard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input_method"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method hideLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_faile:Landroid/widget/LinearLayout;

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

.method onCLickAddUserCustomGameTag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ed1
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u8bf7\u8f93\u5165\u6e38\u620f\u65b0\u6807\u7b7e\uff01"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->setListViewHeightBasedOnChildren()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/TagAddActivity;->addUserCustomGameTag(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/TagAddActivity;->isLogin:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagAddActivity;->getListData()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->nsv_view:Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 5
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
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->tagList:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_my:Lcom/join/mgps/customview/FlowLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->nsv_view:Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getGameTags()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/join/mgps/dto/GameTagsBean;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "7"

    .line 53
    .line 54
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameTagsBean;->getVoteFlag()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_all:Lcom/join/mgps/customview/FlowLayout;

    .line 72
    .line 73
    invoke-direct {p0, v2, v3, v1}, Lcom/join/mgps/activity/TagAddActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/ListUserCustomGameTagBean;->getPersonalTags()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->fl_tag_my:Lcom/join/mgps/customview/FlowLayout;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/TagAddActivity;->createAndAddTag(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method

.method tagReport()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1a0f
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/TagReportActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/TagReportActivity_$m;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->tagList:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/TagReportActivity_$m;->b(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)Lcom/join/mgps/activity/TagReportActivity_$m;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity;->gameId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/TagReportActivity_$m;->a(Ljava/lang/String;)Lcom/join/mgps/activity/TagReportActivity_$m;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method updateSearchUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchAutoDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/TagAddActivity;->setListViewHeightBasedOnChildren()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
