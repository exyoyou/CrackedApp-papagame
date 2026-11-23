.class Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlotAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/MenuFrameActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/Slot;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->slots:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;-><init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_slot:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 39
    .line 40
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cover:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 49
    .line 50
    sget v0, Lorg/ppsspp/ppsspp/R$id;->date:I

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 59
    .line 60
    sget v0, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 67
    .line 68
    sget v0, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 75
    .line 76
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/papa91/arc/bean/Slot;

    .line 92
    .line 93
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getDate()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 112
    .line 113
    instance-of v1, v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v2, "file://"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    new-instance v2, Ljava/io/File;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;

    .line 157
    .line 158
    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;-><init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;Lcom/papa91/arc/bean/Slot;I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->load:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_2

    .line 181
    .line 182
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 183
    .line 184
    const/16 v0, 0x8

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_2
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->del:Landroid/view/View;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p3, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$ViewHolder;->save:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-object p2
.end method
