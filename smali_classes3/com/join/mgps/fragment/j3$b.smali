.class Lcom/join/mgps/fragment/j3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j3;->V(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/dto/GamelistRankingmainbean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/j3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

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
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->showLodingFailed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
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
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0xc8

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne p1, v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/mgps/dto/GamelistRankingmainbean;

    .line 35
    .line 36
    new-instance p2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamelistRankingmainbean;->getFav_list()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0xa

    .line 52
    .line 53
    if-ge v0, v2, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v0, Lcom/join/mgps/fragment/j3;->t:Z

    .line 59
    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v0, v2, :cond_2

    .line 66
    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 72
    .line 73
    new-instance v9, Lcom/join/mgps/fragment/j3$g;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    move-object v3, v9

    .line 87
    move-object v5, v2

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/fragment/j3$g;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    iget-object v3, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 97
    .line 98
    invoke-static {v3}, Lcom/join/mgps/fragment/j3;->Q(Lcom/join/mgps/fragment/j3;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    iget-object v3, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/join/mgps/fragment/j3;->Q(Lcom/join/mgps/fragment/j3;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-lez v3, :cond_1

    .line 115
    .line 116
    iget-object v5, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 117
    .line 118
    iget v3, v5, Lcom/join/mgps/fragment/j3;->k:I

    .line 119
    .line 120
    if-ne v3, v1, :cond_1

    .line 121
    .line 122
    new-instance v3, Lcom/join/mgps/fragment/j3$g;

    .line 123
    .line 124
    invoke-static {v5}, Lcom/join/mgps/fragment/j3;->Q(Lcom/join/mgps/fragment/j3;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const/4 v7, 0x2

    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    move-object v4, v3

    .line 138
    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/fragment/j3$g;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/j3;->Z(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 154
    .line 155
    iget p2, p1, Lcom/join/mgps/fragment/j3;->k:I

    .line 156
    .line 157
    if-ne p2, v1, :cond_4

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->O()V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->Y()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 168
    .line 169
    iget p2, p1, Lcom/join/mgps/fragment/j3;->k:I

    .line 170
    .line 171
    if-ne p2, v1, :cond_6

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->O()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->Y()V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$b;->b:Lcom/join/mgps/fragment/j3;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j3;->showLodingFailed()V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-void
.end method
