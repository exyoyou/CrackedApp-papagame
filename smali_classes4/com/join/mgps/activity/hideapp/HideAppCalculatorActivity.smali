.class public Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;,
        Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d006c
.end annotation


# instance fields
.field private adapter:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;

.field private caled:Z

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;",
            ">;"
        }
    .end annotation
.end field

.field hideAppMask:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isFromBackground:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private pwd:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvCalResult:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 10
    .line 11
    const-string v0, "0"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->convertPercentToFloat()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->checkCal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->clearInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkCal()V
    .locals 8

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, "\u8fd0\u7b97\u9519\u8bef"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "+"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 19
    .line 20
    const-string v6, "\\+"

    .line 21
    .line 22
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    array-length v6, v2

    .line 27
    if-ne v6, v4, :cond_4

    .line 28
    .line 29
    aget-object v6, v2, v3

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    aget-object v2, v2, v5

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-float/2addr v6, v2

    .line 42
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 47
    .line 48
    iput-boolean v5, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 53
    .line 54
    const-string v6, "-"

    .line 55
    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 63
    .line 64
    const-string v6, "\\-"

    .line 65
    .line 66
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    array-length v6, v2

    .line 71
    if-ne v6, v4, :cond_4

    .line 72
    .line 73
    aget-object v6, v2, v3

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    aget-object v2, v2, v5

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    sub-float/2addr v6, v2

    .line 86
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 91
    .line 92
    iput-boolean v5, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 96
    .line 97
    const-string v6, "\u00d7"

    .line 98
    .line 99
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 106
    .line 107
    const-string v6, "\\\u00d7"

    .line 108
    .line 109
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    array-length v6, v2

    .line 114
    if-ne v6, v4, :cond_4

    .line 115
    .line 116
    aget-object v6, v2, v3

    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    aget-object v2, v2, v5

    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    mul-float v6, v6, v2

    .line 129
    .line 130
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 135
    .line 136
    iput-boolean v5, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 140
    .line 141
    const-string v6, "\u00f7"

    .line 142
    .line 143
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 150
    .line 151
    const-string v6, "\\\u00f7"

    .line 152
    .line 153
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    array-length v6, v2

    .line 158
    if-ne v6, v4, :cond_4

    .line 159
    .line 160
    aget-object v6, v2, v5

    .line 161
    .line 162
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    const/4 v7, 0x0

    .line 167
    cmpl-float v6, v6, v7

    .line 168
    .line 169
    if-nez v6, :cond_3

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->showMessage(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_3
    aget-object v6, v2, v3

    .line 183
    .line 184
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    aget-object v2, v2, v5

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    div-float/2addr v6, v2

    .line 195
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iput-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 200
    .line 201
    iput-boolean v5, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 202
    .line 203
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 204
    .line 205
    const-string v6, "\\."

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    array-length v6, v2

    .line 212
    if-ne v6, v4, :cond_5

    .line 213
    .line 214
    aget-object v4, v2, v5

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-nez v4, :cond_5

    .line 221
    .line 222
    aget-object v2, v2, v3

    .line 223
    .line 224
    iput-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 225
    .line 226
    :cond_5
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :catch_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->showMessage(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    :goto_1
    return-void
.end method

.method private checkPwd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->pwd:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->isFromBackground:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$d3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private clearInput()V
    .locals 2

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private convertPercentToFloat()V
    .locals 9

    .line 1
    const-string v0, "\u00f7"

    .line 2
    .line 3
    const-string v1, "\u00d7"

    .line 4
    .line 5
    const-string v2, "-"

    .line 6
    .line 7
    const-string v3, "+"

    .line 8
    .line 9
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iput-object v4, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/high16 v5, 0x42c80000    # 100.0f

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x2

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "\\+"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v1, v0

    .line 41
    if-ne v1, v8, :cond_4

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    aget-object v2, v0, v7

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    aget-object v0, v0, v6

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    div-float/2addr v0, v5

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "\\-"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    array-length v1, v0

    .line 91
    if-ne v1, v8, :cond_4

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    aget-object v3, v0, v7

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    aget-object v0, v0, v6

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    div-float/2addr v0, v5

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 132
    .line 133
    const-string v2, "\\\u00d7"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    array-length v2, v0

    .line 140
    if-ne v2, v8, :cond_4

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    aget-object v3, v0, v7

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    aget-object v0, v0, v6

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    div-float/2addr v0, v5

    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_3

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 181
    .line 182
    const-string v2, "\\\u00f7"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    array-length v2, v1

    .line 189
    if-ne v2, v8, :cond_4

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    aget-object v3, v1, v7

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    aget-object v0, v1, v6

    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    div-float/2addr v0, v5

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    div-float/2addr v0, v5

    .line 228
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 233
    .line 234
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 235
    .line 236
    const-string v1, "\\."

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    array-length v1, v0

    .line 243
    if-ne v1, v8, :cond_5

    .line 244
    .line 245
    aget-object v1, v0, v6

    .line 246
    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_5

    .line 252
    .line 253
    aget-object v0, v0, v7

    .line 254
    .line 255
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 256
    .line 257
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 258
    .line 259
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    const-string v0, "\u8fd0\u7b97\u9519\u8bef"

    .line 270
    .line 271
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->showMessage(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "0"

    .line 275
    .line 276
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    :goto_1
    return-void
.end method

.method private initBtnData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 9
    .line 10
    const-string v2, "AC"

    .line 11
    .line 12
    const-string v3, "#A5A5A5"

    .line 13
    .line 14
    const-string v4, "#000000"

    .line 15
    .line 16
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 25
    .line 26
    const-string v2, "DEL"

    .line 27
    .line 28
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 37
    .line 38
    const-string v2, "%"

    .line 39
    .line 40
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 49
    .line 50
    const-string v2, "\u00f7"

    .line 51
    .line 52
    const-string v3, "#FEA00A"

    .line 53
    .line 54
    const-string v4, "#FFFFFF"

    .line 55
    .line 56
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 63
    .line 64
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 65
    .line 66
    const-string v2, "7"

    .line 67
    .line 68
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 77
    .line 78
    const-string v2, "8"

    .line 79
    .line 80
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 87
    .line 88
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 89
    .line 90
    const-string v2, "9"

    .line 91
    .line 92
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 101
    .line 102
    const-string v2, "\u00d7"

    .line 103
    .line 104
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 111
    .line 112
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 113
    .line 114
    const-string v2, "4"

    .line 115
    .line 116
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 123
    .line 124
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 125
    .line 126
    const-string v2, "5"

    .line 127
    .line 128
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 135
    .line 136
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 137
    .line 138
    const-string v2, "6"

    .line 139
    .line 140
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 149
    .line 150
    const-string v2, "+"

    .line 151
    .line 152
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 159
    .line 160
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 161
    .line 162
    const-string v2, "1"

    .line 163
    .line 164
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 171
    .line 172
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 173
    .line 174
    const-string v2, "2"

    .line 175
    .line 176
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 183
    .line 184
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 185
    .line 186
    const-string v2, "3"

    .line 187
    .line 188
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 195
    .line 196
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 197
    .line 198
    const-string v2, "-"

    .line 199
    .line 200
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 207
    .line 208
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 209
    .line 210
    const-string v2, "0"

    .line 211
    .line 212
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 219
    .line 220
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 221
    .line 222
    const-string v2, "."

    .line 223
    .line 224
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->datas:Ljava/util/List;

    .line 231
    .line 232
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;

    .line 233
    .line 234
    const-string v2, "="

    .line 235
    .line 236
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->context:Landroid/content/Context;

    .line 245
    .line 246
    const/4 v2, 0x4

    .line 247
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;

    .line 251
    .line 252
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$a;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->adapter:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->adapter:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$c;

    .line 276
    .line 277
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;

    .line 278
    .line 279
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$b;-><init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->pwd:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    new-instance v1, Landroid/content/ComponentName;

    .line 298
    .line 299
    const-string v2, "default.alias"

    .line 300
    .line 301
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Landroid/content/ComponentName;

    .line 309
    .line 310
    const-string v3, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"

    .line 311
    .line 312
    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const/4 v3, 0x2

    .line 316
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Landroid/content/ComponentName;

    .line 320
    .line 321
    const-string v4, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"

    .line 322
    .line 323
    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 327
    .line 328
    .line 329
    invoke-static {p0}, Lcom/join/mgps/Util/j2;->a(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->context:Landroid/content/Context;

    .line 333
    .line 334
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$d3;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 342
    .line 343
    .line 344
    :cond_0
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->hideAppMask:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/high16 v2, 0x4000000

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/16 v3, 0x500

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/high16 v2, -0x80000000

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->statubar:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->statubar:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->pwd:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->initBtnData()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method del()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "0"

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v2, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    .line 4
    .line 5
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
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->context:Landroid/content/Context;

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

.method writeText(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "isOp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ".*[\\+\\-\\\u00d7\\\u00f7]$"

    .line 14
    .line 15
    const-string v2, "."

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez p2, :cond_4

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p2, "0"

    .line 37
    .line 38
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 57
    .line 58
    iput-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 94
    .line 95
    iput-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->checkCal()V

    .line 112
    .line 113
    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 132
    .line 133
    iput-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->caled:Z

    .line 134
    .line 135
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->tvCalResult:Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->result:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;->checkPwd()V

    .line 143
    .line 144
    .line 145
    return-void
.end method
