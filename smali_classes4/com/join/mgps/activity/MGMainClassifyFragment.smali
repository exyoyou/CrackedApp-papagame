.class public Lcom/join/mgps/activity/MGMainClassifyFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/pref/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;,
        Lcom/join/mgps/activity/MGMainClassifyFragment$k;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d076a
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "MGMainClassifyFragment"


# instance fields
.field A:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field B:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C:Landroid/widget/ToggleButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D:Lcom/join/mgps/rpc/e;

.field private E:I

.field F:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private G:Lcom/join/mgps/pref/f;

.field H:[I

.field I:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/join/mgps/activity/k;

.field private e:Lcom/join/mgps/activity/k;

.field private f:Lcom/join/mgps/activity/k;

.field private g:Lcom/join/mgps/customview/e0;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/PopupWindow;

.field private l:Landroid/widget/PopupWindow;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field final r:[Ljava/lang/String;

.field final s:[Ljava/lang/String;

.field t:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Lcom/join/mgps/customview/MViewpagerV4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Lcom/join/mgps/customview/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/ToggleButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 31
    .line 32
    const v1, -0x8c8c8d

    .line 33
    .line 34
    .line 35
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 36
    .line 37
    const v1, -0xb8b00

    .line 38
    .line 39
    .line 40
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 41
    .line 42
    const/high16 v1, -0x62000000

    .line 43
    .line 44
    iput v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:I

    .line 45
    .line 46
    const-string v1, "\u5168\u90e8"

    .line 47
    .line 48
    filled-new-array {v1}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:[Ljava/lang/String;

    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:[Ljava/lang/String;

    .line 59
    .line 60
    const/16 v0, 0xe

    .line 61
    .line 62
    iput v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->H:[I

    .line 68
    .line 69
    return-void
.end method

.method private M()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:Lcom/join/mgps/pref/PrefDef_;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackClassifyTipsVisible(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 48
    .line 49
    const-string v2, "\u6700\u70ed"

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 55
    .line 56
    const-string v2, "\u98d9\u5347"

    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 62
    .line 63
    const-string v2, "\u65b0\u9510"

    .line 64
    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/4 v4, 0x1

    .line 77
    if-ge v2, v3, :cond_4

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    if-eq v2, v4, :cond_2

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    if-eq v2, v3, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-string v3, "3"

    .line 88
    .line 89
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v3, v4}, Lcom/join/mgps/activity/k;->X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Lcom/join/mgps/activity/k;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string v3, "2"

    .line 104
    .line 105
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v3, v4}, Lcom/join/mgps/activity/k;->X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/activity/k;

    .line 112
    .line 113
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const-string v3, "1"

    .line 120
    .line 121
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v3, v4}, Lcom/join/mgps/activity/k;->X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/k;

    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 138
    .line 139
    if-nez v2, :cond_5

    .line 140
    .line 141
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const v3, 0x7f0d076a

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const v2, 0x7f0a0fec

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lcom/join/mgps/customview/MViewpagerV4;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 164
    .line 165
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/join/mgps/customview/e0;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 177
    .line 178
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 179
    .line 180
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Lcom/join/mgps/customview/e0;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->h:Ljava/util/ArrayList;

    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Lcom/join/mgps/customview/e0;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->g:Lcom/join/mgps/customview/e0;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 205
    .line 206
    const/4 v1, 0x3

    .line 207
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 211
    .line 212
    const v1, 0x7f0d0145

    .line 213
    .line 214
    .line 215
    const v2, 0x1020014

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout;->setCustomTabView(II)V

    .line 219
    .line 220
    .line 221
    iget v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 222
    .line 223
    const/16 v1, 0x21c

    .line 224
    .line 225
    if-lt v0, v1, :cond_6

    .line 226
    .line 227
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 228
    .line 229
    div-int/lit8 v0, v0, 0x14

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout;->setMarginWidth(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 236
    .line 237
    const/16 v1, 0xa

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->setMarginWidth(I)V

    .line 240
    .line 241
    .line 242
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 243
    .line 244
    const v1, -0xd75d6

    .line 245
    .line 246
    .line 247
    filled-new-array {v1}, [I

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 255
    .line 256
    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 260
    .line 261
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Lcom/join/mgps/customview/MViewpagerV4;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :goto_3
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/pref/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/MGMainClassifyFragment;)Lcom/join/mgps/activity/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/activity/MGMainClassifyFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(Lcom/join/mgps/activity/MGMainClassifyFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic S(Lcom/join/mgps/activity/MGMainClassifyFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method private T(Lcom/join/mgps/dto/CategoryBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CategoryBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryBean;->getMessages()Lcom/join/mgps/dto/CategoryMessageBean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryMessageBean;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/mgps/dto/CategoryDataBean;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/CategoryDataBean;->getGame_type()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    return-object p1
.end method

.method public static X(I)Lcom/join/mgps/activity/MGMainClassifyFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RomType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/h7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/h7;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "MGMainClassifyFragment"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->W()Lcom/join/mgps/dto/CommonRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->n1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CategoryBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->T(Lcom/join/mgps/dto/CategoryBean;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->e0(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public W()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getCategoryRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method Y()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Where;->classify:Lcom/papa/sim/statistic/Where;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method Z(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Lcom/join/mgps/activity/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/k;->f0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method a0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Lcom/join/mgps/activity/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/k;->g0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "window"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/WindowManager;

    .line 35
    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const-string v3, "MGMainClassifyFragment"

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    const/16 v3, 0xe

    .line 62
    .line 63
    iput v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/16 v3, 0x3d

    .line 68
    .line 69
    if-eq v0, v3, :cond_2

    .line 70
    .line 71
    const/16 v3, 0x3e

    .line 72
    .line 73
    if-eq v0, v3, :cond_1

    .line 74
    .line 75
    packed-switch v0, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_0
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->DC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_1
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->ONS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_2
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->N64:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_3
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_4
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->NDS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_5
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->WSC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_6
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->LARGE_SINGLE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_7
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_8
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->MD:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_9
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FEATURED_ONLINE:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_a
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PSP:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_b
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->SFC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_c
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->GBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_d
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FC:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_e
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->FBA:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->N3DS:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    sget-object v1, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->PS2:Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    const-string v0, ""

    .line 131
    .line 132
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "\u7b5b\u9009"

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    if-eqz v1, :cond_4

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->m:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->f0()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->V()V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 166
    .line 167
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$b;

    .line 168
    .line 169
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainClassifyFragment$b;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 181
    .line 182
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$c;

    .line 183
    .line 184
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGMainClassifyFragment$c;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->values()[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    aget-object p1, v0, v1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method c0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/activity/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/k;->f0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/activity/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/k;->g0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method e0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categorySimpleBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/f;->n()Lt6/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lq5/b;->a()I

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ge v1, v0, :cond_0

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/db/tables/CategoryRecordTable;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CategoryRecordTable;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setId(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getIco_remote()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setIco_remote(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getShow_index()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setShow_index(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/join/mgps/dto/CategorySimpleBean;->getGame_num()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/CategoryRecordTable;->setGame_num(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lt6/f;->n()Lt6/f;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->M()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method g0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lt6/f;->n()Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/join/mgps/db/tables/CategoryRecordTable;

    .line 29
    .line 30
    new-instance v4, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 31
    .line 32
    invoke-direct {v4}, Lcom/join/mgps/dto/CategorySimpleBean;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getShow_index()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setShow_index(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setId(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getGame_num()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setGame_num(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getIco_remote()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CategorySimpleBean;->setIco_remote(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CategoryRecordTable;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/CategorySimpleBean;->setTitle(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->M()V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void
.end method

.method h0()V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-direct {v2, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    .line 37
    .line 38
    const/4 v6, -0x2

    .line 39
    invoke-direct {v5, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    .line 50
    .line 51
    invoke-direct {v8, v3, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->q:I

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    new-instance v8, Landroid/widget/Button;

    .line 72
    .line 73
    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 74
    .line 75
    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const-string v9, "\u5168\u90e8"

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 84
    .line 85
    int-to-float v9, v9

    .line 86
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    .line 88
    .line 89
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 95
    .line 96
    const/16 v10, 0x3c0

    .line 97
    .line 98
    if-le v9, v10, :cond_0

    .line 99
    .line 100
    div-int/lit8 v11, v9, 0xf

    .line 101
    .line 102
    div-int/lit8 v12, v9, 0x19

    .line 103
    .line 104
    div-int/lit8 v13, v9, 0xf

    .line 105
    .line 106
    div-int/lit8 v9, v9, 0x19

    .line 107
    .line 108
    invoke-virtual {v5, v11, v12, v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    div-int/lit8 v11, v9, 0x1e

    .line 113
    .line 114
    div-int/lit8 v12, v9, 0x19

    .line 115
    .line 116
    div-int/lit8 v13, v9, 0x1e

    .line 117
    .line 118
    div-int/lit8 v9, v9, 0x14

    .line 119
    .line 120
    invoke-virtual {v5, v11, v12, v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 121
    .line 122
    .line 123
    :goto_0
    const/16 v9, 0x11

    .line 124
    .line 125
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lcom/join/mgps/activity/MGMainClassifyFragment$g;

    .line 132
    .line 133
    invoke-direct {v5, v0, v8}, Lcom/join/mgps/activity/MGMainClassifyFragment$g;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/Button;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 143
    .line 144
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v11, "\u5206\u7c7b"

    .line 153
    .line 154
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    const/4 v11, 0x0

    .line 159
    if-eqz v5, :cond_1

    .line 160
    .line 161
    const v5, 0x7f080404

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    iget v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 168
    .line 169
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    const/4 v5, 0x1

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    const v5, 0x7f080403

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    iget v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 181
    .line 182
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    :goto_1
    new-instance v8, Lcom/join/mgps/customview/MyRadioGroup;

    .line 187
    .line 188
    iget-object v12, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 189
    .line 190
    invoke-direct {v8, v12}, Lcom/join/mgps/customview/MyRadioGroup;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    .line 195
    .line 196
    new-instance v12, Landroid/widget/RadioGroup$LayoutParams;

    .line 197
    .line 198
    invoke-direct {v12, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    iget v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 205
    .line 206
    div-int/lit8 v13, v13, 0x14

    .line 207
    .line 208
    invoke-virtual {v12, v11, v11, v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 209
    .line 210
    .line 211
    iget v12, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 212
    .line 213
    if-le v12, v10, :cond_2

    .line 214
    .line 215
    div-int/lit8 v13, v12, 0xf

    .line 216
    .line 217
    div-int/lit8 v12, v12, 0xf

    .line 218
    .line 219
    invoke-virtual {v8, v13, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_2
    div-int/lit8 v13, v12, 0x1e

    .line 224
    .line 225
    div-int/lit8 v12, v12, 0x1e

    .line 226
    .line 227
    invoke-virtual {v8, v13, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    .line 229
    .line 230
    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    .line 232
    .line 233
    new-instance v12, Landroid/widget/RadioGroup$LayoutParams;

    .line 234
    .line 235
    const/high16 v13, 0x3f800000    # 1.0f

    .line 236
    .line 237
    invoke-direct {v12, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 238
    .line 239
    .line 240
    iget v14, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 241
    .line 242
    const/16 v15, 0x1c

    .line 243
    .line 244
    if-lt v14, v10, :cond_3

    .line 245
    .line 246
    invoke-virtual {v12, v11, v11, v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 247
    .line 248
    .line 249
    :cond_3
    new-instance v14, Landroid/widget/RadioGroup$LayoutParams;

    .line 250
    .line 251
    invoke-direct {v14, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 252
    .line 253
    .line 254
    iget v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 255
    .line 256
    if-lt v2, v10, :cond_4

    .line 257
    .line 258
    const/16 v2, 0xe

    .line 259
    .line 260
    invoke-virtual {v14, v2, v11, v2, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 261
    .line 262
    .line 263
    :cond_4
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    .line 264
    .line 265
    invoke-direct {v2, v3, v6, v13}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 266
    .line 267
    .line 268
    iget v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 269
    .line 270
    if-lt v13, v10, :cond_5

    .line 271
    .line 272
    invoke-virtual {v2, v15, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 273
    .line 274
    .line 275
    :cond_5
    const/4 v10, 0x0

    .line 276
    :goto_3
    iget-object v13, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    const/4 v15, 0x2

    .line 283
    add-int/2addr v13, v15

    .line 284
    div-int/lit8 v13, v13, 0x3

    .line 285
    .line 286
    if-ge v10, v13, :cond_f

    .line 287
    .line 288
    new-instance v13, Landroid/widget/LinearLayout;

    .line 289
    .line 290
    iget-object v15, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 291
    .line 292
    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    new-instance v15, Landroid/widget/RadioGroup$LayoutParams;

    .line 296
    .line 297
    invoke-direct {v15, v3, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 304
    .line 305
    .line 306
    new-instance v15, Landroid/widget/RadioButton;

    .line 307
    .line 308
    iget-object v6, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 309
    .line 310
    invoke-direct {v15, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    mul-int/lit8 v6, v10, 0x3

    .line 314
    .line 315
    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 316
    .line 317
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-ge v6, v3, :cond_8

    .line 322
    .line 323
    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 330
    .line 331
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 332
    .line 333
    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v15, v9}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    .line 338
    .line 339
    const/16 v9, 0x11

    .line 340
    .line 341
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    .line 343
    .line 344
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 345
    .line 346
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    .line 348
    .line 349
    const v9, 0x7f080408

    .line 350
    .line 351
    .line 352
    invoke-virtual {v15, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    if-nez v5, :cond_7

    .line 356
    .line 357
    invoke-virtual {v3}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 362
    .line 363
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_6

    .line 372
    .line 373
    const/4 v9, 0x1

    .line 374
    invoke-virtual {v15, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 375
    .line 376
    .line 377
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 378
    .line 379
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_6
    const/4 v9, 0x0

    .line 384
    invoke-virtual {v15, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 385
    .line 386
    .line 387
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 388
    .line 389
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    .line 391
    .line 392
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 400
    .line 401
    int-to-float v9, v9

    .line 402
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    .line 404
    .line 405
    new-instance v9, Lcom/join/mgps/activity/MGMainClassifyFragment$h;

    .line 406
    .line 407
    invoke-direct {v9, v0, v15, v3}, Lcom/join/mgps/activity/MGMainClassifyFragment$h;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v15, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 411
    .line 412
    .line 413
    :cond_8
    new-instance v3, Landroid/widget/RadioButton;

    .line 414
    .line 415
    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 416
    .line 417
    invoke-direct {v3, v9}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 418
    .line 419
    .line 420
    const/16 v9, 0x11

    .line 421
    .line 422
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    .line 424
    .line 425
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 426
    .line 427
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    .line 429
    .line 430
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 431
    .line 432
    const/4 v11, 0x0

    .line 433
    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    .line 438
    .line 439
    const v9, 0x7f080408

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    .line 444
    .line 445
    iget v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 446
    .line 447
    int-to-float v9, v9

    .line 448
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v9, v6, 0x1

    .line 452
    .line 453
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 454
    .line 455
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 456
    .line 457
    .line 458
    move-result v11

    .line 459
    move-object/from16 v16, v7

    .line 460
    .line 461
    const-string v7, ""

    .line 462
    .line 463
    move-object/from16 v17, v1

    .line 464
    .line 465
    if-ge v9, v11, :cond_b

    .line 466
    .line 467
    const/4 v11, 0x0

    .line 468
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 472
    .line 473
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    check-cast v9, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 478
    .line 479
    if-nez v5, :cond_a

    .line 480
    .line 481
    invoke-virtual {v9}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 486
    .line 487
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_9

    .line 496
    .line 497
    const/4 v1, 0x1

    .line 498
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 499
    .line 500
    .line 501
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 502
    .line 503
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :cond_9
    const/4 v1, 0x0

    .line 508
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 509
    .line 510
    .line 511
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 512
    .line 513
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    .line 515
    .line 516
    :cond_a
    :goto_5
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$i;

    .line 517
    .line 518
    invoke-direct {v1, v0, v3, v9}, Lcom/join/mgps/activity/MGMainClassifyFragment$i;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_b
    const/4 v1, 0x4

    .line 533
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    :goto_6
    new-instance v1, Landroid/widget/RadioButton;

    .line 540
    .line 541
    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 542
    .line 543
    invoke-direct {v1, v9}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 544
    .line 545
    .line 546
    const/16 v9, 0x11

    .line 547
    .line 548
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 549
    .line 550
    .line 551
    iget v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 552
    .line 553
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    .line 555
    .line 556
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .line 557
    .line 558
    const/4 v9, 0x0

    .line 559
    invoke-direct {v11, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v11}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    .line 564
    .line 565
    const v11, 0x7f080408

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 569
    .line 570
    .line 571
    iget v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->E:I

    .line 572
    .line 573
    int-to-float v11, v11

    .line 574
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 575
    .line 576
    .line 577
    add-int/lit8 v6, v6, 0x2

    .line 578
    .line 579
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 580
    .line 581
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 582
    .line 583
    .line 584
    move-result v11

    .line 585
    if-ge v6, v11, :cond_e

    .line 586
    .line 587
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 588
    .line 589
    .line 590
    iget-object v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 591
    .line 592
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    check-cast v6, Lcom/join/mgps/dto/CategorySimpleBean;

    .line 597
    .line 598
    if-nez v5, :cond_d

    .line 599
    .line 600
    invoke-virtual {v6}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    iget-object v9, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 605
    .line 606
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 607
    .line 608
    .line 609
    move-result-object v9

    .line 610
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    if-eqz v7, :cond_c

    .line 615
    .line 616
    const/4 v7, 0x1

    .line 617
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 618
    .line 619
    .line 620
    iget v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->p:I

    .line 621
    .line 622
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    .line 624
    .line 625
    goto :goto_7

    .line 626
    :cond_c
    const/4 v7, 0x0

    .line 627
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 628
    .line 629
    .line 630
    iget v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->o:I

    .line 631
    .line 632
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    .line 634
    .line 635
    :cond_d
    :goto_7
    new-instance v7, Lcom/join/mgps/activity/MGMainClassifyFragment$j;

    .line 636
    .line 637
    invoke-direct {v7, v0, v1, v6}, Lcom/join/mgps/activity/MGMainClassifyFragment$j;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Lcom/join/mgps/dto/CategorySimpleBean;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6}, Lcom/join/mgps/dto/CategorySimpleBean;->getTitle()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_e
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    .line 653
    .line 654
    const/4 v6, 0x4

    .line 655
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 656
    .line 657
    .line 658
    :goto_8
    invoke-virtual {v13, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    .line 666
    .line 667
    iget v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 668
    .line 669
    div-int/lit8 v1, v1, 0x28

    .line 670
    .line 671
    const/4 v3, 0x0

    .line 672
    invoke-virtual {v13, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    .line 677
    .line 678
    add-int/lit8 v10, v10, 0x1

    .line 679
    .line 680
    move-object/from16 v7, v16

    .line 681
    .line 682
    move-object/from16 v1, v17

    .line 683
    .line 684
    const/4 v3, -0x1

    .line 685
    const/4 v6, -0x2

    .line 686
    const/16 v9, 0x11

    .line 687
    .line 688
    const/4 v11, 0x0

    .line 689
    goto/16 :goto_3

    .line 690
    .line 691
    :cond_f
    move-object/from16 v17, v1

    .line 692
    .line 693
    move-object/from16 v16, v7

    .line 694
    .line 695
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->j:Ljava/util/List;

    .line 696
    .line 697
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-lez v1, :cond_10

    .line 702
    .line 703
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 704
    .line 705
    .line 706
    :cond_10
    new-instance v1, Landroid/widget/PopupWindow;

    .line 707
    .line 708
    iget v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 709
    .line 710
    move-object/from16 v3, v17

    .line 711
    .line 712
    const/4 v4, -0x1

    .line 713
    invoke-direct {v1, v3, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 714
    .line 715
    .line 716
    iput-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 717
    .line 718
    const/4 v2, 0x1

    .line 719
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 720
    .line 721
    .line 722
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 723
    .line 724
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 725
    .line 726
    .line 727
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 728
    .line 729
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 730
    .line 731
    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    .line 736
    .line 737
    new-array v1, v15, [I

    .line 738
    .line 739
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 740
    .line 741
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 742
    .line 743
    .line 744
    const/4 v1, 0x0

    .line 745
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    .line 747
    .line 748
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 749
    .line 750
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 751
    .line 752
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 753
    .line 754
    .line 755
    new-instance v1, Lcom/join/mgps/activity/MGMainClassifyFragment$a;

    .line 756
    .line 757
    invoke-direct {v1, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$a;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    .line 758
    .line 759
    .line 760
    move-object/from16 v2, v16

    .line 761
    .line 762
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    .line 764
    .line 765
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->k:Landroid/widget/PopupWindow;

    .line 766
    .line 767
    new-instance v2, Lcom/join/mgps/activity/MGMainClassifyFragment$k;

    .line 768
    .line 769
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/activity/MGMainClassifyFragment$k;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/LinearLayout;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 773
    .line 774
    .line 775
    return-void
.end method

.method i0()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->B:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/TextView;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {v1, v3}, Lcom/join/mgps/pref/f;->callbackDownloadCenterVisible(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->I:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->values()[Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v4, 0x0

    .line 54
    :goto_0
    array-length v5, v1

    .line 55
    if-ge v4, v5, :cond_1

    .line 56
    .line 57
    iget-object v5, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->I:Ljava/lang/String;

    .line 58
    .line 59
    aget-object v6, v1, v4

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->titleAbbr()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    aget-object v4, v1, v4

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iput-object v4, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->I:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    invoke-direct {v4, v5, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Landroid/widget/ScrollView;

    .line 90
    .line 91
    iget-object v7, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 92
    .line 93
    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .line 101
    .line 102
    new-instance v7, Landroid/widget/RadioGroup;

    .line 103
    .line 104
    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 105
    .line 106
    invoke-direct {v7, v8}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    const/4 v8, 0x1

    .line 110
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    .line 112
    .line 113
    new-instance v9, Landroid/widget/RadioGroup$LayoutParams;

    .line 114
    .line 115
    invoke-direct {v9, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    :goto_2
    array-length v10, v1

    .line 124
    if-ge v4, v10, :cond_4

    .line 125
    .line 126
    aget-object v10, v1, v4

    .line 127
    .line 128
    invoke-virtual {v10}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->id()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    aget-object v11, v1, v4

    .line 133
    .line 134
    invoke-virtual {v11}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->title()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    aget-object v12, v1, v4

    .line 139
    .line 140
    invoke-virtual {v12}, Lcom/join/mgps/activity/MGMainClassifyFragment$GameType;->resId()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    new-instance v13, Landroid/widget/RadioButton;

    .line 145
    .line 146
    iget-object v14, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 147
    .line 148
    invoke-direct {v13, v14}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    new-instance v14, Landroid/widget/RadioGroup$LayoutParams;

    .line 152
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    const v8, 0x7f070b01

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-direct {v14, v5, v8}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 165
    .line 166
    .line 167
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    .line 168
    .line 169
    invoke-direct {v8, v14}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v14, "    "

    .line 181
    .line 182
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->I:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    const v11, -0xc3c3c4

    .line 205
    .line 206
    .line 207
    if-eqz v8, :cond_2

    .line 208
    .line 209
    const v8, -0xb8b00

    .line 210
    .line 211
    .line 212
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    move v9, v4

    .line 216
    goto :goto_3

    .line 217
    :cond_2
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    :goto_3
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 224
    .line 225
    const/16 v11, 0x1e0

    .line 226
    .line 227
    if-ne v8, v11, :cond_3

    .line 228
    .line 229
    const/high16 v8, 0x41600000    # 14.0f

    .line 230
    .line 231
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_3
    const/high16 v8, 0x41800000    # 16.0f

    .line 236
    .line 237
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    .line 239
    .line 240
    :goto_4
    iget v8, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->n:I

    .line 241
    .line 242
    div-int/lit8 v11, v8, 0x14

    .line 243
    .line 244
    div-int/lit8 v14, v8, 0x23

    .line 245
    .line 246
    div-int/lit8 v15, v8, 0x10

    .line 247
    .line 248
    div-int/lit8 v8, v8, 0x23

    .line 249
    .line 250
    invoke-virtual {v13, v11, v14, v15, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    .line 254
    .line 255
    const v11, 0x106000d

    .line 256
    .line 257
    .line 258
    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v13, v8}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    invoke-virtual {v8, v2, v2, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    const v12, 0x7f08040a

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    invoke-virtual {v11, v2, v2, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v13, v8, v3, v11, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 306
    .line 307
    .line 308
    const/16 v8, 0xa

    .line 309
    .line 310
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 311
    .line 312
    .line 313
    const/16 v8, 0x13

    .line 314
    .line 315
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    .line 317
    .line 318
    new-instance v8, Lcom/join/mgps/activity/MGMainClassifyFragment$d;

    .line 319
    .line 320
    invoke-direct {v8, v0, v13, v10}, Lcom/join/mgps/activity/MGMainClassifyFragment$d;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v13, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    .line 325
    .line 326
    new-instance v8, Lcom/join/mgps/activity/MGMainClassifyFragment$e;

    .line 327
    .line 328
    invoke-direct {v8, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$e;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v13, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    .line 336
    .line 337
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    .line 338
    .line 339
    const/4 v10, 0x1

    .line 340
    invoke-direct {v8, v5, v10}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 341
    .line 342
    .line 343
    new-instance v10, Landroid/view/View;

    .line 344
    .line 345
    iget-object v11, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 346
    .line 347
    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    const v11, -0x121213

    .line 351
    .line 352
    .line 353
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    add-int/lit8 v4, v4, 0x1

    .line 363
    .line 364
    const/4 v8, 0x1

    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :cond_4
    mul-int/lit8 v9, v9, 0x2

    .line 368
    .line 369
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Landroid/widget/RadioButton;

    .line 374
    .line 375
    const/4 v3, 0x1

    .line 376
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 383
    .line 384
    const-string v4, "window"

    .line 385
    .line 386
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Landroid/view/WindowManager;

    .line 391
    .line 392
    new-instance v4, Landroid/widget/PopupWindow;

    .line 393
    .line 394
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    invoke-direct {v4, v6, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 403
    .line 404
    .line 405
    iput-object v4, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 406
    .line 407
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 416
    .line 417
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 418
    .line 419
    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 426
    .line 427
    iget-object v3, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->H:[I

    .line 428
    .line 429
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 436
    .line 437
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->C:Landroid/widget/ToggleButton;

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainClassifyFragment;->l:Landroid/widget/PopupWindow;

    .line 443
    .line 444
    new-instance v2, Lcom/join/mgps/activity/MGMainClassifyFragment$f;

    .line 445
    .line 446
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/MGMainClassifyFragment$f;-><init>(Lcom/join/mgps/activity/MGMainClassifyFragment;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "GameType"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "RomType"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 20
    .line 21
    const-string v2, "\u5206\u7c7b"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/ToggleButton;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "\u7b5b\u9009"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->d:Lcom/join/mgps/activity/k;

    .line 42
    .line 43
    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/k;->h0(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->e:Lcom/join/mgps/activity/k;

    .line 47
    .line 48
    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/k;->h0(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->f:Lcom/join/mgps/activity/k;

    .line 52
    .line 53
    invoke-virtual {v1, v0, p1}, Lcom/join/mgps/activity/k;->h0(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 11
    .line 12
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->F:Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->i:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->G:Lcom/join/mgps/pref/f;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Lcom/join/mgps/pref/f;->callbackClassifyTipsVisible(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->f0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->V()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
