.class Lcom/join/mgps/activity/FriendActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->getGameConfigv2()V
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
.field final synthetic b:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->b:Lcom/join/mgps/activity/FriendActivity;

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
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 6
    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-gtz p2, :cond_1

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-gtz p2, :cond_2

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 140
    .line 141
    new-instance v1, Lcom/join/mgps/dto/GameInfoBean;

    .line 142
    .line 143
    invoke-direct {v1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getCollection_id()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setCollection_id(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setPic_remote(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_ico()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_ico(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_name()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setGame_name(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getRoom_count()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setRoom_count(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getTitle()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getPic_cover()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setPic_cover(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->gameInfoBeanList:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/join/mgps/activity/FriendActivity;->gameAdapter:Lcom/join/mgps/activity/FriendActivity$f;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_4
    :goto_1
    return-void

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/FriendActivity$d;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 230
    .line 231
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/FriendActivity;->toast(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_2
    return-void
.end method
