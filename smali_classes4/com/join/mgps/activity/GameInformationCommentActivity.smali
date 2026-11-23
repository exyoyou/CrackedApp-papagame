.class public Lcom/join/mgps/activity/GameInformationCommentActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d03a2
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private adapter:Lcom/join/mgps/adapter/InformationAdapterV2;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_extension:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_praise:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_send:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_extension:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_extension_container:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field chat_layout_more:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/InformationAdapterV2$n;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/join/mgps/dialog/f1;

.field edit_comment_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field footer_tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forum_title_center:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field image_add:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private informationComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBeanV2;",
            ">;"
        }
    .end annotation
.end field

.field informationId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isFirst:Z

.field private isLoding:Z

.field layout_forum_posts_main:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_forum_posts_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field mDialog:Lcom/join/mgps/customview/t;

.field main:Lcom/join/mgps/customview/KeyboardListenLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field matchListView:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field noMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pn:I

.field private radomInt:I

.field rpcClient:Lcom/join/mgps/rpc/e;

.field private vto:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/GameInformationCommentActivity$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationCommentActivity$a;-><init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isFirst:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameInformationCommentActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameInformationCommentActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/GameInformationCommentActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method


# virtual methods
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    iput-object p0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showLoding()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->getInformationData()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v1, "\u8bc4\u8bba"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 49
    .line 50
    const-string v1, "\u8bc4\u8bba\u4e00\u4e0b\u5427"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->layout_title:Landroid/widget/TextView;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 62
    .line 63
    const/16 v2, 0x8

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 84
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dataSet:Ljava/util/List;

    .line 91
    .line 92
    new-instance v0, Lcom/join/mgps/activity/GameInformationCommentActivity$b;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationCommentActivity$b;-><init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 98
    .line 99
    if-eqz v2, :cond_0

    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v4, "@"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "\uff1a"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 135
    .line 136
    const/4 v3, 0x1

    .line 137
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "input_method"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 165
    .line 166
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 167
    .line 168
    .line 169
    :cond_0
    new-instance v2, Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 170
    .line 171
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 172
    .line 173
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->handler:Landroid/os/Handler;

    .line 174
    .line 175
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dataSet:Ljava/util/List;

    .line 176
    .line 177
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapterV2;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->m(Lcom/join/mgps/adapter/InformationAdapterV2$l;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 193
    .line 194
    const/4 v2, 0x5

    .line 195
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 204
    .line 205
    new-instance v1, Lcom/join/mgps/activity/GameInformationCommentActivity$c;

    .line 206
    .line 207
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationCommentActivity$c;-><init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 214
    .line 215
    new-instance v1, Lcom/join/mgps/activity/GameInformationCommentActivity$d;

    .line 216
    .line 217
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationCommentActivity$d;-><init>(Lcom/join/mgps/activity/GameInformationCommentActivity;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Ljava/util/Random;

    .line 224
    .line 225
    const-wide/16 v1, 0x7d0

    .line 226
    .line 227
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->radomInt:I

    .line 235
    .line 236
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

.method btn_chat_send()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "\u4e0d\u80fd\u53d1\u8868\u7a7a\u5b57\u7b26\u4e32"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x4

    .line 64
    if-ge v2, v3, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "\u53d1\u8868\u8bc4\u8bba\u4e0d\u80fd\u5c0f\u4e8e4\u4e2a"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string v2, "input_method"

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 109
    .line 110
    const-string v3, ""

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->sendMessage(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    return-void
.end method

.method dismissLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getInformationData()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 10
    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/join/mgps/dto/GameInformationCommentRequestV2;

    .line 33
    .line 34
    invoke-direct {v4}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setInformation_id(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setComment_id(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setUid(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setToken(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v5, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setPage(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v4, v3}, Lb7/i;->C0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/join/mgps/dto/ResponseModel;

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    const/16 v5, 0xc8

    .line 120
    .line 121
    if-ne v4, v5, :cond_4

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lcom/join/mgps/dto/InformationCommentBackV2;

    .line 134
    .line 135
    if-eqz v3, :cond_1

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBackV2;->getComments()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_1

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBackV2;->getComments()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-lez v4, :cond_1

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBackV2;->getComments()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    .line 159
    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-lez v3, :cond_2

    .line 165
    .line 166
    iget v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 167
    .line 168
    add-int/2addr v3, v0

    .line 169
    iput v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMain(Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateListFooter()V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_2
    iget v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 179
    .line 180
    if-ne v3, v0, :cond_3

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMain(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateListFooter()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->noMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateListFooter()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :goto_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isLoding:Z

    .line 208
    .line 209
    throw v0

    .line 210
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateListFooter()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showLodingFailed()V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-void
.end method

.method mg_loading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->getInformationData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    return-void
.end method

.method refreshAdapter()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 28
    .line 29
    new-instance v3, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 30
    .line 31
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->COMMENT:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 32
    .line 33
    new-instance v5, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;

    .line 34
    .line 35
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/InformationAdapterV2$n$a;-><init>(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapterV2$n;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dataSet:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    new-instance v3, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 59
    .line 60
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 61
    .line 62
    new-instance v5, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCommentId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/InformationAdapterV2$n;-><init>(Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dataSet:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->adapter:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->getInformationData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method sendMessage(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8bc4\u8bba\u5931\u8d25"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showLodingDialog()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/join/mgps/dto/AddGameInformationCommentArgs;

    .line 36
    .line 37
    invoke-direct {v2}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setMsg(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setInformation_id(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setUserToken(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, ""

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setUid(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getUid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setRuid(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/AddGameInformationCommentArgs;->setComment_id(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-interface {p1, p2}, Lb7/i;->g(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 127
    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    const/16 v1, 0x2c2

    .line 135
    .line 136
    if-ne p2, v1, :cond_2

    .line 137
    .line 138
    const p1, 0x7f1204ed

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->dismissLodingDialog()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_2
    if-eqz p1, :cond_3

    .line 160
    .line 161
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    const/16 v1, 0x326

    .line 166
    .line 167
    if-ne p2, v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    if-eqz p1, :cond_4

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    const/16 p2, 0xc8

    .line 183
    .line 184
    if-ne p1, p2, :cond_4

    .line 185
    .line 186
    const-string p1, "\u8bc4\u8bba\u6210\u529f"

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateEditText()V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catchall_0
    move-exception p1

    .line 200
    goto :goto_1

    .line 201
    :catch_0
    move-exception p1

    .line 202
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    .line 207
    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->dismissLodingDialog()V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->dismissLodingDialog()V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_5
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_2
    return-void
.end method

.method sendParesed(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8d5e\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setCommentId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ""

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setUid(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setUserToken(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v2, v1}, Lb7/i;->D(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 103
    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/16 v3, 0x2c2

    .line 111
    .line 112
    if-ne v2, v3, :cond_1

    .line 113
    .line 114
    const-string p1, "\u5b8c\u5584\u8d44\u6599\u540e\u5c31\u53ef\u70b9\u8d5e\u54e6"

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showMessage(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_1
    if-eqz v1, :cond_2

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    const/16 v3, 0xc8

    .line 134
    .line 135
    if-ne v2, v3, :cond_2

    .line 136
    .line 137
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .line 141
    .line 142
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 143
    .line 144
    .line 145
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setLike(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->updateAdapter(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    if-eqz v1, :cond_3

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showToast(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :catch_1
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showToast(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationCommentActivity;->showToast(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    return-void
.end method

.method sendSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 2
    .line 3
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->getInformationData()V

    .line 20
    .line 21
    .line 22
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f12031e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "informations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBeanV2;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->noMessage:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->refreshAdapter()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isFirst:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->isFirst:Z

    .line 60
    .line 61
    new-instance p1, Landroid/os/Message;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x3

    .line 67
    iput v0, p1, Landroid/os/Message;->what:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->handler:Landroid/os/Handler;

    .line 70
    .line 71
    const-wide/16 v1, 0x12c

    .line 72
    .line 73
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "@"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ":"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void

    .line 114
    :cond_3
    :goto_0
    iget p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    if-ne p1, v2, :cond_4

    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->layout_forum_posts_main:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->noMessage:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_4
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

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

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

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

.method toastData(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method updateAdapter(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationComments:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->refreshAdapter()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method updateEditText()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->informationCommentBean:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 5
    .line 6
    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->pn:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->getInformationData()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->mg_forum_post_comment_list:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationCommentActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    return v0
.end method
