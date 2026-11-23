.class public Lcom/join/mgps/activity/AndroidPermissionDialogActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"


# static fields
.field public static final KEY_PERMISSION_PARAMS:Ljava/lang/String; = "_permission_params"


# instance fields
.field dialog_button_close:Landroid/widget/Button;

.field dialog_button_i_know:Landroid/widget/Button;

.field dialog_button_keep:Landroid/widget/Button;

.field private dialog_content:Landroid/widget/TextView;

.field private dialog_title_image:Landroid/widget/ImageView;

.field private ll_content:Landroid/widget/LinearLayout;

.field permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->ll_content:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00ca

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a04c2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_title_image:Landroid/widget/ImageView;

    .line 23
    .line 24
    const p1, 0x7f0a04bb

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_title_image:Landroid/widget/ImageView;

    .line 36
    .line 37
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0a04b6

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/Button;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_keep:Landroid/widget/Button;

    .line 52
    .line 53
    const p1, 0x7f0a04b4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/Button;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_close:Landroid/widget/Button;

    .line 63
    .line 64
    const p1, 0x7f0a04b5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_i_know:Landroid/widget/Button;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "_permission_params"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 94
    .line 95
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/AndroidPermissionParams;->getContent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_1

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_content:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/AndroidPermissionParams;->getContent()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/AndroidPermissionParams;->getCancelText()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_keep:Landroid/widget/Button;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/mgps/dto/AndroidPermissionParams;->getCancelText()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    const p1, 0x7f0a0e9a

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/AndroidPermissionParams;->isSingleBtn()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const/16 v1, 0x8

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    const/16 v0, 0x8

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x0

    .line 165
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    const p1, 0x7f0a0e9b

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->permissionParams:Lcom/join/mgps/dto/AndroidPermissionParams;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/dto/AndroidPermissionParams;->isSingleBtn()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    const/4 v1, 0x0

    .line 184
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_5
    const p1, 0x7f0a03b8

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-instance v0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$a;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$a;-><init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_title_image:Landroid/widget/ImageView;

    .line 203
    .line 204
    new-instance v0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$b;

    .line 205
    .line 206
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$b;-><init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_close:Landroid/widget/Button;

    .line 213
    .line 214
    new-instance v0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;-><init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_keep:Landroid/widget/Button;

    .line 223
    .line 224
    new-instance v0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$d;

    .line 225
    .line 226
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$d;-><init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->dialog_button_i_know:Landroid/widget/Button;

    .line 233
    .line 234
    new-instance v0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$e;

    .line 235
    .line 236
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$e;-><init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method
