.class Lcom/join/mgps/activity/GameDetailActivity$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$i;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "view"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "comments"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 93
    .line 94
    iget v5, p1, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const/4 p1, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$a;->c:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListItemBean;->getComment_score_switch()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ""

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 212
    .line 213
    .line 214
    return-void
.end method
