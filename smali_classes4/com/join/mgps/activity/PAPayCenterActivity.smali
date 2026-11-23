.class public Lcom/join/mgps/activity/PAPayCenterActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lw6/b$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d07c7
.end annotation


# instance fields
.field aboutPabi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field adapter:Lcom/join/mgps/adapter/g6;

.field client:Lcom/join/mgps/rpc/o;

.field context:Landroid/content/Context;

.field dialog:Lcom/join/mgps/dialog/f1;

.field hongbaoLayout:Landroid/widget/LinearLayout;

.field intentFrom:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isFirstLoad:Z

.field private isRequesting:Z

.field listHead:Landroid/widget/TextView;

.field message:Landroid/widget/TextView;

.field more:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field nodata:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pabiNumber:Landroid/widget/TextView;

.field papayHistoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapayHistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private payRedNumber:Landroid/widget/TextView;

.field payStart:Landroid/widget/Button;

.field pn:I

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xListView:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


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
    iput v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isRequesting:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isFirstLoad:Z

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/PAPayCenterActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isRequesting:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/PAPayCenterActivity;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private refreshData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isFirstLoad:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isFirstLoad:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 38
    .line 39
    .line 40
    iput v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PAPayCenterActivity;->loadPayHistory(Lcom/wufan/user/service/protobuf/UserInfo;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PAPayCenterActivity;->loadPayHistory(Lcom/wufan/user/service/protobuf/UserInfo;I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->n()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method


# virtual methods
.method aboutPabi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "http://h5.5fun.com/wf_help_pa_money.html"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->client:Lcom/join/mgps/rpc/o;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0d07c9

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f0a11dc

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pabiNumber:Landroid/widget/TextView;

    .line 49
    .line 50
    const v1, 0x7f0a1032

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->message:Landroid/widget/TextView;

    .line 60
    .line 61
    const v1, 0x7f0a1201

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    .line 72
    const v1, 0x7f0a10d8

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->name:Landroid/widget/TextView;

    .line 82
    .line 83
    const v1, 0x7f0a0e85

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->listHead:Landroid/widget/TextView;

    .line 93
    .line 94
    const v1, 0x7f0a1231

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/Button;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->payStart:Landroid/widget/Button;

    .line 104
    .line 105
    const v1, 0x7f0a1087

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->more:Landroid/widget/ImageView;

    .line 115
    .line 116
    const v1, 0x7f0a1230

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->payRedNumber:Landroid/widget/TextView;

    .line 126
    .line 127
    const v1, 0x7f0a0823

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->hongbaoLayout:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    iget v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->intentFrom:I

    .line 139
    .line 140
    const/4 v2, 0x2

    .line 141
    const/16 v3, 0x8

    .line 142
    .line 143
    if-ne v1, v2, :cond_0

    .line 144
    .line 145
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 146
    .line 147
    const-string v2, "\u609f\u996d\u7ea2\u5305"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->payStart:Landroid/widget/Button;

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->listHead:Landroid/widget/TextView;

    .line 158
    .line 159
    const-string v2, "\u7ea2\u5305\u4ea4\u6613\u8bb0\u5f55"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->name:Landroid/widget/TextView;

    .line 165
    .line 166
    const-string v2, "\u4f59\u989d(\u7ea2\u5305)"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->title_textview:Landroid/widget/TextView;

    .line 173
    .line 174
    const-string v2, "\u6211\u7684\u996d\u7968"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->hongbaoLayout:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/join/mgps/adapter/g6;

    .line 185
    .line 186
    iget-object v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/g6;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->adapter:Lcom/join/mgps/adapter/g6;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/join/mgps/adapter/g6;->a()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->papayHistoryItems:Ljava/util/List;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->adapter:Lcom/join/mgps/adapter/g6;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->payStart:Landroid/widget/Button;

    .line 212
    .line 213
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->more:Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->hongbaoLayout:Landroid/widget/LinearLayout;

    .line 222
    .line 223
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 227
    .line 228
    const/16 v1, 0xa

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 234
    .line 235
    new-instance v1, Lcom/join/mgps/activity/PAPayCenterActivity$a;

    .line 236
    .line 237
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PAPayCenterActivity$a;-><init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->c()V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 249
    .line 250
    new-instance v1, Lcom/join/mgps/activity/PAPayCenterActivity$b;

    .line 251
    .line 252
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PAPayCenterActivity$b;-><init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lw6/b;->b()Lw6/b;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Lw6/b;->a(Lw6/b$a;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->refreshData()V

    .line 266
    .line 267
    .line 268
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

.method dialogDismiss()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method loadPayHistory(Lcom/wufan/user/service/protobuf/UserInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isRequesting:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/PapayRequest;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/PapayRequest;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayRequest;->setLimit(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PapayRequest;->setToken(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PapayRequest;->setUid(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/PapayRequest;->setPage(I)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->intentFrom:I

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne p1, v2, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->client:Lcom/join/mgps/rpc/o;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/o;->b(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->client:Lcom/join/mgps/rpc/o;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/join/mgps/dto/PapayRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/o;->d(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayWalletResultMain;->getError()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayWalletResultMain;->getData()Lcom/join/mgps/dto/PapayResultData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/PAPayCenterActivity;->updateList(Lcom/join/mgps/dto/PapayResultData;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->updateListFooter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->updateListFooter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isRequesting:Z

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->dialogDismiss()V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->isRequesting:Z

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->dialogDismiss()V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->dialogDismiss()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->updateListFooter()V

    .line 111
    .line 112
    .line 113
    :goto_3
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAppMsgChange()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->refreshData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0823

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const v0, 0x7f0a1087

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const v0, 0x7f0a1231

    .line 16
    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/PayStartActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PayStartActivity_$h;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/PAPayCenterActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PAPayCenterActivity_$h;->a(I)Lcom/join/mgps/activity/PAPayCenterActivity_$h;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw6/b;->b()Lw6/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lw6/b;->d(Lw6/b$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method updateList(Lcom/join/mgps/dto/PapayResultData;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResultData;->getWallet()Lcom/join/mgps/dto/PapayInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->intentFrom:I

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pabiNumber:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/PapayInfo;->getRed_envelope()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->hongbaoLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pabiNumber:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/PapayInfo;->getMoney()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->hongbaoLayout:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->papayHistoryItems:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResultData;->getAd()Lcom/join/mgps/dto/PayAdinfo;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->message:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayAdinfo;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->message:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->message:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->adIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayAdinfo;->getIcon()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->message:Landroid/widget/TextView;

    .line 93
    .line 94
    new-instance v6, Lcom/join/mgps/activity/PAPayCenterActivity$c;

    .line 95
    .line 96
    invoke-direct {v6, p0, v4}, Lcom/join/mgps/activity/PAPayCenterActivity$c;-><init>(Lcom/join/mgps/activity/PAPayCenterActivity;Lcom/join/mgps/dto/PayAdinfo;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->payRedNumber:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v6, "\u4f59\u989d<font color = \'#fd5d58\'>"

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/join/mgps/dto/PapayInfo;->getRed_envelope()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, "</font>"

    .line 122
    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 135
    .line 136
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResultData;->getOrders()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-lez v3, :cond_4

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->papayHistoryItems:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    iget v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 157
    .line 158
    if-ne v0, p2, :cond_2

    .line 159
    .line 160
    add-int/2addr v0, v2

    .line 161
    iput v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->pn:I

    .line 162
    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->updateListFooter()V

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    const/16 p2, 0xa

    .line 171
    .line 172
    if-ge p1, p2, :cond_3

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->noMore()V

    .line 175
    .line 176
    .line 177
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->nodata:Landroid/widget/LinearLayout;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    if-ne p2, v2, :cond_5

    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->nodata:Landroid/widget/LinearLayout;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->nodata:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PAPayCenterActivity;->noMore()V

    .line 197
    .line 198
    .line 199
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->adapter:Lcom/join/mgps/adapter/g6;

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 202
    .line 203
    .line 204
    :cond_6
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity;->xListView:Lcom/join/mgps/customview/XListView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
