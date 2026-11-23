.class public Lcom/join/mgps/customview/i0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/i0$b;,
        Lcom/join/mgps/customview/i0$c;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/i0;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v0, 0x7f0d07f2

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const v0, 0x7f0a0fde

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ListView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/customview/i0;->a:Landroid/widget/ListView;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const/16 p2, 0x10

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 50
    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f1301dc

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recData",
            "userData",
            "selectedGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/GroupInfoBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-lez v4, :cond_2

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-ge v4, v5, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/join/mgps/dto/GroupInfoBean;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p3}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ne v5, v6, :cond_0

    .line 41
    .line 42
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/join/mgps/dto/GroupInfoBean;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/GroupInfoBean;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    new-instance v4, Lcom/join/mgps/customview/i0$b;

    .line 56
    .line 57
    invoke-direct {v4, p0}, Lcom/join/mgps/customview/i0$b;-><init>(Lcom/join/mgps/customview/i0;)V

    .line 58
    .line 59
    .line 60
    iput v3, v4, Lcom/join/mgps/customview/i0$b;->a:I

    .line 61
    .line 62
    const-string v5, "\u63a8\u8350"

    .line 63
    .line 64
    iput-object v5, v4, Lcom/join/mgps/customview/i0$b;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lcom/join/mgps/dto/GroupInfoBean;

    .line 84
    .line 85
    new-instance v5, Lcom/join/mgps/customview/i0$b;

    .line 86
    .line 87
    invoke-direct {v5, p0}, Lcom/join/mgps/customview/i0$b;-><init>(Lcom/join/mgps/customview/i0;)V

    .line 88
    .line 89
    .line 90
    iput v1, v5, Lcom/join/mgps/customview/i0$b;->a:I

    .line 91
    .line 92
    iput-object v4, v5, Lcom/join/mgps/customview/i0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 93
    .line 94
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    if-eqz p2, :cond_5

    .line 99
    .line 100
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-lez p1, :cond_5

    .line 105
    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-ge v2, p1, :cond_4

    .line 113
    .line 114
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/mgps/dto/GroupInfoBean;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p3}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-ne p1, v4, :cond_3

    .line 129
    .line 130
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/join/mgps/dto/GroupInfoBean;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/GroupInfoBean;->setSelected(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    :goto_4
    new-instance p1, Lcom/join/mgps/customview/i0$b;

    .line 144
    .line 145
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/i0$b;-><init>(Lcom/join/mgps/customview/i0;)V

    .line 146
    .line 147
    .line 148
    iput v3, p1, Lcom/join/mgps/customview/i0$b;->a:I

    .line 149
    .line 150
    const-string p3, "\u6211\u7684"

    .line 151
    .line 152
    iput-object p3, p1, Lcom/join/mgps/customview/i0$b;->c:Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_5

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Lcom/join/mgps/dto/GroupInfoBean;

    .line 172
    .line 173
    new-instance p3, Lcom/join/mgps/customview/i0$b;

    .line 174
    .line 175
    invoke-direct {p3, p0}, Lcom/join/mgps/customview/i0$b;-><init>(Lcom/join/mgps/customview/i0;)V

    .line 176
    .line 177
    .line 178
    iput v1, p3, Lcom/join/mgps/customview/i0$b;->a:I

    .line 179
    .line 180
    iput-object p2, p3, Lcom/join/mgps/customview/i0$b;->b:Lcom/join/mgps/dto/GroupInfoBean;

    .line 181
    .line 182
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/i0;->a:Landroid/widget/ListView;

    .line 187
    .line 188
    new-instance p2, Lcom/join/mgps/customview/i0$c;

    .line 189
    .line 190
    invoke-direct {p2, p0, v0}, Lcom/join/mgps/customview/i0$c;-><init>(Lcom/join/mgps/customview/i0;Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/join/mgps/customview/i0;->a:Landroid/widget/ListView;

    .line 197
    .line 198
    new-instance p2, Lcom/join/mgps/customview/i0$a;

    .line 199
    .line 200
    invoke-direct {p2, p0, v0}, Lcom/join/mgps/customview/i0$a;-><init>(Lcom/join/mgps/customview/i0;Ljava/util/List;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    sub-int/2addr v1, v0

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
