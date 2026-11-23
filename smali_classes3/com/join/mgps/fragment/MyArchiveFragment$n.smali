.class Lcom/join/mgps/fragment/MyArchiveFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->N(Lcom/join/mgps/fragment/MyArchiveFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 41
    .line 42
    iget p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 43
    .line 44
    const-string v0, "\u8bf7\u9009\u62e9\u5b58\u6863"

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-ne p1, v1, :cond_6

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v4, v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x6

    .line 85
    if-ne v4, v5, :cond_2

    .line 86
    .line 87
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->O(Lcom/join/mgps/fragment/MyArchiveFragment;Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    new-instance v0, Lcom/join/mgps/dialog/w;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const v2, 0x7f13017f

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    .line 141
    .line 142
    .line 143
    const-string v1, "\u4e0b\u8f7d\u987b\u77e5"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "\u4e0b\u8f7d\u540e\uff0c\u5c06\u4ee5\u5907\u4efd\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u672c\u5730\u540c\u540d\u5b58\u6863"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "\u786e\u5b9a"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v1, "\u53d6\u6d88"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;

    .line 168
    .line 169
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$n$c;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$n$b;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$n$b;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$n$a;

    .line 186
    .line 187
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$n$a;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 204
    .line 205
    iget-object v2, v2, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_8

    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-ne v4, v1, :cond_7

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    const/4 v5, 0x5

    .line 234
    if-eq v4, v5, :cond_7

    .line 235
    .line 236
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-nez v2, :cond_9

    .line 245
    .line 246
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->J:Lcom/join/mgps/dialog/f1;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 260
    .line 261
    new-instance v2, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;

    .line 262
    .line 263
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->p0(Ljava/util/List;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 267
    .line 268
    .line 269
    :goto_2
    return-void
.end method
