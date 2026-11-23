.class Lcom/join/mgps/activity/SharePostsActivity$i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SharePostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SharePostsActivity$i$d;,
        Lcom/join/mgps/activity/SharePostsActivity$i$e;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "add_image"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field d:Z

.field private e:Lcom/join/mgps/activity/SharePostsActivity$i$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->e:Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/SharePostsActivity$i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private f(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f07102b

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f07102a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    .line 55
    mul-int/lit8 v0, v0, 0x2

    .line 56
    .line 57
    sub-int/2addr v2, v0

    .line 58
    mul-int/lit8 v1, v1, 0x3

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    div-int/lit8 v2, v2, 0x4

    .line 62
    .line 63
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 64
    .line 65
    invoke-direct {v1, v2, v2}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    add-int/2addr v2, v0

    .line 72
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .line 74
    const/4 v0, -0x1

    .line 75
    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x9

    .line 27
    .line 28
    if-ge p1, v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 31
    .line 32
    const-string v0, "add_image"

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isStartPickPic"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/join/mgps/activity/SharePostsActivity$i$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->e:Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->c:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0d0276

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$i$e;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a0864

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v2, 0x7f0a08c3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v2, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p3, p2}, Lcom/join/mgps/activity/SharePostsActivity$i;->f(Landroid/view/View;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/SharePostsActivity$i;->getCount()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    add-int/lit8 p3, p3, -0x1

    .line 73
    .line 74
    if-ne p1, p3, :cond_1

    .line 75
    .line 76
    iget-object p3, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    check-cast p3, Ljava/lang/String;

    .line 83
    .line 84
    const-string v0, "add_image"

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_1

    .line 91
    .line 92
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    .line 93
    .line 94
    const/16 p3, 0x8

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 100
    .line 101
    const p3, 0x7f080f1c

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 108
    .line 109
    new-instance p3, Lcom/join/mgps/activity/SharePostsActivity$i$a;

    .line 110
    .line 111
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/SharePostsActivity$i$a;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity$i;->c()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {p3, v0, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 133
    .line 134
    .line 135
    iget-object p3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->b:Landroid/widget/ImageView;

    .line 136
    .line 137
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity$i$b;

    .line 138
    .line 139
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SharePostsActivity$i$b;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    new-instance p3, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i;->b:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/16 v3, 0x9

    .line 163
    .line 164
    if-ge v0, v3, :cond_2

    .line 165
    .line 166
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    add-int/lit8 v3, v0, -0x1

    .line 171
    .line 172
    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 176
    .line 177
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :goto_1
    if-ge v2, v3, :cond_3

    .line 181
    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v4, "file://"

    .line 188
    .line 189
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    aget-object v4, v0, v2

    .line 193
    .line 194
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    aput-object p3, v0, v2

    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_3
    iget-object p3, v1, Lcom/join/mgps/activity/SharePostsActivity$i$e;->a:Landroid/widget/ImageView;

    .line 207
    .line 208
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$i$c;

    .line 209
    .line 210
    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/SharePostsActivity$i$c;-><init>(Lcom/join/mgps/activity/SharePostsActivity$i;I[Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    :goto_2
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
