.class public Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableListviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;,
        Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;
    }
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marginTop:I

.field private maxHeight:I

.field private minHeight:I

.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lorg/ppsspp/ppsspp/R$dimen;->wdp80:I

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p3, Lorg/ppsspp/ppsspp/R$dimen;->wdp125:I

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    float-to-int p1, p1

    .line 32
    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget p2, Lorg/ppsspp/ppsspp/R$dimen;->wdp14:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    float-to-int p1, p1

    .line 45
    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_expand_chidren:I

    .line 13
    .line 14
    invoke-virtual {p4, v0, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    new-instance p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;

    .line 19
    .line 20
    invoke-direct {p5, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;)V

    .line 21
    .line 22
    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$id;->chidren_item:I

    .line 24
    .line 25
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    .line 32
    .line 33
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 34
    .line 35
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 42
    .line 43
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    .line 44
    .line 45
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 52
    .line 53
    sget v0, Lorg/ppsspp/ppsspp/R$id;->rl_root:I

    .line 54
    .line 55
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    iput-object v0, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {p4, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p5

    .line 71
    check-cast p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChild(II)Lorg/ppsspp/ppsspp/CheatInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, "\uff08"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v3, -0x1

    .line 86
    const/4 v4, 0x1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    iget-object v1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    .line 96
    .line 97
    aget-object v5, v1, p3

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 103
    .line 104
    aget-object v1, v1, v4

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sub-int/2addr v5, v4

    .line 111
    invoke-virtual {v1, p3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .line 125
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    .line 126
    .line 127
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    .line 131
    .line 132
    invoke-virtual {v1, p3, v2, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->chidren_item:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 149
    .line 150
    const/16 v2, 0x8

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .line 157
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    .line 158
    .line 159
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    .line 163
    .line 164
    invoke-virtual {v1, p3, v2, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    iget-object v1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 173
    .line 174
    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 175
    .line 176
    if-eqz v2, :cond_2

    .line 177
    .line 178
    const/4 p3, 0x1

    .line 179
    :cond_2
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    .line 181
    .line 182
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;

    .line 183
    .line 184
    invoke-direct {p3, p0, v0, p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;II)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p5, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$ChildViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->mDatas:Ljava/util/List;

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

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_expand_parent:I

    .line 13
    .line 14
    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    new-instance p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;

    .line 19
    .line 20
    invoke-direct {p4, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;)V

    .line 21
    .line 22
    .line 23
    sget v1, Lorg/ppsspp/ppsspp/R$id;->parent_textview_id:I

    .line 24
    .line 25
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    .line 32
    .line 33
    sget v1, Lorg/ppsspp/ppsspp/R$id;->parent_image:I

    .line 34
    .line 35
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 42
    .line 43
    sget v1, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 44
    .line 45
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 52
    .line 53
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_desc:I

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v1, Lorg/ppsspp/ppsspp/R$id;->rl_root:I

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    iput-object v1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    check-cast p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, "\uff08"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v4, -0x1

    .line 96
    const/4 v5, 0x1

    .line 97
    const/16 v6, 0x8

    .line 98
    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    .line 108
    .line 109
    aget-object v7, v2, v0

    .line 110
    .line 111
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 115
    .line 116
    aget-object v2, v2, v5

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    sub-int/2addr v7, v5

    .line 123
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->maxHeight:I

    .line 138
    .line 139
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    .line 143
    .line 144
    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    .line 146
    .line 147
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_textview_id:Landroid/widget/TextView;

    .line 154
    .line 155
    iget-object v3, v1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->tv_desc:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->minHeight:I

    .line 168
    .line 169
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->marginTop:I

    .line 173
    .line 174
    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->rl_root:Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    iget-object v2, v1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    const/4 v3, 0x2

    .line 189
    if-le v2, v3, :cond_2

    .line 190
    .line 191
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 192
    .line 193
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_2
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 208
    .line 209
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iget v3, v3, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 219
    .line 220
    if-eqz v3, :cond_3

    .line 221
    .line 222
    const/4 v0, 0x1

    .line 223
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;

    .line 227
    .line 228
    invoke-direct {v0, p0, v1, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    :goto_2
    if-eqz p2, :cond_4

    .line 237
    .line 238
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 239
    .line 240
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 241
    .line 242
    invoke-static {p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$500(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->ic_arrow_up:I

    .line 247
    .line 248
    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_4
    iget-object p1, p4, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$GroupViewHolder;->parent_image:Landroid/widget/ImageView;

    .line 257
    .line 258
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 259
    .line 260
    invoke-static {p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$600(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->ic_arrow_down:I

    .line 265
    .line 266
    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
