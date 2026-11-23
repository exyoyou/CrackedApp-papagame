.class public Lcom/join/mgps/adapter/b7;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/b7$g;,
        Lcom/join/mgps/adapter/b7$n;,
        Lcom/join/mgps/adapter/b7$u;,
        Lcom/join/mgps/adapter/b7$v;,
        Lcom/join/mgps/adapter/b7$s;,
        Lcom/join/mgps/adapter/b7$j;,
        Lcom/join/mgps/adapter/b7$h;,
        Lcom/join/mgps/adapter/b7$i;,
        Lcom/join/mgps/adapter/b7$l;,
        Lcom/join/mgps/adapter/b7$m;,
        Lcom/join/mgps/adapter/b7$r;,
        Lcom/join/mgps/adapter/b7$o;,
        Lcom/join/mgps/adapter/b7$p;,
        Lcom/join/mgps/adapter/b7$q;,
        Lcom/join/mgps/adapter/b7$k;,
        Lcom/join/mgps/adapter/b7$t;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/join/mgps/dto/SearchResultAdinfo;

.field private f:Lcom/join/mgps/adapter/b7$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/b7;->f:Lcom/join/mgps/adapter/b7$g;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method private synthetic A(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->setTab(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic B(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->setTab(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic C(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/b7;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/b7;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b7;->B(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/b7;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b7;->C(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/b7;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/b7;->A(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/b7;)Lcom/join/mgps/adapter/b7$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/b7;->f:Lcom/join/mgps/adapter/b7$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/b7;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$h;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/b7$h;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b7$h;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06d4

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v0, 0x7f0a084f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p2, Lcom/join/mgps/adapter/b7$h;->b:Landroid/widget/ImageView;

    .line 39
    .line 40
    const v0, 0x7f0a10d8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p2, Lcom/join/mgps/adapter/b7$h;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v3, p3

    .line 55
    move-object p3, p2

    .line 56
    move-object p2, v3

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v0, 0x1

    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->b:Landroid/widget/ImageView;

    .line 71
    .line 72
    const v0, 0x7f080ae2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->c:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v0, 0x2

    .line 87
    if-ne p1, v0, :cond_2

    .line 88
    .line 89
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->b:Landroid/widget/ImageView;

    .line 90
    .line 91
    const v0, 0x7f080ae0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->c:Landroid/widget/TextView;

    .line 98
    .line 99
    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\u5355\n\u5df2\u4e3a\u60a8\u63a8\u8350\u70ed\u95e8\u6e38\u620f\u5355"

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 v0, 0x3

    .line 106
    if-ne p1, v0, :cond_3

    .line 107
    .line 108
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->b:Landroid/widget/ImageView;

    .line 109
    .line 110
    const v0, 0x7f080ae3

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$h;->c:Landroid/widget/TextView;

    .line 117
    .line 118
    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u793e\u533a\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u4ed6\u70ed\u95e8\u793e\u533a"

    .line 119
    .line 120
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_1
    return-object p2
.end method

.method private i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$i;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$i;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$i;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06d5

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a1767

    .line 30
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
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$i;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne p1, v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$i;->b:Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v1, "\u6e38\u620f"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v0, 0x2

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$i;->b:Landroid/widget/TextView;

    .line 68
    .line 69
    const-string v1, "\u6e38\u620f\u5355"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x3

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$i;->b:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string v1, "\u5e16\u5b50"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$i;->b:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/adapter/z6;

    .line 88
    .line 89
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/z6;-><init>(Lcom/join/mgps/adapter/b7;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$i;->c:Landroid/view/View;

    .line 96
    .line 97
    new-instance v0, Lcom/join/mgps/adapter/a7;

    .line 98
    .line 99
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/a7;-><init>(Lcom/join/mgps/adapter/b7;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$j;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/b7$j;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b7$j;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06d6

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object p2, p3

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    new-instance p3, Lcom/join/mgps/adapter/b7$c;

    .line 44
    .line 45
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/b7$c;-><init>(Lcom/join/mgps/adapter/b7;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-object p2
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$l;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$l;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$l;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06d7

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a084f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a10d8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$l;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a048c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$l;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a0441

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$l;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a04e1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$l;->f:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 90
    .line 91
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getPic()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$l;->c:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getTitle()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$l;->d:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getAuth_name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$l;->e:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getGame_count()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "\u6b3e"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->isShowDivider()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    .line 150
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$l;->f:Landroid/view/View;

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$l;->f:Landroid/view/View;

    .line 158
    .line 159
    const/16 v0, 0x8

    .line 160
    .line 161
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    :goto_1
    new-instance p3, Lcom/join/mgps/adapter/b7$d;

    .line 165
    .line 166
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/b7$d;-><init>(Lcom/join/mgps/adapter/b7;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$m;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$m;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$m;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06d8

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a1767

    .line 30
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
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$m;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "\u5305\u542b%s\u7684\u6e38\u620f\u5355"

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aput-object p1, v1, v2

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Landroid/text/SpannableString;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 67
    .line 68
    const-string v2, "#FFF47500"

    .line 69
    .line 70
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v2, 0x2

    .line 82
    add-int/2addr p1, v2

    .line 83
    const/16 v3, 0x12

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$m;->b:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-object p2
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    const-string p3, "0"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/b7$o;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/b7$o;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/b7$o;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06dd

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const v1, 0x7f0a06b1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->c:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0a06a0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->d:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0a06aa

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->e:Landroid/widget/TextView;

    .line 63
    .line 64
    const v1, 0x7f0a1b87

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->f:Landroid/view/View;

    .line 72
    .line 73
    const v1, 0x7f0a03d3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->g:Landroid/view/View;

    .line 81
    .line 82
    const v1, 0x7f0a06ac

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Lcom/join/mgps/adapter/b7$o;->h:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 99
    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/b7$o;->c:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/join/mgps/adapter/b7$o;->d:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, Lcom/join/mgps/adapter/b7$o;->e:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/b7;->J(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-object p2
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$p;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$p;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$p;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06da

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a06a6

    .line 30
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
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a103e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$p;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const v4, 0x7f0604b7

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    add-int/2addr v1, v4

    .line 100
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-gt v1, v0, :cond_2

    .line 105
    .line 106
    if-ltz v4, :cond_2

    .line 107
    .line 108
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 109
    .line 110
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const/16 v3, 0x21

    .line 114
    .line 115
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Lcom/join/mgps/adapter/y6;

    .line 128
    .line 129
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/y6;-><init>(Lcom/join/mgps/adapter/b7;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    .line 139
    .line 140
    :try_start_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->isShowDivider()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 147
    .line 148
    const-string v0, "#3b3b3b"

    .line 149
    .line 150
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 158
    .line 159
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const v0, 0x7f0713ee

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    goto :goto_2

    .line 179
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 180
    .line 181
    const-string v0, "#FF4A4A4A"

    .line 182
    .line 183
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 191
    .line 192
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    .line 209
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$p;->b:Landroid/widget/TextView;

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catch_1
    move-exception p1

    .line 216
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :catch_2
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_4
    return-object p2
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$q;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$q;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$q;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06db

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a069f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/Button;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$q;->b:Landroid/widget/Button;

    .line 39
    .line 40
    const v0, 0x7f0a06af

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$q;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a1646

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$q;->d:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/high16 v2, 0x41200000    # 10.0f

    .line 65
    .line 66
    invoke-static {v2}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v3, p3, Lcom/join/mgps/adapter/b7$q;->d:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v4, p3, Lcom/join/mgps/adapter/b7$q;->d:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 93
    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const v4, 0x7f0604b7

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    add-int/2addr v1, v4

    .line 136
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-gt v1, v0, :cond_2

    .line 141
    .line 142
    if-ltz v4, :cond_2

    .line 143
    .line 144
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 145
    .line 146
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 147
    .line 148
    .line 149
    const/16 v3, 0x21

    .line 150
    .line 151
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$q;->c:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/b7;->J(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :goto_2
    return-object p2
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/b7$r;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/b7$r;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$r;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06dc

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a084f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a10d8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$r;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a048c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$r;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a0441

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$r;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 81
    .line 82
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getIcon_src()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$r;->c:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$r;->d:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getDescription()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$r;->e:Landroid/widget/TextView;

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "\u4eca\u65e5\u66f4\u65b0:"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getToday_posts()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    new-instance p3, Lcom/join/mgps/adapter/b7$e;

    .line 136
    .line 137
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/b7$e;-><init>(Lcom/join/mgps/adapter/b7;Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-object p2
.end method


# virtual methods
.method public D(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public E(Lcom/join/mgps/adapter/b7$g;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/b7;->f:Lcom/join/mgps/adapter/b7$g;

    .line 2
    .line 3
    return-void
.end method

.method public F(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adinfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 2
    .line 3
    return-void
.end method

.method G(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tbPadding"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public H(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "models"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public J(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/b7$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/b7$f;-><init>(Lcom/join/mgps/adapter/b7;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mKeyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b7;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->h:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/b7$s;->g:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->h:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/b7$s;->g:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "103"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/adapter/b7;->z()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/adapter/b7$n;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/adapter/b7$n;->b:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
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
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/adapter/b7$n;

    .line 16
    .line 17
    iget p1, p1, Lcom/join/mgps/adapter/b7$n;->a:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v1, 0x4

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 v1, 0x5

    .line 38
    if-ne v0, v1, :cond_4

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const/4 v1, 0x6

    .line 46
    if-ne v0, v1, :cond_5

    .line 47
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :cond_5
    const/4 v1, 0x7

    .line 54
    if-ne v0, v1, :cond_6

    .line 55
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_0

    .line 61
    :cond_6
    const/16 v1, 0x8

    .line 62
    .line 63
    if-ne v0, v1, :cond_7

    .line 64
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_7
    const/16 v1, 0x9

    .line 71
    .line 72
    if-ne v0, v1, :cond_8

    .line 73
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_0

    .line 79
    :cond_8
    const/16 v1, 0xa

    .line 80
    .line 81
    if-ne v0, v1, :cond_9

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto :goto_0

    .line 88
    :cond_9
    const/16 v1, 0xb

    .line 89
    .line 90
    if-ne v0, v1, :cond_a

    .line 91
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    goto :goto_0

    .line 97
    :cond_a
    const/16 v1, 0xc

    .line 98
    .line 99
    if-ne v0, v1, :cond_b

    .line 100
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b7;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_b
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0xc

    .line 6
    .line 7
    return v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(I)Lcom/join/mgps/adapter/b7$n;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/adapter/b7$n;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/b7$n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const p3, 0x7f0d00cc

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lcom/join/mgps/adapter/b7$s;

    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/b7$s;-><init>(Lcom/join/mgps/adapter/b7;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a1044

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v0, 0x7f0a0790

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->b:Landroid/widget/ImageView;

    .line 43
    .line 44
    const v0, 0x7f0a1042

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a0098

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p3, Lcom/join/mgps/adapter/b7$s;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v1, 0x7f0a135c

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object v1, p3, Lcom/join/mgps/adapter/b7$s;->m:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const v1, 0x7f0a054e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 85
    .line 86
    iput-object v1, p3, Lcom/join/mgps/adapter/b7$s;->e:Lcom/join/mgps/customview/DownloadNormalView;

    .line 87
    .line 88
    const v1, 0x7f0a1764

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/LinearLayout;

    .line 96
    .line 97
    iput-object v1, p3, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    const v1, 0x7f0a1043

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v1, p3, Lcom/join/mgps/adapter/b7$s;->g:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->d:Landroid/widget/TextView;

    .line 117
    .line 118
    const v0, 0x7f0a0e73

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/LinearLayout;

    .line 126
    .line 127
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->h:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    const v0, 0x7f0a00f7

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 139
    .line 140
    const v0, 0x7f0a0f94

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/TextView;

    .line 148
    .line 149
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 150
    .line 151
    const v0, 0x7f0a129e

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/widget/ProgressBar;

    .line 159
    .line 160
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 161
    .line 162
    const v0, 0x7f0a12a5

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/ProgressBar;

    .line 170
    .line 171
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 172
    .line 173
    const v0, 0x7f0a0e61

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    check-cast p3, Lcom/join/mgps/adapter/b7$s;

    .line 191
    .line 192
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iget-object v8, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->q(I)Lcom/join/mgps/adapter/b7$n;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const/4 v2, 0x1

    .line 209
    const/4 v3, 0x0

    .line 210
    const/16 v9, 0x8

    .line 211
    .line 212
    if-eqz p1, :cond_2

    .line 213
    .line 214
    iget-boolean p1, p1, Lcom/join/mgps/adapter/b7$n;->c:Z

    .line 215
    .line 216
    if-eqz p1, :cond_2

    .line 217
    .line 218
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-eqz p1, :cond_1

    .line 230
    .line 231
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    .line 242
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    const/high16 v5, 0x3f800000    # 1.0f

    .line 251
    .line 252
    invoke-static {v2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    float-to-int v4, v4

    .line 257
    const/4 v5, -0x1

    .line 258
    invoke-direct {p1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    :goto_1
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    const v5, 0x7f0713d8

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 273
    .line 274
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 283
    .line 284
    iget-object v4, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 285
    .line 286
    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->n:Landroid/view/View;

    .line 291
    .line 292
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->c:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->c:Landroid/widget/TextView;

    .line 305
    .line 306
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 307
    .line 308
    invoke-virtual {p1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->g:Landroid/widget/TextView;

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->m:Landroid/widget/RelativeLayout;

    .line 321
    .line 322
    new-instance v4, Lcom/join/mgps/adapter/b7$b;

    .line 323
    .line 324
    invoke-direct {v4, p0, v0}, Lcom/join/mgps/adapter/b7$b;-><init>(Lcom/join/mgps/adapter/b7;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_3

    .line 339
    .line 340
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-static {p1, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-ne p1, v2, :cond_4

    .line 358
    .line 359
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->b:Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->b:Landroid/widget/ImageView;

    .line 366
    .line 367
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :goto_3
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->e:Lcom/join/mgps/customview/DownloadNormalView;

    .line 371
    .line 372
    new-instance v2, Lm6/c;

    .line 373
    .line 374
    invoke-direct {v2, v8, v0}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 389
    .line 390
    mul-double v2, v2, v4

    .line 391
    .line 392
    mul-double v2, v2, v4

    .line 393
    .line 394
    double-to-long v10, v2

    .line 395
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->isAd()Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_5

    .line 400
    .line 401
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iget-object v6, p3, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 418
    .line 419
    move-object v7, v8

    .line 420
    invoke-static/range {v2 .. v7}, Lcom/join/mgps/Util/UtilsMy;->N(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    iget-object v7, p3, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 445
    .line 446
    invoke-static/range {v2 .. v8}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 447
    .line 448
    .line 449
    :goto_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-eqz p1, :cond_6

    .line 454
    .line 455
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->f:Landroid/widget/LinearLayout;

    .line 456
    .line 457
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->b:Landroid/widget/ImageView;

    .line 461
    .line 462
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_7

    .line 466
    .line 467
    :cond_6
    if-nez v1, :cond_7

    .line 468
    .line 469
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 470
    .line 471
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 472
    .line 473
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_7

    .line 477
    .line 478
    :cond_7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    const/16 v2, 0x2b

    .line 495
    .line 496
    if-lez v0, :cond_8

    .line 497
    .line 498
    const/16 p1, 0x2b

    .line 499
    .line 500
    :cond_8
    if-eqz p1, :cond_b

    .line 501
    .line 502
    const/16 v0, 0x30

    .line 503
    .line 504
    if-eq p1, v0, :cond_b

    .line 505
    .line 506
    const/4 v0, 0x2

    .line 507
    const-string v3, "/"

    .line 508
    .line 509
    if-eq p1, v0, :cond_a

    .line 510
    .line 511
    const/4 v0, 0x3

    .line 512
    if-eq p1, v0, :cond_9

    .line 513
    .line 514
    const/4 v0, 0x5

    .line 515
    if-eq p1, v0, :cond_b

    .line 516
    .line 517
    const/4 v0, 0x6

    .line 518
    if-eq p1, v0, :cond_9

    .line 519
    .line 520
    const/4 v0, 0x7

    .line 521
    if-eq p1, v0, :cond_b

    .line 522
    .line 523
    const/16 v0, 0x2a

    .line 524
    .line 525
    if-eq p1, v0, :cond_b

    .line 526
    .line 527
    if-eq p1, v2, :cond_b

    .line 528
    .line 529
    packed-switch p1, :pswitch_data_0

    .line 530
    .line 531
    .line 532
    goto/16 :goto_7

    .line 533
    .line 534
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 535
    .line 536
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 542
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 573
    .line 574
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 575
    .line 576
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 580
    .line 581
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 582
    .line 583
    .line 584
    move-result-wide v0

    .line 585
    long-to-int p3, v0

    .line 586
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_7

    .line 590
    .line 591
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 592
    .line 593
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 594
    .line 595
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 596
    .line 597
    .line 598
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 599
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    .line 628
    .line 629
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 630
    .line 631
    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 632
    .line 633
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->l:Landroid/widget/ProgressBar;

    .line 637
    .line 638
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 639
    .line 640
    .line 641
    move-result-wide v0

    .line 642
    long-to-int p3, v0

    .line 643
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_7

    .line 647
    .line 648
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 649
    .line 650
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 651
    .line 652
    .line 653
    :try_start_0
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 654
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 661
    .line 662
    .line 663
    move-result-wide v4

    .line 664
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    .line 687
    .line 688
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 689
    .line 690
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 691
    .line 692
    .line 693
    move-result-wide v0

    .line 694
    long-to-int v1, v0

    .line 695
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .line 697
    .line 698
    goto :goto_5

    .line 699
    :catch_0
    move-exception p1

    .line 700
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    .line 702
    .line 703
    :goto_5
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 704
    .line 705
    const-string p3, "\u7b49\u5f85\u4e2d"

    .line 706
    .line 707
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_7

    .line 711
    .line 712
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 713
    .line 714
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 715
    .line 716
    .line 717
    :try_start_1
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 718
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    .line 720
    .line 721
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 725
    .line 726
    .line 727
    move-result-wide v4

    .line 728
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    .line 751
    .line 752
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 753
    .line 754
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 755
    .line 756
    .line 757
    move-result-wide v0

    .line 758
    long-to-int v1, v0

    .line 759
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    .line 761
    .line 762
    goto :goto_6

    .line 763
    :catch_1
    move-exception p1

    .line 764
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 765
    .line 766
    .line 767
    :goto_6
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 768
    .line 769
    const-string p3, "\u6682\u505c\u4e2d"

    .line 770
    .line 771
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    .line 773
    .line 774
    goto :goto_7

    .line 775
    :cond_a
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 776
    .line 777
    .line 778
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 779
    .line 780
    invoke-virtual {p0, p3, p1, p1}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 781
    .line 782
    .line 783
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->i:Landroid/widget/TextView;

    .line 784
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 791
    .line 792
    .line 793
    move-result-wide v4

    .line 794
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    .line 817
    .line 818
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->j:Landroid/widget/TextView;

    .line 819
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    .line 821
    .line 822
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v2, "/S"

    .line 833
    .line 834
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    .line 843
    .line 844
    iget-object p1, p3, Lcom/join/mgps/adapter/b7$s;->k:Landroid/widget/ProgressBar;

    .line 845
    .line 846
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 847
    .line 848
    .line 849
    move-result-wide v0

    .line 850
    long-to-int p3, v0

    .line 851
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 852
    .line 853
    .line 854
    goto :goto_7

    .line 855
    :cond_b
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 856
    .line 857
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 858
    .line 859
    invoke-virtual {p0, p3, p1, v0}, Lcom/join/mgps/adapter/b7;->L(Lcom/join/mgps/adapter/b7$s;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 860
    .line 861
    .line 862
    :goto_7
    return-object p2

    .line 863
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d0337

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/b7$v;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/b7$v;-><init>(Lcom/join/mgps/adapter/b7;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/adapter/b7$v;

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b7;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-ge v6, v7, :cond_2

    .line 93
    .line 94
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 99
    .line 100
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_3

    .line 119
    .line 120
    iget-object p1, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 121
    .line 122
    const/16 p3, 0x8

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_3
    iget-object v5, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 129
    .line 130
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    new-instance v5, Lcom/join/mgps/adapter/i1;

    .line 138
    .line 139
    invoke-direct {v5, p3, v4, v1, v2}, Lcom/join/mgps/adapter/i1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 143
    .line 144
    invoke-virtual {v2, v5}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    .line 146
    .line 147
    if-ne v4, v3, :cond_4

    .line 148
    .line 149
    iget-object v2, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 150
    .line 151
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const v4, 0x7f0711b5

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const v4, 0x7f07133d

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 190
    .line 191
    .line 192
    :goto_3
    iget-object v0, v0, Lcom/join/mgps/adapter/b7$v;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 193
    .line 194
    new-instance v2, Lcom/join/mgps/adapter/b7$a;

    .line 195
    .line 196
    invoke-direct {v2, p0, p3, v1, p1}, Lcom/join/mgps/adapter/b7$a;-><init>(Lcom/join/mgps/adapter/b7;Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_4
    return-object p2
.end method

.method public y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/b7;->c:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const p3, 0x7f0d081d

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, p3, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Lcom/join/mgps/adapter/b7$u;

    .line 19
    .line 20
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/b7$u;-><init>(Lcom/join/mgps/adapter/b7;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/join/mgps/adapter/b7$u;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p3, Lcom/join/mgps/adapter/b7$u;->a:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :goto_1
    const/4 v1, 0x2

    .line 72
    if-ne v0, v1, :cond_2

    .line 73
    .line 74
    const-string p1, "\u3000\u3000 "

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    const/4 v2, 0x3

    .line 78
    if-ne v0, v2, :cond_3

    .line 79
    .line 80
    const-string p1, "\u3000\u3000\u3000"

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/4 v3, 0x4

    .line 84
    if-ne v0, v3, :cond_4

    .line 85
    .line 86
    const-string p1, "\u3000\u3000\u3000\u3000"

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, " "

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    mul-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    div-int/2addr v0, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    const-string v1, ""

    .line 105
    .line 106
    :goto_2
    if-ge p1, v0, :cond_5

    .line 107
    .line 108
    const-string v1, "\u3000"

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move-object p1, v1

    .line 121
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/adapter/b7$u;->b:Landroid/widget/TextView;

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/adapter/b7;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchResultAdinfo;->getTitle()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    const/16 p1, 0x8

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :goto_4
    return-object p2
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
