.class Lcom/join/mgps/fragment/n$i;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/n;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 2
    .line 3
    const v0, 0x7f0d03c8

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/n$i;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 10
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    const p2, 0x7f0a0440

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/customview/ClouldItemView3;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/ClouldItemView3;->setCloudItemListener(Lw6/c;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v9, 0x1

    .line 28
    sub-int/2addr v0, v9

    .line 29
    if-ne v0, v8, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/join/mgps/fragment/n;->n:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v2, v0

    .line 42
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 43
    .line 44
    iget-object v7, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 45
    .line 46
    iget v3, v7, Lcom/join/mgps/fragment/n;->m:I

    .line 47
    .line 48
    iget v4, v7, Lcom/join/mgps/fragment/n;->l:I

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v0, p2

    .line 53
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/join/mgps/fragment/n;->n:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v2, v0

    .line 68
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 69
    .line 70
    iget-object v7, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 71
    .line 72
    iget v3, v7, Lcom/join/mgps/fragment/n;->m:I

    .line 73
    .line 74
    iget v4, v7, Lcom/join/mgps/fragment/n;->l:I

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v0, p2

    .line 79
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->u:Lcom/join/mgps/activity/GameMainActivity4;

    .line 85
    .line 86
    iget-boolean v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->isVBA:Z

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/ClouldItemView3;->setGBAType(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->u:Lcom/join/mgps/activity/GameMainActivity4;

    .line 94
    .line 95
    iget-boolean v1, v0, Lcom/join/mgps/activity/GameMainActivity4;->marcketDownEnable:Z

    .line 96
    .line 97
    iget-boolean v0, v0, Lcom/join/mgps/activity/GameMainActivity4;->marcketPGNEnable:Z

    .line 98
    .line 99
    invoke-virtual {p2, v1, v0}, Lcom/join/mgps/customview/ClouldItemView3;->setPGN(ZZ)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 103
    .line 104
    iget p2, p2, Lcom/join/mgps/fragment/n;->l:I

    .line 105
    .line 106
    const/4 v0, 0x4

    .line 107
    const v1, 0x7f0a0f34

    .line 108
    .line 109
    .line 110
    if-ne p2, v0, :cond_1

    .line 111
    .line 112
    invoke-virtual {p1, v1, v9}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getTodayCoin()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, ""

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    const v1, 0x7f0a1a4d

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/join/mgps/fragment/n$i;->e:Lcom/join/mgps/fragment/n;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/join/mgps/fragment/n;->r:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getTotalCoin()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    const v0, 0x7f0a1a71

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_1
    const/4 p2, 0x0

    .line 191
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    :goto_1
    return-void
.end method
