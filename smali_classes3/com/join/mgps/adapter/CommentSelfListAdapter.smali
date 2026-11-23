.class public Lcom/join/mgps/adapter/CommentSelfListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentSelfListAdapter$j;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$k;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$n;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$o;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$m;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$i;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$g;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$h;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$l;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field f:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;


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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "uid"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 11
    iput p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentSelfListAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentSelfListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d0169

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
    const v0, 0x7f0a0424

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a1087

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x7

    .line 77
    if-le v0, v1, :cond_2

    .line 78
    .line 79
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$c;

    .line 88
    .line 89
    invoke-direct {v1, p0, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Lcom/join/mgps/adapter/CommentSelfListAdapter$g;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :goto_1
    const-string p3, "0"

    .line 104
    .line 105
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->d:I

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    if-eq v0, v1, :cond_4

    .line 109
    .line 110
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->e:I

    .line 111
    .line 112
    if-eq v0, v1, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string p3, "1"

    .line 116
    .line 117
    :cond_4
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->a:I

    .line 118
    .line 119
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_3
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d016a

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
    const v0, 0x7f0a0e5e

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a1ae7

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a1b80

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a0e5d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    .line 72
    .line 73
    const v0, 0x7f0a1ae6

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    .line 83
    .line 84
    const v0, 0x7f0a0eae

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->g:Landroid/view/View;

    .line 92
    .line 93
    const v0, 0x7f0a0eca

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->h:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    return-object p2

    .line 114
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->c:I

    .line 117
    .line 118
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->c:Landroid/widget/TextView;

    .line 126
    .line 127
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->d:I

    .line 128
    .line 129
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->d:Landroid/widget/TextView;

    .line 137
    .line 138
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->e:I

    .line 139
    .line 140
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    const-string v0, "0"

    .line 148
    .line 149
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->h:I

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    if-eq v1, v2, :cond_3

    .line 153
    .line 154
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->i:I

    .line 155
    .line 156
    if-eq v1, v2, :cond_2

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    const-string v0, "1"

    .line 160
    .line 161
    :cond_3
    :goto_1
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->a:I

    .line 162
    .line 163
    iget-object v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p0, p2, v1, v3, v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->f:I

    .line 169
    .line 170
    if-ne v0, v2, :cond_4

    .line 171
    .line 172
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    .line 173
    .line 174
    const v1, 0x7f081329

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    .line 182
    .line 183
    const v1, 0x7f081324

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    .line 188
    .line 189
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->g:I

    .line 190
    .line 191
    if-ne v0, v2, :cond_5

    .line 192
    .line 193
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    .line 194
    .line 195
    const v1, 0x7f080511

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    .line 203
    .line 204
    const v1, 0x7f08050f

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    .line 209
    .line 210
    :goto_3
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->a:I

    .line 211
    .line 212
    iget-object v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->b:Ljava/lang/String;

    .line 213
    .line 214
    iget v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->f:I

    .line 215
    .line 216
    const/4 v4, 0x2

    .line 217
    if-ne v3, v2, :cond_6

    .line 218
    .line 219
    const/4 v3, 0x2

    .line 220
    goto :goto_4

    .line 221
    :cond_6
    const/4 v3, 0x1

    .line 222
    :goto_4
    iget-object v5, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->g:Landroid/view/View;

    .line 223
    .line 224
    new-instance v6, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;

    .line 225
    .line 226
    invoke-direct {v6, p0, v0, v1, v3}, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    iget p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->g:I

    .line 233
    .line 234
    if-ne p1, v2, :cond_7

    .line 235
    .line 236
    const/4 v2, 0x2

    .line 237
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->h:Landroid/view/View;

    .line 238
    .line 239
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;

    .line 240
    .line 241
    invoke-direct {p3, p0, v0, v1, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :goto_5
    return-object p2
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d016b

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
    const v0, 0x7f0a1b1a

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a00a8

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
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a04e1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    .line 59
    .line 60
    const v0, 0x7f0a1b1d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a03db

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 79
    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 81
    .line 82
    const v0, 0x7f0a03cc

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->g:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;

    .line 99
    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->a:Z

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    .line 109
    .line 110
    const/16 v2, 0x8

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    const-string v0, "0"

    .line 122
    .line 123
    iget v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->i:I

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    if-eq v2, v3, :cond_4

    .line 127
    .line 128
    iget v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->f:I

    .line 129
    .line 130
    if-eq v2, v3, :cond_3

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    const-string v0, "1"

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    :goto_2
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 142
    .line 143
    const/4 v3, 0x4

    .line 144
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :goto_3
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 148
    .line 149
    iget-wide v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->h:D

    .line 150
    .line 151
    double-to-int v3, v3

    .line 152
    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 156
    .line 157
    iget-wide v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->h:D

    .line 158
    .line 159
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->d:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->d:Landroid/widget/TextView;

    .line 175
    .line 176
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->e:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->c:Landroid/widget/TextView;

    .line 182
    .line 183
    iget-wide v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->g:J

    .line 184
    .line 185
    const-wide/16 v4, 0x3e8

    .line 186
    .line 187
    mul-long v2, v2, v4

    .line 188
    .line 189
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->g:Landroid/view/View;

    .line 197
    .line 198
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->b:I

    .line 199
    .line 200
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->c:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    :goto_4
    return-object p2
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
            "view",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d01a1

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;

    .line 20
    .line 21
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/adapter/x;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v0, v1, p1, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    .line 53
    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0330

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;

    .line 20
    .line 21
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x1

    .line 45
    const-string v1, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v0, 0x2

    .line 58
    const/4 v3, 0x0

    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$a;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x3

    .line 78
    const-string v1, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    .line 79
    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v0, 0x4

    .line 89
    if-ne p1, v0, :cond_4

    .line 90
    .line 91
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "\u70b9\u8bc4\u7684\u6e38\u620f"

    .line 113
    .line 114
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->a:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->d:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "view",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const p3, 0x7f0d0262

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;

    .line 20
    .line 21
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 39
    .line 40
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getNick_name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/16 v2, 0x8

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :goto_1
    const-string v1, "1"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getSex()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    .line 104
    .line 105
    const v4, 0x7f080577

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    .line 113
    .line 114
    const v4, 0x7f080578

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getVip()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getSvip()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-lez v1, :cond_3

    .line 129
    .line 130
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :goto_3
    if-lez v4, :cond_4

    .line 142
    .line 143
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->h:Lcom/join/mgps/customview/VipView;

    .line 144
    .line 145
    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getTag_info()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    const-string v1, ","

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 167
    .line 168
    .line 169
    array-length v1, p1

    .line 170
    :goto_4
    if-ge v3, v1, :cond_5

    .line 171
    .line 172
    aget-object v2, p1, v3

    .line 173
    .line 174
    iget-object v4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const v5, 0x7f0d0264

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v5, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    const v5, 0x7f0a175d

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_5
    return-object p2
.end method


# virtual methods
.method public c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;->b()Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_ITEM_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ne v0, v1, :cond_4

    .line 64
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_F:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v0, v1, :cond_5

    .line 77
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    :cond_5
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->values()[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
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

.method public o(Lcom/join/mgps/adapter/CommentSelfListAdapter$j;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 2
    .line 3
    return-void
.end method

.method p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "commentId",
            "gameId",
            "commentScoreSwitch"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
