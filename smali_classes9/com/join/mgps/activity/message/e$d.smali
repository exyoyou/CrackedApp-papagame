.class Lcom/join/mgps/activity/message/e$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/e$d$c;,
        Lcom/join/mgps/activity/message/e$d$b;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->p:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->p:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->p:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    .line 10
    .line 11
    iget p1, p1, Lcom/join/mgps/activity/message/e$c;->b:I

    .line 12
    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/e$d;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f0a1a45

    .line 7
    .line 8
    .line 9
    const v2, 0x7f0a1a48

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq p3, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p3, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/join/mgps/activity/message/e;->j:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const p3, 0x7f0d078e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance p3, Lcom/join/mgps/activity/message/e$d$b;

    .line 38
    .line 39
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/message/e$d$b;-><init>(Lcom/join/mgps/activity/message/e$d;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->b:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->a:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Lcom/join/mgps/activity/message/e$d$b;

    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->p:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/join/mgps/activity/message/e$c;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 81
    .line 82
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->b:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getAdd_time()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p3, p3, Lcom/join/mgps/activity/message/e$d$b;->a:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getTitle()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    if-nez p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 104
    .line 105
    iget-object p2, p2, Lcom/join/mgps/activity/message/e;->j:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const p3, 0x7f0d078d

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-instance p3, Lcom/join/mgps/activity/message/e$d$c;

    .line 119
    .line 120
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/message/e$d$c;-><init>(Lcom/join/mgps/activity/message/e$d;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->a:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->b:Landroid/widget/TextView;

    .line 138
    .line 139
    const v0, 0x7f0a1541    # 1.8354382E38f

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->c:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    check-cast p3, Lcom/join/mgps/activity/message/e$d$c;

    .line 159
    .line 160
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->p:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    .line 169
    .line 170
    iget-object p1, p1, Lcom/join/mgps/activity/message/e$c;->a:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 173
    .line 174
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->b:Landroid/widget/TextView;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getAdd_time()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->c:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v1, Lcom/join/mgps/activity/message/e$d$a;

    .line 186
    .line 187
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/message/e$d$a;-><init>(Lcom/join/mgps/activity/message/e$d;Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p3, p3, Lcom/join/mgps/activity/message/e$d$c;->a:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getTitle()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
