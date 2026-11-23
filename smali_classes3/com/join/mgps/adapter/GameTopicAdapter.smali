.class public Lcom/join/mgps/adapter/GameTopicAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameTopicAdapter$g;,
        Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;,
        Lcom/join/mgps/adapter/GameTopicAdapter$d;,
        Lcom/join/mgps/adapter/GameTopicAdapter$c;,
        Lcom/join/mgps/adapter/GameTopicAdapter$f;,
        Lcom/join/mgps/adapter/GameTopicAdapter$e;,
        Lcom/join/mgps/adapter/GameTopicAdapter$h;
    }
.end annotation


# instance fields
.field private b:Lcom/join/android/app/component/optimizetext/b;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout$LayoutParams;

.field f:I


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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->f:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Lcom/join/android/app/component/optimizetext/b;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/adapter/GameTopicAdapter;->k()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/GameTopicAdapter;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, "0"

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$c;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v2, 0x7f0d06f3

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const v2, 0x7f0a069a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x7f0a06b1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v2, 0x7f0a06a0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_1
    iget-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->b:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->c:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->c:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    iget v4, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->d:I

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v1, Lcom/join/mgps/adapter/GameTopicAdapter$c;->d:Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget v3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->e:I

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v1, v0, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->b:Ljava/lang/String;

    .line 130
    .line 131
    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->a:I

    .line 132
    .line 133
    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-object p2
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$d;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f4

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
    const v0, 0x7f0a069e

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a06a8

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x1

    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    aput-object v0, v2, v3

    .line 78
    .line 79
    const v3, 0x7f120152

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    add-int/2addr v0, v2

    .line 95
    new-instance v3, Landroid/text/SpannableString;

    .line 96
    .line 97
    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-gt v0, v1, :cond_2

    .line 105
    .line 106
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 107
    .line 108
    const-string v4, "#FC9234"

    .line 109
    .line 110
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const/16 v4, 0x21

    .line 118
    .line 119
    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .line 121
    .line 122
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->c:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    iget-object v1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 135
    .line 136
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$a;

    .line 137
    .line 138
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter$a;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;Lcom/join/mgps/adapter/GameTopicAdapter$g$b;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->c:Ljava/lang/String;

    .line 145
    .line 146
    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;->d:I

    .line 147
    .line 148
    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_1
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$e;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f5

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
    const v0, 0x7f0a06af

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$e;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;->a:I

    .line 62
    .line 63
    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object p2
.end method

.method private g(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->f:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const p1, 0x401d70a4    # 2.46f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->f:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->f:I

    .line 42
    .line 43
    return p1
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameTopicAdapter$f;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f2

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
    const v0, 0x7f0a044e

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
    iput-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/GameTopicAdapter;->g(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->c:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    .line 79
    .line 80
    iget-object p3, p3, Lcom/join/mgps/adapter/GameTopicAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object p3, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->b:Ljava/lang/String;

    .line 86
    .line 87
    iget p1, p1, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;->a:I

    .line 88
    .line 89
    invoke-virtual {p0, p2, p3, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-object p2
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection_id",
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "2"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v2, "current_topic"

    .line 53
    .line 54
    invoke-direct {v1, v2, p2, p1}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/GameTopicAdapter;->i()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameTopicAdapter$g;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameTopicAdapter$g;->b()Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameTopicAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method i()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

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
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    const/high16 v2, 0x43520000    # 210.0f

    .line 16
    .line 17
    mul-float v2, v2, v1

    .line 18
    .line 19
    float-to-int v2, v2

    .line 20
    const/high16 v3, 0x43200000    # 160.0f

    .line 21
    .line 22
    mul-float v3, v3, v1

    .line 23
    .line 24
    float-to-int v3, v3

    .line 25
    const/high16 v4, 0x40c00000    # 6.0f

    .line 26
    .line 27
    mul-float v4, v4, v1

    .line 28
    .line 29
    float-to-int v4, v4

    .line 30
    iget-object v5, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const v6, 0x7f070ec2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    mul-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    sub-int/2addr v0, v5

    .line 46
    int-to-float v0, v0

    .line 47
    int-to-float v4, v4

    .line 48
    mul-float v4, v4, v1

    .line 49
    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    .line 52
    mul-float v4, v4, v1

    .line 53
    .line 54
    sub-float/2addr v0, v4

    .line 55
    float-to-int v0, v0

    .line 56
    div-int/lit8 v0, v0, 0x3

    .line 57
    .line 58
    if-le v0, v2, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    if-le v0, v3, :cond_1

    .line 62
    .line 63
    move v2, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v2, v0

    .line 66
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public l(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public m(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-void
.end method

.method n(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "view",
            "collection_id",
            "id"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$b;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/GameTopicAdapter$b;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
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
