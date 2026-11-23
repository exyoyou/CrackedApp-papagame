.class Lcom/join/mgps/activity/SearchListActivity1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$000(Lcom/join/mgps/activity/SearchListActivity1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 14
    .line 15
    const/16 p3, 0x8

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    instance-of p2, p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p2, Lcom/join/mgps/activity/SearchListActivity1;->showAuto:Z

    .line 28
    .line 29
    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p3, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->access$100(Lcom/join/mgps/activity/SearchListActivity1;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1;->loading()V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 78
    .line 79
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_0
    instance-of p2, p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 89
    .line 90
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 95
    .line 96
    invoke-static {p3}, Lcom/join/mgps/activity/SearchListActivity1;->access$200(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string p3, "searchSuggest"

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$200(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object p3, Lcom/papa/sim/statistic/Event;->clickDetailFromSearchResult:Lcom/papa/sim/statistic/Event;

    .line 135
    .line 136
    invoke-virtual {p1, p3, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_1
    if-eqz p2, :cond_5

    .line 142
    .line 143
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 144
    .line 145
    if-nez p1, :cond_2

    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 159
    .line 160
    invoke-static {p3}, Lcom/join/mgps/activity/SearchListActivity1;->access$200(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 172
    .line 173
    sget-object p3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordClick:Lcom/papa/sim/statistic/Event;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    invoke-virtual {p4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p4

    .line 183
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string p5, "2"

    .line 188
    .line 189
    invoke-static {p2, p3, p5, p4, p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$300(Lcom/join/mgps/activity/SearchListActivity1;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 194
    .line 195
    iget-object p2, p2, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    if-eqz p3, :cond_4

    .line 210
    .line 211
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    invoke-virtual {p4}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p4

    .line 221
    iput-object p4, p3, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 222
    .line 223
    :cond_4
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 224
    .line 225
    invoke-static {p3, p2}, Lcom/join/mgps/activity/SearchListActivity1;->access$100(Lcom/join/mgps/activity/SearchListActivity1;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/join/mgps/activity/SearchListActivity1;->loading()V

    .line 231
    .line 232
    .line 233
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 234
    .line 235
    iget-object p2, p2, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 236
    .line 237
    invoke-static {p2}, Lr7/a;->b(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1$e;->b:Lcom/join/mgps/activity/SearchListActivity1;

    .line 241
    .line 242
    sget-object p3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordClick:Lcom/papa/sim/statistic/Event;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 245
    .line 246
    .line 247
    move-result-object p4

    .line 248
    invoke-virtual {p4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const-string p5, "1"

    .line 257
    .line 258
    invoke-static {p2, p3, p5, p4, p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$300(Lcom/join/mgps/activity/SearchListActivity1;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_5
    :goto_0
    return-void
.end method
