.class public Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;
.super Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$MyPageAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final keyMouseRockerClick:Landroid/view/View$OnClickListener;

.field private llTabs:Landroid/widget/LinearLayout;

.field private final selectListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

.field private startOffset:I

.field private tvKeyBoard:Landroid/widget/TextView;

.field private tvNumber:Landroid/widget/TextView;

.field private tvRocker:Landroid/widget/TextView;

.field private viewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private viewLine:Landroid/view/View;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/haima/hmcp/R$style;->haima_hmcp_virtual_dialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$8;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$8;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->selectListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 31
    .line 32
    iput-boolean p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget p3, Lcom/haima/hmcp/R$layout;->hm_dialog_add_keyboard:I

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    sget p3, Lcom/haima/hmcp/R$id;->tvBack:I

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/widget/TextView;

    .line 67
    .line 68
    const-string v0, "< \u8fd4\u56de"

    .line 69
    .line 70
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$1;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$1;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    sget p2, Lcom/haima/hmcp/R$id;->llMoreBtn:I

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->initMoreViews(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    sget p2, Lcom/haima/hmcp/R$id;->viewPager:I

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 104
    .line 105
    sget p2, Lcom/haima/hmcp/R$id;->tvKeyBoard:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvKeyBoard:Landroid/widget/TextView;

    .line 114
    .line 115
    sget p2, Lcom/haima/hmcp/R$id;->tvNumber:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvNumber:Landroid/widget/TextView;

    .line 124
    .line 125
    sget p2, Lcom/haima/hmcp/R$id;->tvRocker:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Landroid/widget/TextView;

    .line 132
    .line 133
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvRocker:Landroid/widget/TextView;

    .line 134
    .line 135
    sget p2, Lcom/haima/hmcp/R$id;->viewLine:I

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLine:Landroid/view/View;

    .line 142
    .line 143
    sget p2, Lcom/haima/hmcp/R$id;->llTabs:I

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Landroid/widget/LinearLayout;

    .line 150
    .line 151
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->llTabs:Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLine:Landroid/view/View;

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .line 163
    new-instance p2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewList:Ljava/util/List;

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->createKeyboardLayout(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewList:Ljava/util/List;

    .line 178
    .line 179
    const/4 p3, 0x1

    .line 180
    invoke-virtual {p0, p3}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->createKeyboardLayout(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewList:Ljava/util/List;

    .line 188
    .line 189
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->createMouseRockerView()Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 197
    .line 198
    new-instance p3, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$MyPageAdapter;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewList:Ljava/util/List;

    .line 201
    .line 202
    invoke-direct {p3, p0, v0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$MyPageAdapter;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 206
    .line 207
    .line 208
    sget p2, Lcom/haima/hmcp/R$id;->hmKeyboard:I

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout;

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->initListener()V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLine:Landroid/view/View;

    .line 220
    .line 221
    new-instance p2, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;

    .line 222
    .line 223
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$2;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->llTabs:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->startOffset:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->startOffset:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewLine:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->createViewBean(Ljava/lang/String;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method private createMouseRockerView()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/haima/hmcp/R$layout;->hm_include_mouse:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lcom/haima/hmcp/R$id;->imgRockerWASD:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    sget v1, Lcom/haima/hmcp/R$id;->imgRockerTBLR:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseMid:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseLeft:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseRight:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseWheelUp:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseWheelDown:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->keyMouseRockerClick:Landroid/view/View$OnClickListener;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method private createViewBean(Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 p4, 0x3

    .line 12
    if-lt p3, p4, :cond_0

    .line 13
    .line 14
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 15
    .line 16
    const/4 p4, 0x2

    .line 17
    invoke-interface {p3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 21
    .line 22
    new-instance p4, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 23
    .line 24
    invoke-direct {p4, p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->refreshMoreKeyUI()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p4, p5, p3}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->createNoKeyBean(III)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    new-instance p5, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 47
    .line 48
    invoke-direct {p5, p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 55
    .line 56
    invoke-interface {p1, p3}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;->onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$4;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvKeyBoard:Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$5;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvNumber:Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$6;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$6;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->tvRocker:Landroid/widget/TextView;

    .line 32
    .line 33
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$7;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$7;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method protected createKeyboardLayout(I)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->selectListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v2}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout;->initChild(ILcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
