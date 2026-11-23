.class public Lcom/join/mgps/activity/GameAndProfileActivity;
.super Lcom/join/mgps/activity/MyFragmentActivity1;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0058
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field build:Lcom/join/mgps/fragment/l3;

.field context:Landroid/content/Context;

.field iv_back:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field post:Lcom/join/mgps/fragment/GmaeFormPostFragment;

.field sub:Lcom/join/mgps/fragment/u3;

.field tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_back:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_buildGmae:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field type:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field uid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->type:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->uid:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method AfterView()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/MApplication;->W:Z

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/adapter/h0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    new-instance v3, Lcom/join/mgps/fragment/GmaeFormPostFragment_;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/join/mgps/fragment/GmaeFormPostFragment_;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->post:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 38
    .line 39
    new-instance v3, Lcom/join/mgps/fragment/v3;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/join/mgps/fragment/v3;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->sub:Lcom/join/mgps/fragment/u3;

    .line 45
    .line 46
    new-instance v3, Lcom/join/mgps/fragment/m3;

    .line 47
    .line 48
    invoke-direct {v3}, Lcom/join/mgps/fragment/m3;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->build:Lcom/join/mgps/fragment/l3;

    .line 52
    .line 53
    new-instance v3, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "uid"

    .line 59
    .line 60
    iget v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->uid:I

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->post:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->sub:Lcom/join/mgps/fragment/u3;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->build:Lcom/join/mgps/fragment/l3;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/join/mgps/adapter/h0$a;

    .line 81
    .line 82
    const-string v4, "\u521b\u5efa"

    .line 83
    .line 84
    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->build:Lcom/join/mgps/fragment/l3;

    .line 85
    .line 86
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 90
    .line 91
    const-string v5, "\u8ba2\u9605"

    .line 92
    .line 93
    iget-object v6, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->sub:Lcom/join/mgps/fragment/u3;

    .line 94
    .line 95
    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Lcom/join/mgps/adapter/h0$a;

    .line 99
    .line 100
    const-string v6, "\u5e16\u5b50"

    .line 101
    .line 102
    iget-object v7, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->post:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 103
    .line 104
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 105
    .line 106
    .line 107
    iget-object v6, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    iget v7, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->uid:I

    .line 114
    .line 115
    const/4 v8, 0x1

    .line 116
    if-eq v6, v7, :cond_2

    .line 117
    .line 118
    if-nez v7, :cond_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->tv_buildGmae:Landroid/widget/TextView;

    .line 122
    .line 123
    const/16 v6, 0x8

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->type:I

    .line 134
    .line 135
    if-nez v5, :cond_1

    .line 136
    .line 137
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->title:Landroid/widget/TextView;

    .line 138
    .line 139
    const-string v5, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    if-ne v5, v8, :cond_3

    .line 149
    .line 150
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->title:Landroid/widget/TextView;

    .line 151
    .line 152
    const-string v5, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    .line 153
    .line 154
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->tv_buildGmae:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 184
    .line 185
    const/4 v2, 0x3

    .line 186
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 190
    .line 191
    new-instance v2, Lcom/join/mgps/activity/GameAndProfileActivity$a;

    .line 192
    .line 193
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameAndProfileActivity$a;-><init>(Lcom/join/mgps/activity/GameAndProfileActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iget v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->uid:I

    .line 213
    .line 214
    if-ne v1, v2, :cond_6

    .line 215
    .line 216
    iget v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->type:I

    .line 217
    .line 218
    if-nez v1, :cond_4

    .line 219
    .line 220
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    if-ne v1, v8, :cond_5

    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 229
    .line 230
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_5
    const/4 v0, 0x2

    .line 235
    if-ne v1, v0, :cond_6

    .line 236
    .line 237
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 240
    .line 241
    .line 242
    :cond_6
    :goto_2
    return-void
.end method

.method iv_back()V
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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->post:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y0(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/MApplication;->W:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->uid:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->build:Lcom/join/mgps/fragment/l3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/fragment/l3;->Q()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/MApplication;->W:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method tv_buildGmae()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "pa"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/MApplication;->W:Z

    .line 48
    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 50
    .line 51
    const-class v1, Lcom/join/mgps/activity/BuildGameFromActivity_;

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->context:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
