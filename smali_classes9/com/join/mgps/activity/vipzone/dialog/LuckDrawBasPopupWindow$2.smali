.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
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
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field final synthetic val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
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
    if-ne p1, v0, :cond_7

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 24
    .line 25
    iget v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 30
    .line 31
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getMissing_prize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x2

    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    iput v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 59
    .line 60
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->setHasAddAddress(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 108
    .line 109
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 112
    .line 113
    invoke-direct {v0, v3}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 114
    .line 115
    .line 116
    iput v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 117
    .line 118
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-lez p1, :cond_5

    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 165
    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_7

    .line 173
    .line 174
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 177
    .line 178
    const/16 p2, 0x8

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->nullHistory:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    :cond_7
    return-void
.end method
