.class public Lcom/join/mgps/adapter/ForumTopicAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumTopicAdapter$k;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$l;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$o;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$n;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$p;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$s;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$q;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$r;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$m;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$u;
    }
.end annotation


# instance fields
.field private b:Lcom/join/android/app/component/optimizetext/b;

.field c:Lcom/danikula/videocache/i;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTopicAdapter$t;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/join/android/app/component/video/c;

.field g:I

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field i:I

.field j:Landroid/widget/LinearLayout$LayoutParams;

.field k:Landroid/widget/LinearLayout$LayoutParams;

.field private l:Lcom/join/mgps/adapter/ForumTopicAdapter$k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "helper"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->g:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->i:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->l:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->f:Lcom/join/android/app/component/video/c;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

    .line 22
    .line 23
    new-instance p2, Lcom/join/android/app/component/optimizetext/b;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->c:Lcom/danikula/videocache/i;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->s()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private F(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "imgUrl"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 40
    .line 41
    const/high16 v1, 0x40c00000    # 6.0f

    .line 42
    .line 43
    mul-float p2, p2, v1

    .line 44
    .line 45
    float-to-int p2, p2

    .line 46
    mul-int/lit8 p2, p2, 0x2

    .line 47
    .line 48
    sub-int/2addr v0, p2

    .line 49
    const/high16 p2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    int-to-float v1, v0

    .line 52
    mul-float v1, v1, p2

    .line 53
    .line 54
    const p2, 0x3fe66666    # 1.8f

    .line 55
    .line 56
    .line 57
    div-float/2addr v1, p2

    .line 58
    float-to-int p2, v1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .line 65
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 66
    .line 67
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumTopicAdapter;)Lcom/join/mgps/adapter/ForumTopicAdapter$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->l:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumTopicAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

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
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$l;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$l;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d069d

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
    const v0, 0x7f0a0156

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;

    .line 48
    .line 49
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->r(Landroid/content/Context;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, -0x1

    .line 65
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    if-eqz p3, :cond_1

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_1
    return-object p2
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v2, 0x7f0d06ee

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->b:Landroid/widget/TextView;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->c:Landroid/widget/TextView;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v2, 0x7f0a06aa

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;

    .line 85
    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->h:Z

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    const v5, 0x7f0a127e

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->b:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/view/ViewGroup;

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->b:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Landroid/view/ViewGroup;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->c:Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->c:I

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->d:Landroid/widget/TextView;

    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->d:I

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->g:Z

    .line 197
    .line 198
    iget v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->e:I

    .line 199
    .line 200
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->u(Landroid/view/View;ZI)V

    .line 201
    .line 202
    .line 203
    iget p3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->a:I

    .line 204
    .line 205
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->e:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/view/View;

    .line 212
    .line 213
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$c;

    .line 214
    .line 215
    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->e:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroid/view/View;

    .line 231
    .line 232
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->g:Z

    .line 233
    .line 234
    iget p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;->e:I

    .line 235
    .line 236
    invoke-direct {p0, v0, v2, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->u(Landroid/view/View;ZI)V

    .line 237
    .line 238
    .line 239
    iget-object p1, v1, Lcom/join/mgps/adapter/ForumTopicAdapter$n;->e:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Landroid/view/View;

    .line 246
    .line 247
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->E(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :goto_3
    return-object p2
.end method

.method private i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
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
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;

    .line 12
    .line 13
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f0d06ef

    .line 23
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
    const v0, 0x7f0a06a1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->f:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a069e

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    const v0, 0x7f0a06a8

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->c:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a069d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->d:Landroid/widget/TextView;

    .line 71
    .line 72
    const v0, 0x7f0a06ae

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    const v0, 0x7f0a06a7

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .line 92
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->h:Landroid/widget/ImageView;

    .line 93
    .line 94
    const v0, 0x7f0a0683

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->g:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    const v0, 0x7f0a0669

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/ImageView;

    .line 113
    .line 114
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->i:Landroid/widget/ImageView;

    .line 115
    .line 116
    const v0, 0x7f0a1ba6

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 124
    .line 125
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->j:Lcom/join/mgps/customview/VipView;

    .line 126
    .line 127
    const v0, 0x7f0a043d

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;

    .line 146
    .line 147
    if-nez p1, :cond_1

    .line 148
    .line 149
    return-object p2

    .line 150
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->g:Landroid/widget/RelativeLayout;

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .line 155
    .line 156
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->j:Lcom/join/mgps/customview/VipView;

    .line 157
    .line 158
    iget v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->k:I

    .line 159
    .line 160
    iget v3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->l:I

    .line 161
    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->j:I

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    const/16 v3, 0x8

    .line 174
    .line 175
    if-eq v0, v2, :cond_2

    .line 176
    .line 177
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->i:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->i:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->a:Z

    .line 189
    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->f:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->f:Landroid/view/View;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :goto_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->c:Landroid/widget/TextView;

    .line 204
    .line 205
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->c:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->d:Landroid/widget/TextView;

    .line 211
    .line 212
    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->d:J

    .line 213
    .line 214
    const-wide/16 v6, 0x3e8

    .line 215
    .line 216
    mul-long v4, v4, v6

    .line 217
    .line 218
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->e:Z

    .line 226
    .line 227
    if-eqz v0, :cond_4

    .line 228
    .line 229
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->e:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->e:Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->i:Z

    .line 241
    .line 242
    if-eqz v0, :cond_5

    .line 243
    .line 244
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->c:Landroid/widget/TextView;

    .line 245
    .line 246
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    const v5, 0x7f06002b

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->h:Landroid/widget/ImageView;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 269
    .line 270
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->c:Landroid/widget/TextView;

    .line 271
    .line 272
    iget v5, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->k:I

    .line 273
    .line 274
    iget v6, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->l:I

    .line 275
    .line 276
    const v7, 0x7f06014c

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v4, v5, v6, v7}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 280
    .line 281
    .line 282
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->h:Landroid/widget/ImageView;

    .line 283
    .line 284
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 288
    .line 289
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->b:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 295
    .line 296
    new-instance v4, Lcom/join/mgps/adapter/ForumTopicAdapter$b;

    .line 297
    .line 298
    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    iget v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->f:I

    .line 305
    .line 306
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V

    .line 307
    .line 308
    .line 309
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->g:Landroid/widget/RelativeLayout;

    .line 310
    .line 311
    invoke-virtual {p0, v4, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->H(Landroid/view/View;I)V

    .line 312
    .line 313
    .line 314
    const/4 v0, 0x3

    .line 315
    new-array v0, v0, [Landroid/view/View;

    .line 316
    .line 317
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 318
    .line 319
    aput-object v4, v0, v1

    .line 320
    .line 321
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->c:Landroid/widget/TextView;

    .line 322
    .line 323
    aput-object v4, v0, v2

    .line 324
    .line 325
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->d:Landroid/widget/TextView;

    .line 326
    .line 327
    const/4 v5, 0x2

    .line 328
    aput-object v4, v0, v5

    .line 329
    .line 330
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    new-array v0, v2, [Landroid/view/View;

    .line 334
    .line 335
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->j:Lcom/join/mgps/customview/VipView;

    .line 336
    .line 337
    aput-object v2, v0, v1

    .line 338
    .line 339
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->n:Ljava/lang/String;

    .line 343
    .line 344
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;->o:Ljava/lang/String;

    .line 345
    .line 346
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 347
    .line 348
    if-eqz v2, :cond_8

    .line 349
    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_7

    .line 355
    .line 356
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 357
    .line 358
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const v1, 0x7f0805d1

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_6

    .line 384
    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    const/4 v2, 0x7

    .line 390
    if-ne v1, v2, :cond_6

    .line 391
    .line 392
    const-string v1, "#"

    .line 393
    .line 394
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_6

    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_6
    const-string p1, "#2fccdf"

    .line 402
    .line 403
    :goto_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 404
    .line 405
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$o;->k:Landroid/widget/TextView;

    .line 426
    .line 427
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :catch_1
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 433
    .line 434
    .line 435
    :cond_8
    :goto_7
    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f1

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
    const v0, 0x7f0a06a4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->c:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const v0, 0x7f0a08ce

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->b:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a092d

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v0, 0x7f0a092e

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    const v0, 0x7f0a092f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->t(Lcom/join/mgps/adapter/ForumTopicAdapter$p;Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;)V

    .line 97
    .line 98
    .line 99
    iget p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;->c:I

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-object p2
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, ""

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
    check-cast v0, Lcom/join/mgps/adapter/ForumTopicAdapter$q;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$q;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06bc

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
    const v1, 0x7f0a06a6

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$q;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;->c:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$q;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;->c:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$q;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->X0(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;->c:I

    .line 118
    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$r;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$r;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$r;->b:Landroid/widget/Button;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$r;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$r;->c:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->b:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->a:Z

    .line 68
    .line 69
    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->e:Z

    .line 70
    .line 71
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->f:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->g:Ljava/util/List;

    .line 74
    .line 75
    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumTopicAdapter;->w(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    iget p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;->c:I

    .line 80
    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->C(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object p2
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d0694

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a06ae

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a069f

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/Button;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->d:Landroid/widget/Button;

    .line 61
    .line 62
    const v0, 0x7f0a06a9

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->e:Landroid/widget/ImageView;

    .line 72
    .line 73
    const v0, 0x7f0a06b0

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->f:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x8

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->b:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->b:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->b:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->c:Z

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->d:Landroid/widget/Button;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->d:Landroid/widget/Button;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->d:Z

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->e:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->e:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->e:Z

    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->f:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$m;->f:Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :goto_4
    iget p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;->a:I

    .line 171
    .line 172
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$d;

    .line 173
    .line 174
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :goto_5
    return-object p2
.end method

.method private n(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->g:I

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
    const p1, 0x3fe66666    # 1.8f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->g:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->g:I

    .line 42
    .line 43
    return p1
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumTopicAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06c1

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
    const v0, 0x7f0a1b63

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->c:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    const v0, 0x7f0a015d

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->n(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;->b:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;->a:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->c:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    const/4 v4, -0x1

    .line 80
    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->c:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    const v3, 0x7f081349

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v3, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumTopicAdapter$s;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_3

    .line 110
    .line 111
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->c:Lcom/danikula/videocache/i;

    .line 112
    .line 113
    if-eqz p3, :cond_2

    .line 114
    .line 115
    invoke-virtual {p3, v2}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :cond_2
    new-instance p3, Lcom/join/android/app/component/video/c$l;

    .line 120
    .line 121
    invoke-direct {p3, p1, v2, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->f:Lcom/join/android/app/component/video/c;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    new-array v1, v1, [Z

    .line 128
    .line 129
    invoke-virtual {v0, p1, p3, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    return-object p2
.end method

.method private r(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->i:I

    .line 6
    .line 7
    if-nez v1, :cond_1

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
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v2, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    sub-int/2addr v1, v0

    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    int-to-float v0, v1

    .line 29
    mul-float v0, v0, p1

    .line 30
    .line 31
    const p1, 0x40047ae1    # 2.07f

    .line 32
    .line 33
    .line 34
    div-float/2addr v0, p1

    .line 35
    float-to-int p1, v0

    .line 36
    iput p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->i:I

    .line 37
    .line 38
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->i:I

    .line 39
    .line 40
    return p1
.end method

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->q()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private t(Lcom/join/mgps/adapter/ForumTopicAdapter$p;Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "item"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->q()Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;->b:Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-le v4, v8, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "\u5171"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, "\u5f20"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    new-array v9, v8, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    aput-object v2, v9, v3

    .line 80
    .line 81
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    aput-object v2, v9, v4

    .line 85
    .line 86
    const/4 v2, 0x2

    .line 87
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 88
    .line 89
    aput-object p1, v9, v2

    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    const/4 v10, 0x0

    .line 93
    :goto_1
    if-ge p1, v8, :cond_6

    .line 94
    .line 95
    aget-object v3, v9, p1

    .line 96
    .line 97
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;->a:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-lt p1, v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;->a:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const-string v5, "pic"

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    sub-int v6, p1, v10

    .line 134
    .line 135
    move-object v2, p0

    .line 136
    move v4, p1

    .line 137
    move-object v7, v1

    .line 138
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumTopicAdapter;->y(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const-string v5, "video"

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    add-int/lit8 v10, v10, 0x1

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter;->G(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    return-void

    .line 171
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumTopicAdapter$p;->c:Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private u(Landroid/view/View;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "like",
            "count"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a06aa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const v1, 0x7f0a06ab

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const p2, 0x7f080c51

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const p2, 0x7f081320

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method private v(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 17
    .line 18
    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/ForumTopicAdapter;->u(Landroid/view/View;ZI)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private w(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tv",
            "message",
            "best",
            "ask",
            "moneyForAnswer",
            "tagInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/join/mgps/Util/r0;->w1(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/join/android/app/component/optimizetext/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-void
.end method

.method public B(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumTopicAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public C(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public D(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "videoSrc",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumTopicAdapter$a;

    .line 5
    .line 6
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public E(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumTopicAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method G(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "href"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->q()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 24
    .line 25
    mul-float v0, v0, v1

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 67
    .line 68
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/adapter/ForumTopicAdapter$f;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumTopicAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 p2, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public H(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumTopicAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method c(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measuredWidth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 16
    .line 17
    const/high16 v1, 0x43610000    # 225.0f

    .line 18
    .line 19
    mul-float v1, v1, v0

    .line 20
    .line 21
    float-to-int v1, v1

    .line 22
    const/high16 v2, 0x43160000    # 150.0f

    .line 23
    .line 24
    mul-float v2, v2, v0

    .line 25
    .line 26
    float-to-int v2, v2

    .line 27
    const/high16 v3, 0x40800000    # 4.0f

    .line 28
    .line 29
    mul-float v0, v0, v3

    .line 30
    .line 31
    float-to-int v0, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    if-le p1, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-lez p1, :cond_1

    .line 37
    .line 38
    move v1, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    int-to-float v4, v1

    .line 42
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 43
    .line 44
    div-float/2addr v4, v5

    .line 45
    float-to-int v4, v4

    .line 46
    if-gtz p1, :cond_2

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v4

    .line 51
    :goto_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    return-object p1
.end method

.method d(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    float-to-int p1, p1

    .line 26
    mul-int/lit8 p1, p1, 0x6

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    .line 36
    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTopicAdapter$t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->b()Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->FORUM_TOPIC_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v0, v1, :cond_6

    .line 90
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ne v0, v1, :cond_7

    .line 103
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumTopicAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    :cond_7
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
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

.method public p(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method q()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

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

.method public x(Lcom/join/mgps/adapter/ForumTopicAdapter$k;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->l:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    .line 2
    .line 3
    return-void
.end method

.method y(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "imgIndex",
            "rawPicList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->q()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->d:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 24
    .line 25
    mul-float v0, v0, v1

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 67
    .line 68
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/adapter/ForumTopicAdapter$e;

    .line 72
    .line 73
    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumTopicAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter;Ljava/util/List;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 p2, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public z(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumTopicAdapter$t;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter;->e:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
