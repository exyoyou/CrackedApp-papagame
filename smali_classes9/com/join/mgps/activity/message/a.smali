.class public Lcom/join/mgps/activity/message/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/a$g;,
        Lcom/join/mgps/activity/message/a$i;,
        Lcom/join/mgps/activity/message/a$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d028e
.end annotation


# instance fields
.field A:Landroid/view/View;

.field B:Landroid/widget/EditText;

.field C:Z

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/activity/message/a$g;

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/i;

.field l:Landroid/content/Context;

.field m:I

.field n:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o:Lcom/wufan/user/service/protobuf/UserInfo;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/a$i;",
            ">;"
        }
    .end annotation
.end field

.field q:F

.field r:F

.field s:F

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Landroid/animation/ObjectAnimator;

.field v:Z

.field w:Landroid/widget/PopupWindow;

.field x:[Landroid/text/InputFilter;

.field y:Z

.field z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/message/a;->v:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/message/a;->y:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/a;->C:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/activity/message/a;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/a;->S(Landroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private S(Landroid/widget/TextView;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/d0;->a()Lcom/join/mgps/Util/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/text/Spannable;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/text/Spannable;

    .line 25
    .line 26
    const-class v3, Landroid/text/style/URLSpan;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 34
    .line 35
    array-length v3, v1

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    array-length v0, v1

    .line 45
    :goto_0
    if-ge v4, v0, :cond_3

    .line 46
    .line 47
    aget-object v5, v1, v4

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "http://"

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    const-string v7, "https://"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    :cond_1
    new-instance v7, Lcom/join/mgps/activity/message/a$h;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-direct {v7, p0, v8, v6}, Lcom/join/mgps/activity/message/a$h;-><init>(Lcom/join/mgps/activity/message/a;Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/16 v8, 0x11

    .line 87
    .line 88
    invoke-virtual {v3, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    .line 90
    .line 91
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootview"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->w:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/16 v1, 0x51

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method M()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method O(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/a$i;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->f:Lcom/join/mgps/activity/message/a$g;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method P()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/message/a;->k:Lcom/join/mgps/rpc/i;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/message/a;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/message/a;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v5, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    iput v6, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 34
    .line 35
    const/16 v6, 0xa

    .line 36
    .line 37
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/join/mgps/rpc/i;->Z(ILjava/lang/String;II)Lcom/join/mgps/dto/ForumResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->c0()V

    .line 42
    .line 43
    .line 44
    if-eqz v2, :cond_8

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_8

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumProfileMessageData;->getUn_read_praise_count()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-lez v3, :cond_5

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/join/mgps/dto/ForumProfileMessageData;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumProfileMessageData;->getMessage_list()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget v3, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 101
    .line 102
    if-ne v3, v1, :cond_0

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/message/a;->O(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    const/4 v3, 0x0

    .line 113
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-ge v3, v5, :cond_4

    .line 118
    .line 119
    new-instance v5, Lcom/join/mgps/activity/message/a$i;

    .line 120
    .line 121
    const-string v7, ""

    .line 122
    .line 123
    invoke-direct {v5, p0, v7, v4}, Lcom/join/mgps/activity/message/a$i;-><init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance v5, Lcom/join/mgps/activity/message/a$i;

    .line 130
    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-direct {v5, p0, v7, v1}, Lcom/join/mgps/activity/message/a$i;-><init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getReply()Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_1

    .line 152
    .line 153
    new-instance v5, Lcom/join/mgps/activity/message/a$i;

    .line 154
    .line 155
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const/4 v8, 0x3

    .line 160
    invoke-direct {v5, p0, v7, v8}, Lcom/join/mgps/activity/message/a$i;-><init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    if-eqz v5, :cond_2

    .line 171
    .line 172
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    check-cast v5, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-eqz v5, :cond_2

    .line 183
    .line 184
    new-instance v5, Lcom/join/mgps/activity/message/a$i;

    .line 185
    .line 186
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const/4 v8, 0x4

    .line 191
    invoke-direct {v5, p0, v7, v8}, Lcom/join/mgps/activity/message/a$i;-><init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    if-eqz v5, :cond_3

    .line 208
    .line 209
    new-instance v5, Lcom/join/mgps/activity/message/a$i;

    .line 210
    .line 211
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    const/4 v8, 0x5

    .line 222
    invoke-direct {v5, p0, v7, v8}, Lcom/join/mgps/activity/message/a$i;-><init>(Lcom/join/mgps/activity/message/a;Ljava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/a;->T(Ljava/util/List;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->Q()V

    .line 235
    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-ge v0, v6, :cond_8

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->V()V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 248
    .line 249
    if-ne v0, v1, :cond_6

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->Q()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/message/a;->W(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->V()V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->V()V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/message/a;->W(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->Q()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->Q()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->showLodingFailed()V

    .line 283
    .line 284
    .line 285
    :cond_8
    :goto_1
    return-void
.end method

.method Q()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/LinearLayout;

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
    :cond_0
    :goto_0
    return-void
.end method

.method R()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/a$i;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->f:Lcom/join/mgps/activity/message/a$g;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method U(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pid",
            "rid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p1, "\u4e0d\u80fd\u56de\u590d\u7a7a\u5b57\u7b26\u4e32"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/join/mgps/rpc/h;->k:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "/group/comment/reply"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "uid"

    .line 48
    .line 49
    iget-object v4, p0, Lcom/join/mgps/activity/message/a;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string v3, "token"

    .line 63
    .line 64
    iget-object v4, p0, Lcom/join/mgps/activity/message/a;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v3, "pid"

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string p2, "message"

    .line 83
    .line 84
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p1, "device_id"

    .line 88
    .line 89
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string p1, "rid"

    .line 93
    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->k:Lcom/join/mgps/rpc/i;

    .line 102
    .line 103
    invoke-interface {p1, v1, v2}, Lcom/join/mgps/rpc/i;->A(Ljava/lang/String;Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string p2, "\u8bc4\u8bba\u5931\u8d25"

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    if-eqz p3, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/join/mgps/dto/MessageCommentReplyResponse;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/dto/MessageCommentReplyResponse;->isResult()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_1

    .line 128
    .line 129
    const-string p1, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    const-string p1, "\u6682\u65e0\u7f51\u7edc"

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    return-void
.end method

.method V()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method W(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->i:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->i:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method Y(IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "pid",
            "rid",
            "name"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/a;->C:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 5
    .line 6
    const/16 v2, 0x21

    .line 7
    .line 8
    const/16 v3, 0xf

    .line 9
    .line 10
    const-string v4, ":"

    .line 11
    .line 12
    const-string v5, "@ "

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const-string v7, "input_method"

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v9, 0x7f0d00d3

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 35
    .line 36
    new-instance v1, Landroid/widget/PopupWindow;

    .line 37
    .line 38
    iget-object v9, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 39
    .line 40
    const/4 v11, -0x1

    .line 41
    invoke-direct {v1, v9, v11, v11, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/join/mgps/activity/message/a;->w:Landroid/widget/PopupWindow;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 47
    .line 48
    const v9, 0x7f0a0558

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/EditText;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 60
    .line 61
    const v9, 0x7f0a0ee9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    new-instance v9, Lcom/join/mgps/activity/message/a$c;

    .line 71
    .line 72
    invoke-direct {v9, p0}, Lcom/join/mgps/activity/message/a$c;-><init>(Lcom/join/mgps/activity/message/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroid/text/SpannableString;

    .line 79
    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    .line 102
    .line 103
    invoke-direct {p3, v3, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {v1, p3, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    .line 112
    .line 113
    iget-object p3, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 114
    .line 115
    new-instance v2, Landroid/text/SpannedString;

    .line 116
    .line 117
    invoke-direct {v2, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget-object p3, p0, Lcom/join/mgps/activity/message/a;->z:Landroid/view/View;

    .line 124
    .line 125
    const v1, 0x7f0a028f

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Landroid/widget/Button;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 135
    .line 136
    new-instance v2, Lcom/join/mgps/activity/message/a$d;

    .line 137
    .line 138
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/message/a$d;-><init>(Lcom/join/mgps/activity/message/a;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/join/mgps/activity/message/a$e;

    .line 145
    .line 146
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/message/a$e;-><init>(Lcom/join/mgps/activity/message/a;II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 153
    .line 154
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->w:Landroid/widget/PopupWindow;

    .line 158
    .line 159
    invoke-virtual {p1, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 163
    .line 164
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 168
    .line 169
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .line 185
    invoke-virtual {p1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    new-instance p3, Lcom/join/mgps/activity/message/a$f;

    .line 205
    .line 206
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/message/a$f;-><init>(Lcom/join/mgps/activity/message/a;Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 213
    .line 214
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const p2, 0x7f0d028e

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/join/mgps/activity/message/a;->A:Landroid/view/View;

    .line 226
    .line 227
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/a;->X(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .line 239
    invoke-virtual {p1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 240
    .line 241
    .line 242
    new-instance p1, Landroid/text/SpannableString;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    .line 266
    .line 267
    invoke-direct {p2, v3, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 275
    .line 276
    .line 277
    iget-object p2, p0, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 278
    .line 279
    new-instance p3, Landroid/text/SpannedString;

    .line 280
    .line 281
    invoke-direct {p3, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->w:Landroid/widget/PopupWindow;

    .line 288
    .line 289
    if-eqz p1, :cond_1

    .line 290
    .line 291
    iget-object p2, p0, Lcom/join/mgps/activity/message/a;->A:Landroid/view/View;

    .line 292
    .line 293
    const/16 p3, 0x51

    .line 294
    .line 295
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 296
    .line 297
    .line 298
    :cond_1
    :goto_0
    return-void
.end method

.method Z()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method a0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/activity/message/a$g;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/message/a$g;-><init>(Lcom/join/mgps/activity/message/a;Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->f:Lcom/join/mgps/activity/message/a$g;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->k:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-lez v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->a0()V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/activity/message/a$a;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/a$a;-><init>(Lcom/join/mgps/activity/message/a;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 82
    .line 83
    new-instance v1, Lcom/join/mgps/activity/message/a$b;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/a$b;-><init>(Lcom/join/mgps/activity/message/a;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->showLoding()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->P()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method b0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->R()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_praise_surplus_number(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-class v2, Lcom/join/mgps/activity/GivePraiceActivity_;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "praice"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method c0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
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
    :cond_0
    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/join/mgps/activity/message/a;->v:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/activity/message/a;->v:Z

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/message/a;->m:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->P()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->g:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mess"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
