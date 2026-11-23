.class Lcom/join/mgps/customview/i0$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/i0$c$a;,
        Lcom/join/mgps/customview/i0$c$b;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/i0$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/customview/i0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/i0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/i0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/i0$c;->c:Lcom/join/mgps/customview/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/customview/i0$b;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/customview/i0$b;->a:I

    .line 10
    .line 11
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/customview/i0$b;

    .line 8
    .line 9
    iget v0, v0, Lcom/join/mgps/customview/i0$b;->a:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    :goto_0
    move-object p3, v3

    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const p3, 0x7f0d0490

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Lcom/join/mgps/customview/i0$c$b;

    .line 39
    .line 40
    invoke-direct {p3, p0}, Lcom/join/mgps/customview/i0$c$b;-><init>(Lcom/join/mgps/customview/i0$c;)V

    .line 41
    .line 42
    .line 43
    const v4, 0x7f0a19d3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v4, p3, Lcom/join/mgps/customview/i0$c$b;->a:Landroid/widget/TextView;

    .line 53
    .line 54
    const v4, 0x7f0a0a7b

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .line 63
    iput-object v4, p3, Lcom/join/mgps/customview/i0$c$b;->b:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    new-instance p2, Lcom/join/mgps/customview/i0$c$a;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/i0$c$a;-><init>(Lcom/join/mgps/customview/i0$c;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const v4, 0x7f0d0470

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const v4, 0x7f0a1a48

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v4, p2, Lcom/join/mgps/customview/i0$c$a;->a:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object v5, v3

    .line 104
    move-object v3, p2

    .line 105
    move-object p2, p3

    .line 106
    :goto_1
    move-object p3, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    if-eq v0, v2, :cond_4

    .line 109
    .line 110
    if-eq v0, v1, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Lcom/join/mgps/customview/i0$c$b;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Lcom/join/mgps/customview/i0$c$a;

    .line 125
    .line 126
    move-object v5, v3

    .line 127
    move-object v3, p3

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    if-eq v0, v2, :cond_7

    .line 130
    .line 131
    if-eq v0, v1, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/customview/i0$c$b;->a:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/join/mgps/customview/i0$b;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/join/mgps/customview/i0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/join/mgps/dto/GroupInfoBean;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/join/mgps/customview/i0$b;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/join/mgps/customview/i0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupInfoBean;->isSelected()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    iget-object p1, p3, Lcom/join/mgps/customview/i0$c$b;->b:Landroid/widget/ImageView;

    .line 170
    .line 171
    const/4 p3, 0x0

    .line 172
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/customview/i0$c$b;->b:Landroid/widget/ImageView;

    .line 177
    .line 178
    const/16 p3, 0x8

    .line 179
    .line 180
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    iget-object p3, v3, Lcom/join/mgps/customview/i0$c$a;->a:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/customview/i0$c;->b:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/join/mgps/customview/i0$b;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/join/mgps/customview/i0$b;->c:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
