.class public Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d078b
.end annotation


# instance fields
.field coinNumber:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field dialogLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_button_ok:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_close:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field message:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field nonticeText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field state:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field sub_content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_position:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->state:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v3, :cond_2

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v4, :cond_2

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const-string v5, "\u514d\u8d39\u9886\u94dc\u677f"

    .line 16
    .line 17
    if-eq v0, v4, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->tv_position:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v1, "\u652f\u4ed8\u6210\u529f"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialogLayout:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_button_ok:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_content:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "\u60a8\u7684\u94dc\u677f\u4e0d\u591a\u5566\uff0c\u53bb\u514d\u8d39\u9886\u70b9\u5427"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->message:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/e;->e(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->animtopOut(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->tv_position:Landroid/widget/TextView;

    .line 77
    .line 78
    const-string v3, "\u94dc\u677f\u4f59\u989d\u4e0d\u8db3"

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialogLayout:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_button_ok:Landroid/widget/Button;

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_content:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->message:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_content:Landroid/widget/TextView;

    .line 112
    .line 113
    const/high16 v1, 0x41a00000    # 20.0f

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->sub_content:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->sub_content:Landroid/widget/TextView;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "\u5f53\u524d\u4f59\u989d\uff1a"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v2, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->coinNumber:I

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialogLayout:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->message:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 167
    .line 168
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/join/mgps/Util/e;->e(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->animtopOut(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialogLayout:Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_button_ok:Landroid/widget/Button;

    .line 191
    .line 192
    const-string v1, "\u786e\u8ba4"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->dialog_content:Landroid/widget/TextView;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->message:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->tv_position:Landroid/widget/TextView;

    .line 205
    .line 206
    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    return-void
.end method

.method animtopOut(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->nonticeText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/e;->f(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finishActivity()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method dialog_button_ok()V
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
    iget v1, p0, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->state:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/join/mgps/rpc/h;->s:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method finishActivity()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method iv_close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/NoticeTopAnimActivityDialog;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method nonticeText()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http://h5.5fun.com/helo_copper.html"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
