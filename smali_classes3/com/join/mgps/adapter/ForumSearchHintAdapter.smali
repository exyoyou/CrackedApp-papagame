.class public Lcom/join/mgps/adapter/ForumSearchHintAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$g;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;


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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->d:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->d:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06d9

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->c:Landroid/widget/TextView;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->d:Landroid/widget/TextView;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->e:Landroid/widget/TextView;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->f:Landroid/view/View;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->g:Landroid/view/View;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->h:Landroid/view/View;

    .line 90
    .line 91
    const/high16 v1, 0x40c00000    # 6.0f

    .line 92
    .line 93
    :try_start_0
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->f:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->g:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->h:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;

    .line 125
    .line 126
    if-nez p1, :cond_1

    .line 127
    .line 128
    return-object p2

    .line 129
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->c:Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->c:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->d:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->d:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->e:Landroid/widget/TextView;

    .line 144
    .line 145
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->e:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v0, v1, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->b:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_1
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_2
    return-object p2
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06bb

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->c:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const v4, 0x7f0604b7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    add-int/2addr v1, v4

    .line 96
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-gt v1, v0, :cond_2

    .line 101
    .line 102
    if-ltz v4, :cond_2

    .line 103
    .line 104
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 105
    .line 106
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 107
    .line 108
    .line 109
    const/16 v3, 0x21

    .line 110
    .line 111
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/join/mgps/Util/r0;->A1(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .line 128
    .line 129
    :try_start_3
    iget-boolean p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->b:Z

    .line 130
    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    .line 134
    .line 135
    const-string v0, "#3b3b3b"

    .line 136
    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    const/high16 p1, 0x41200000    # 10.0f

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 152
    .line 153
    invoke-static {p1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    .line 158
    .line 159
    const-string v1, "#8a8a8a"

    .line 160
    .line 161
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    .line 176
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 177
    .line 178
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_1
    move-exception p1

    .line 185
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_2
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :goto_3
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
    check-cast p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f0

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->b:Landroid/widget/Button;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->c:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

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
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;

    .line 93
    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->b:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const v4, 0x7f0604b7

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    add-int/2addr v1, v4

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-gt v1, v0, :cond_2

    .line 137
    .line 138
    if-ltz v4, :cond_2

    .line 139
    .line 140
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 141
    .line 142
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 143
    .line 144
    .line 145
    const/16 v3, 0x21

    .line 146
    .line 147
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->c:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->c:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_1
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-object p2
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->d:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 2
    .line 3
    return-void
.end method

.method g(Landroid/view/View;I)V
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

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;->b()Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public i(Landroid/view/View;Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
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
