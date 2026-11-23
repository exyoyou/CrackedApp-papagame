.class Lcom/join/mgps/activity/ForumMyActivity$k;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method private f(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "fid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$d;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$d;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private i(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "tag_id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$e;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$e;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/activity/ForumMyActivity$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(I)Lcom/join/mgps/activity/ForumMyActivity$l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

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
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumMyActivity$l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "pos"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$a;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/ForumMyActivity$k$a;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k$b;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge p2, v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge p2, v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method

.method public getChildId(II)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupPosition",
            "childPosition",
            "isLastChild",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/activity/ForumMyActivity$j;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/ForumMyActivity$j;

    .line 11
    .line 12
    iget-object p4, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 13
    .line 14
    invoke-direct {p3, p4}, Lcom/join/mgps/activity/ForumMyActivity$j;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object p4, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const p5, 0x7f0d06a7

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    const p5, 0x7f0a0697

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    check-cast p5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    const p5, 0x7f0a069a

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    check-cast p5, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    const p5, 0x7f0a0693

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p5

    .line 60
    check-cast p5, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    .line 63
    .line 64
    const p5, 0x7f0a0446

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p5

    .line 71
    check-cast p5, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    .line 74
    .line 75
    const p5, 0x7f0a011d

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p5

    .line 82
    iput-object p5, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->e:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p5

    .line 91
    if-nez p5, :cond_1

    .line 92
    .line 93
    return-object p4

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 95
    .line 96
    .line 97
    move-result-object p5

    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p5, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 102
    .line 103
    .line 104
    move-result-object p5

    .line 105
    invoke-virtual {p5}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 106
    .line 107
    .line 108
    move-result p5

    .line 109
    const/4 v1, 0x1

    .line 110
    if-ne p5, v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/join/mgps/dto/RecommenGroup;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getIcon_src()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p5

    .line 126
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getDescription()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getToday_posts()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroup;->getFid()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-direct {p0, p4, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->f(Landroid/view/View;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 143
    .line 144
    .line 145
    move-result-object p5

    .line 146
    invoke-virtual {p5}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 147
    .line 148
    .line 149
    move-result p5

    .line 150
    const/4 v1, 0x2

    .line 151
    if-ne p5, v1, :cond_3

    .line 152
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumMyActivity$k;->getChild(II)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_icon()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p5

    .line 167
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getDescription()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getToday_posts()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-direct {p0, p4, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->i(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    const-string p2, ""

    .line 184
    .line 185
    move-object p5, p2

    .line 186
    move-object v1, p5

    .line 187
    const/4 v2, 0x0

    .line 188
    :goto_1
    :try_start_1
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 189
    .line 190
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->b:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    if-lez v2, :cond_4

    .line 204
    .line 205
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p5, "\u4eca\u65e5\u66f4\u65b0\uff1a"

    .line 213
    .line 214
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    .line 229
    .line 230
    const-string p2, "\u4eca\u65e5\u66f4\u65b0\uff1a0"

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->d:Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p3, Lcom/join/mgps/activity/ForumMyActivity$j;->c:Landroid/widget/TextView;

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    :goto_3
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->a()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumMyActivity$l;->b()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->a:Ljava/util/List;

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

.method public getGroupId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupPosition",
            "isExpanded",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    check-cast p4, Lcom/join/mgps/activity/ForumMyActivity$m;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p4, Lcom/join/mgps/activity/ForumMyActivity$m;

    .line 11
    .line 12
    iget-object p3, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 13
    .line 14
    invoke-direct {p4, p3}, Lcom/join/mgps/activity/ForumMyActivity$m;-><init>(Lcom/join/mgps/activity/ForumMyActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/join/mgps/activity/ForumMyActivity$k;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const v0, 0x7f0d06a9

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const v0, 0x7f0a084f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    .line 41
    .line 42
    const v0, 0x7f0a1767

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a1623

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a011d

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    .line 72
    .line 73
    const v0, 0x7f0a04e1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    .line 81
    .line 82
    const v0, 0x7f0a04e2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    if-eqz p2, :cond_1

    .line 95
    .line 96
    :try_start_0
    iget-object p2, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 97
    .line 98
    const-string v0, "\u6536\u8d77"

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object p2, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v0, "\u5c55\u5f00"

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->c(I)Lcom/join/mgps/activity/ForumMyActivity$l;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/ForumMyActivity$k;->e(Landroid/view/View;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/4 v0, 0x1

    .line 123
    const/4 v1, 0x0

    .line 124
    const/16 v2, 0x8

    .line 125
    .line 126
    if-ne p1, v0, :cond_2

    .line 127
    .line 128
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    .line 129
    .line 130
    const p2, 0x7f080ce4

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    .line 137
    .line 138
    const-string p2, "\u5c0f\u7ec4"

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/4 v0, 0x2

    .line 170
    if-ne p1, v0, :cond_3

    .line 171
    .line 172
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    .line 178
    .line 179
    const p2, 0x7f080ce6

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    .line 186
    .line 187
    const-string p2, "\u8bdd\u9898"

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    const/4 v0, 0x3

    .line 213
    if-ne p1, v0, :cond_4

    .line 214
    .line 215
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    .line 221
    .line 222
    const p2, 0x7f080ce5

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    .line 229
    .line 230
    const-string p2, "\u5e16\u5b50"

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 236
    .line 237
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumMyActivity$k;->g(Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/activity/ForumMyActivity$l;->getType()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    const/4 p2, 0x4

    .line 259
    if-ne p1, p2, :cond_5

    .line 260
    .line 261
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->f:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->e:Landroid/view/View;

    .line 267
    .line 268
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->c:Landroid/widget/TextView;

    .line 272
    .line 273
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->d:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->a:Landroid/widget/ImageView;

    .line 282
    .line 283
    const p2, 0x7f080ce3

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p4, Lcom/join/mgps/activity/ForumMyActivity$m;->b:Landroid/widget/TextView;

    .line 290
    .line 291
    const-string p2, "\u8bc4\u8bba"

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/ForumMyActivity$k;->h(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    .line 303
    .line 304
    :cond_5
    :goto_2
    return-object p3
.end method

.method public h(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/ForumMyActivity$k$c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumMyActivity$k$c;-><init>(Lcom/join/mgps/activity/ForumMyActivity$k;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
