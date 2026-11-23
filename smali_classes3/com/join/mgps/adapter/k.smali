.class public Lcom/join/mgps/adapter/k;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;",
        "Lv2/c;",
        ">;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/k;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public k(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method protected l(Lv2/c;ILcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "item"
        }
    .end annotation

    .line 1
    const p2, 0x7f0a0835

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/k;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "(\u5f53\u524d\u9009\u62e9)"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const p2, 0x7f0a0836

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getVideoCodeRateTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p2, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/4 v0, 0x1

    .line 75
    xor-int/2addr p2, v0

    .line 76
    const v1, 0x7f0a09fe

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1, p2}, Lv2/c;->h(IZ)Lv2/c;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getIsVip()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    const p2, 0x7f081046

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const p2, 0x7f0810cd

    .line 93
    .line 94
    .line 95
    :goto_1
    const v1, 0x7f0a038b

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1, p2}, Lv2/c;->f(II)Lv2/c;

    .line 99
    .line 100
    .line 101
    sget-object p2, Lcom/join/mgps/adapter/k$a;->a:[I

    .line 102
    .line 103
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getState()Lcom/wufan/user/service/protobuf/enumeration/ServerState;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    aget p2, p2, p3

    .line 112
    .line 113
    const p3, 0x7f0a1a3c

    .line 114
    .line 115
    .line 116
    if-eq p2, v0, :cond_5

    .line 117
    .line 118
    const/4 v0, 0x2

    .line 119
    if-eq p2, v0, :cond_4

    .line 120
    .line 121
    const/4 v0, 0x3

    .line 122
    if-eq p2, v0, :cond_3

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    if-eq p2, v0, :cond_2

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const-string p2, "\u7a7a\u95f2"

    .line 129
    .line 130
    invoke-virtual {p1, p3, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 131
    .line 132
    .line 133
    const p2, 0x7f08104c

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3, p2}, Lv2/c;->f(II)Lv2/c;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    const-string p2, "\u505c\u7528"

    .line 141
    .line 142
    invoke-virtual {p1, p3, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 143
    .line 144
    .line 145
    const p2, 0x7f081057

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p3, p2}, Lv2/c;->f(II)Lv2/c;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const-string p2, "\u7e41\u5fd9"

    .line 153
    .line 154
    invoke-virtual {p1, p3, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 155
    .line 156
    .line 157
    const p2, 0x7f081111

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p3, p2}, Lv2/c;->f(II)Lv2/c;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    const-string p2, "\u5df2\u6ee1"

    .line 165
    .line 166
    invoke-virtual {p1, p3, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 167
    .line 168
    .line 169
    const p2, 0x7f081108

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p3, p2}, Lv2/c;->f(II)Lv2/c;

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curServerId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position",
            "item"
        }
    .end annotation

    .line 1
    check-cast p1, Lv2/c;

    .line 2
    .line 3
    check-cast p3, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/k;->l(Lv2/c;ILcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "context",
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/k;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "viewType"
        }
    .end annotation

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d03c9

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method
