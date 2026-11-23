.class public Lcom/join/mgps/adapter/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/f$a;
    }
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_context",
            "datas",
            "headPortraitTable",
            "isSelected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    iput-object p4, p0, Lcom/join/mgps/adapter/f;->b:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    iput p4, p0, Lcom/join/mgps/adapter/f;->e:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/adapter/f;->c:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/join/mgps/adapter/f;->f:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageId"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/f;->e:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/join/mgps/adapter/f$a;

    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/f$a;-><init>(Lcom/join/mgps/adapter/f;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/adapter/f;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const v0, 0x7f0d0138

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v0, 0x7f0a0989

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v0, 0x7f0a098f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/mgps/customview/SquareLayout;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/f$a;->c:Lcom/join/mgps/customview/SquareLayout;

    .line 43
    .line 44
    const v0, 0x7f0a098a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/f$a;->b:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Lcom/join/mgps/adapter/f$a;

    .line 64
    .line 65
    move-object v4, p3

    .line 66
    move-object p3, p2

    .line 67
    move-object p2, v4

    .line 68
    :goto_0
    if-nez p1, :cond_1

    .line 69
    .line 70
    iget-object p2, p2, Lcom/join/mgps/adapter/f$a;->c:Lcom/join/mgps/customview/SquareLayout;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getId()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/f$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->f:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const v1, 0x7f080a86

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/adapter/f;->f:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/join/mgps/adapter/f;->d:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/join/mgps/db/tables/HeadPortraitTable;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    iget-object v0, p2, Lcom/join/mgps/adapter/f$a;->b:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    iget-object v0, p2, Lcom/join/mgps/adapter/f$a;->b:Landroid/widget/ImageView;

    .line 162
    .line 163
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 164
    .line 165
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/f;->e:I

    .line 172
    .line 173
    if-lez v0, :cond_5

    .line 174
    .line 175
    if-ne v0, p1, :cond_4

    .line 176
    .line 177
    iget-object p1, p2, Lcom/join/mgps/adapter/f$a;->b:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    :try_start_0
    iget-object p1, p2, Lcom/join/mgps/adapter/f$a;->b:Landroid/widget/ImageView;

    .line 184
    .line 185
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 186
    .line 187
    invoke-direct {p2, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    :catch_0
    :cond_5
    :goto_2
    return-object p3
.end method
