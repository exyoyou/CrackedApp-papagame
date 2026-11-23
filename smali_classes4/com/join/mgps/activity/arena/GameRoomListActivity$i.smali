.class Lcom/join/mgps/activity/arena/GameRoomListActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigv2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hasdistory:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 13
    .line 14
    if-eqz p1, :cond_7

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_7

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-gtz p2, :cond_2

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-gtz p2, :cond_3

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 152
    .line 153
    new-instance v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 154
    .line 155
    invoke-direct {v1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setCollection_id(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setPic_remote(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_ico(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getRoom_count()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setRoom_count(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getPic_cover()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setPic_cover(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 221
    .line 222
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 226
    .line 227
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoBeanList:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameAdapter:Lcom/join/mgps/adapter/f2;

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivityForGetConfigFailure()V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$i;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 255
    .line 256
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 257
    .line 258
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    :goto_3
    return-void
.end method
