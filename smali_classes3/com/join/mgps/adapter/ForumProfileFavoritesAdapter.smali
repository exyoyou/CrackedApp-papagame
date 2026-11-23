.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f0;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l0;
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
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/join/android/app/component/video/c;

.field g:I

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field i:Landroid/widget/LinearLayout$LayoutParams;

.field j:Landroid/widget/LinearLayout$LayoutParams;

.field private k:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 2
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
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l:Ljava/util/List;

    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    .line 22
    .line 23
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    .line 26
    .line 27
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->r:I

    .line 28
    .line 29
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:Lcom/join/android/app/component/video/c;

    .line 32
    .line 33
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 39
    .line 40
    new-instance p2, Lcom/join/android/app/component/optimizetext/b;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->y(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c:Lcom/danikula/videocache/i;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->A()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private B(Landroid/widget/TextView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "textView",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private C(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "holder",
            "like",
            "count",
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->i:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const p2, 0x7f080c51

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "#d92a0c"

    .line 34
    .line 35
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const p2, 0x7f081320

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "#a9a9a9"

    .line 68
    .line 69
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/view/View;

    .line 83
    .line 84
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;

    .line 85
    .line 86
    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private E(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;)V
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
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->b:Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->b:Landroid/widget/TextView;

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
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    aput-object v2, v9, v3

    .line 80
    .line 81
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    aput-object v2, v9, v4

    .line 85
    .line 86
    const/4 v2, 0x2

    .line 87
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

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
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->a:Ljava/util/List;

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
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

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
    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

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
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->c:Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private F(Landroid/view/View;ZI)V
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

.method private G(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
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
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private H(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 10
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
    const/4 v7, 0x0

    .line 2
    const/4 v8, 0x0

    .line 3
    const-string v9, ""

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "tagInfos",
            "tags",
            "fid",
            "fname"
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
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0, p6}, Lcom/join/mgps/Util/r0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p3, p4, p5}, Lcom/join/mgps/Util/r0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-static {p3, v0, p7, p8, p9}, Lcom/join/mgps/Util/r0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private W(Landroid/widget/ImageView;Ljava/lang/String;)V
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

.method private X(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "text"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method private Y(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "color"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 2
    .line 3
    return-object p0
.end method

.method private b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "type"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x11

    .line 38
    .line 39
    if-ne p2, v2, :cond_1

    .line 40
    .line 41
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06c9

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
    const v0, 0x7f0a06a1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    .line 37
    .line 38
    const v0, 0x7f0a1ac4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    .line 48
    .line 49
    const v0, 0x7f0a1758

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->d:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;

    .line 68
    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->a:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    .line 77
    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->b:Landroid/view/View;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->b:I

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    if-ne v0, v1, :cond_3

    .line 94
    .line 95
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v1, "\u6e38\u620f"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v1, 0x2

    .line 104
    if-ne v0, v1, :cond_4

    .line 105
    .line 106
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    .line 107
    .line 108
    const-string v1, "\u5e16\u5b50"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->c:Landroid/widget/TextView;

    .line 115
    .line 116
    const-string v1, "\u6536\u85cf"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    const-string v0, ""

    .line 130
    .line 131
    iput-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    .line 132
    .line 133
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$t;->d:Landroid/widget/TextView;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-object p2
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d0681

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
    const v1, 0x7f0a0134

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    const v1, 0x7f0a0949

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    .line 50
    .line 51
    const v1, 0x7f0a07ce

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->b:Landroid/widget/TextView;

    .line 61
    .line 62
    const v1, 0x7f0a082a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->c:Landroid/widget/TextView;

    .line 72
    .line 73
    const v1, 0x7f0a0e5e

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    .line 83
    .line 84
    const v1, 0x7f0a03cd

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->e:Landroid/widget/TextView;

    .line 94
    .line 95
    const v1, 0x7f0a06b1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->h:Landroid/widget/TextView;

    .line 105
    .line 106
    const v1, 0x7f0a04e1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    .line 114
    .line 115
    const v1, 0x7f0a06ab

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/ImageView;

    .line 123
    .line 124
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->i:Landroid/widget/ImageView;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    if-nez v0, :cond_1

    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :cond_1
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->b:Z

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    const/16 v3, 0x8

    .line 145
    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->f:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->a:I

    .line 160
    .line 161
    if-nez v1, :cond_3

    .line 162
    .line 163
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_4

    .line 170
    .line 171
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eq v1, v3, :cond_4

    .line 184
    .line 185
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->g:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->b:Landroid/widget/TextView;

    .line 191
    .line 192
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->c:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->c:Landroid/widget/TextView;

    .line 198
    .line 199
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->d:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->d:Landroid/widget/TextView;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->e:I

    .line 212
    .line 213
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->e:Landroid/widget/TextView;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->f:I

    .line 238
    .line 239
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->h:Landroid/widget/TextView;

    .line 257
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->i:I

    .line 264
    .line 265
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 283
    .line 284
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->k:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {p3, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 290
    .line 291
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k;

    .line 292
    .line 293
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->g:I

    .line 300
    .line 301
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V

    .line 302
    .line 303
    .line 304
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->j:Z

    .line 305
    .line 306
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->e:I

    .line 307
    .line 308
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;->g:I

    .line 309
    .line 310
    invoke-direct {p0, v0, p3, v1, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->C(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_5
    :goto_3
    return-object p2

    .line 315
    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :goto_4
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;

    .line 10
    .line 11
    move-object/from16 v8, p2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;

    .line 15
    .line 16
    invoke-direct {v0, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f0d0682

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f0a15d8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->b:Landroid/view/View;

    .line 41
    .line 42
    const v2, 0x7f0a093f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->c:Landroid/view/View;

    .line 50
    .line 51
    const v2, 0x7f0a092d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v2, 0x7f0a092e

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    const v2, 0x7f0a092f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    const v2, 0x7f0a08ce

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->g:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    move-object v8, v1

    .line 99
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    move-object v9, v1

    .line 104
    check-cast v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;

    .line 105
    .line 106
    if-nez v9, :cond_1

    .line 107
    .line 108
    return-object v8

    .line 109
    :cond_1
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    .line 110
    .line 111
    const/16 v10, 0x8

    .line 112
    .line 113
    if-eqz v1, :cond_b

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_2
    const/4 v11, 0x0

    .line 124
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v12, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->b:Ljava/util/List;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->g:Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v12, :cond_3

    .line 132
    .line 133
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    move v13, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const/4 v13, 0x0

    .line 140
    :goto_1
    const/4 v14, 0x3

    .line 141
    if-le v13, v14, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v3, "\u5171"

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, "\u5f20"

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :goto_2
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iput-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .line 189
    :cond_5
    new-array v15, v14, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 190
    .line 191
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    aput-object v1, v15, v11

    .line 194
    .line 195
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    aput-object v1, v15, v6

    .line 199
    .line 200
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$y;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 201
    .line 202
    const/4 v1, 0x2

    .line 203
    aput-object v0, v15, v1

    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    :goto_3
    if-ge v0, v14, :cond_a

    .line 209
    .line 210
    aget-object v2, v15, v0

    .line 211
    .line 212
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-lt v0, v1, :cond_6

    .line 219
    .line 220
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    const/16 v17, 0x1

    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :cond_6
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->a:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const-string v4, "pic"

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_8

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v4}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    if-ne v13, v6, :cond_7

    .line 261
    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    aget-object v3, v1, v11

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_7

    .line 271
    .line 272
    aget-object v1, v1, v6

    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_7

    .line 279
    .line 280
    sub-int v5, v0, v16

    .line 281
    .line 282
    move-object/from16 v1, p0

    .line 283
    .line 284
    move v3, v0

    .line 285
    const/16 v17, 0x1

    .line 286
    .line 287
    move-object v6, v12

    .line 288
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->N(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_7
    const/16 v17, 0x1

    .line 293
    .line 294
    sub-int v5, v0, v16

    .line 295
    .line 296
    move-object/from16 v1, p0

    .line 297
    .line 298
    move v3, v0

    .line 299
    move-object v6, v12

    .line 300
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_8
    const/16 v17, 0x1

    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    const-string v4, "video"

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_9

    .line 317
    .line 318
    add-int/lit8 v16, v16, 0x1

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v7, v2, v0, v3, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 332
    .line 333
    const/4 v6, 0x1

    .line 334
    goto :goto_3

    .line 335
    :cond_a
    iget v0, v9, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;->c:I

    .line 336
    .line 337
    invoke-virtual {v7, v8, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_b
    :goto_5
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .line 343
    .line 344
    return-object v8

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 347
    .line 348
    .line 349
    :goto_6
    return-object v8
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d0683

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
    const v1, 0x7f0a10a4

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 41
    .line 42
    const v1, 0x7f0a04e1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    .line 50
    .line 51
    const v1, 0x7f0a15d8

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;

    .line 68
    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 128
    .line 129
    .line 130
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 131
    .line 132
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->X0(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->a:Z

    .line 136
    .line 137
    if-eqz p3, :cond_3

    .line 138
    .line 139
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->c:Landroid/view/View;

    .line 152
    .line 153
    const/16 v1, 0x8

    .line 154
    .line 155
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$z;->d:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :goto_1
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;->d:I

    .line 164
    .line 165
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :goto_2
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d0686

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;->b:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;->a:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .line 73
    iget v3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->r:I

    .line 74
    .line 75
    const/4 v4, -0x1

    .line 76
    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->b:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    const v3, 0x7f081349

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_2

    .line 106
    .line 107
    new-instance p3, Lcom/join/android/app/component/video/c$l;

    .line 108
    .line 109
    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:Lcom/join/android/app/component/video/c;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    new-array v1, v1, [Z

    .line 116
    .line 117
    invoke-virtual {v0, p1, p3, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    return-object p2
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->c:Landroid/widget/TextView;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->d:Landroid/widget/TextView;

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
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;

    .line 85
    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->h:Z

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

    .line 115
    .line 116
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->b:Ljava/lang/String;

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->b:Landroid/widget/TextView;

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->c:Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->c:I

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
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->d:Landroid/widget/TextView;

    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->d:I

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
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->g:Z

    .line 197
    .line 198
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->e:I

    .line 199
    .line 200
    invoke-direct {p0, p2, p3, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    .line 201
    .line 202
    .line 203
    iget p3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->a:I

    .line 204
    .line 205
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

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
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$m;

    .line 214
    .line 215
    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

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
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->g:Z

    .line 233
    .line 234
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;->e:I

    .line 235
    .line 236
    invoke-direct {p0, v0, v2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->F(Landroid/view/View;ZI)V

    .line 237
    .line 238
    .line 239
    iget-object p1, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b0;->e:Landroid/widget/TextView;

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
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->V(Landroid/view/View;I)V
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

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;

    .line 10
    .line 11
    move-object/from16 v8, p2

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;

    .line 16
    .line 17
    invoke-direct {v0, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f0d06b5

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f0a1044

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    .line 45
    const v2, 0x7f0a1042

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->c:Landroid/widget/TextView;

    .line 55
    .line 56
    const v2, 0x7f0a1045

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/Button;

    .line 64
    .line 65
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 66
    .line 67
    const v2, 0x7f0a1046

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->e:Landroid/widget/TextView;

    .line 77
    .line 78
    const v2, 0x7f0a1043

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    .line 88
    .line 89
    const v2, 0x7f0a0e73

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->g:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v2, 0x7f0a1764

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v2, 0x7f0a00f7

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 121
    .line 122
    const v2, 0x7f0a0f94

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    .line 132
    .line 133
    const v2, 0x7f0a129e

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Landroid/widget/ProgressBar;

    .line 141
    .line 142
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 143
    .line 144
    const v2, 0x7f0a12a5

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Landroid/widget/ProgressBar;

    .line 152
    .line 153
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 154
    .line 155
    const v2, 0x7f0a0e61

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->m:Landroid/view/View;

    .line 163
    .line 164
    const v2, 0x7f0a135c

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->n:Landroid/view/View;

    .line 172
    .line 173
    const v2, 0x7f0a04e1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v8, v1

    .line 186
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;

    .line 191
    .line 192
    if-nez v1, :cond_1

    .line 193
    .line 194
    return-object v8

    .line 195
    :cond_1
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 196
    .line 197
    iget-object v10, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->b:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    iget-boolean v1, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->a:Z

    .line 204
    .line 205
    const/4 v12, 0x0

    .line 206
    const/16 v13, 0x8

    .line 207
    .line 208
    if-eqz v1, :cond_2

    .line 209
    .line 210
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_3

    .line 217
    .line 218
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eq v1, v13, :cond_3

    .line 231
    .line 232
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->o:Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 238
    .line 239
    const v2, 0x7f0804a8

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const v2, 0x7f070b2c

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 265
    .line 266
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 267
    .line 268
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->c:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->f:Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v16

    .line 295
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 296
    .line 297
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v3, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 302
    .line 303
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    invoke-direct {v7, v0, v12}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 318
    .line 319
    .line 320
    move-result-object v15

    .line 321
    if-eqz v15, :cond_4

    .line 322
    .line 323
    invoke-virtual {v7, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->L(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_4
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-eqz v1, :cond_5

    .line 332
    .line 333
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-lez v1, :cond_5

    .line 342
    .line 343
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_5

    .line 356
    .line 357
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 358
    .line 359
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_5
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 372
    .line 373
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 378
    .line 379
    .line 380
    :goto_2
    iget-object v6, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 381
    .line 382
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i;

    .line 383
    .line 384
    move-object v1, v5

    .line 385
    move-object/from16 v2, p0

    .line 386
    .line 387
    move-object v3, v9

    .line 388
    move-object v4, v15

    .line 389
    move-object v12, v5

    .line 390
    move-object v5, v10

    .line 391
    move-object v13, v6

    .line 392
    move-object v6, v11

    .line 393
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .line 398
    .line 399
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v2, ""

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_6

    .line 431
    .line 432
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 433
    .line 434
    const/16 v2, 0x8

    .line 435
    .line 436
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 440
    .line 441
    const v2, 0x7f080f8b

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 445
    .line 446
    .line 447
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 448
    .line 449
    const-string v2, "\u5f00\u59cb"

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 455
    .line 456
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    const v3, 0x7f06002b

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_6
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 474
    .line 475
    const/4 v2, 0x0

    .line 476
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    .line 478
    .line 479
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 480
    .line 481
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 482
    .line 483
    invoke-static {v14, v1, v2}, Lcom/join/mgps/Util/r0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 495
    .line 496
    .line 497
    move-result-object v17

    .line 498
    const/16 v18, 0x0

    .line 499
    .line 500
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->h:Landroid/widget/LinearLayout;

    .line 501
    .line 502
    iget-object v3, v7, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 503
    .line 504
    move-object v4, v15

    .line 505
    move v15, v1

    .line 506
    move-object/from16 v19, v2

    .line 507
    .line 508
    move-object/from16 v20, v3

    .line 509
    .line 510
    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-static {v1, v8, v4}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 518
    .line 519
    .line 520
    :goto_4
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->n:Landroid/view/View;

    .line 521
    .line 522
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j;

    .line 523
    .line 524
    invoke-direct {v1, v7, v10, v11, v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .line 529
    .line 530
    goto :goto_5

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 533
    .line 534
    .line 535
    :goto_5
    return-object v8
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06ef

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
    const v0, 0x7f0a06a1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->f:Landroid/view/View;

    .line 37
    .line 38
    const v0, 0x7f0a069e

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const v0, 0x7f0a06a8

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a069d

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a06ae

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    .line 81
    .line 82
    const v0, 0x7f0a0683

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    const v0, 0x7f0a06a7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .line 102
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    .line 103
    .line 104
    const v0, 0x7f0a1ba6

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 112
    .line 113
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    .line 114
    .line 115
    const v0, 0x7f0a043d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;

    .line 134
    .line 135
    if-nez p1, :cond_1

    .line 136
    .line 137
    return-object p2

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 139
    .line 140
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    .line 141
    .line 142
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->k:I

    .line 143
    .line 144
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->l:I

    .line 145
    .line 146
    const v4, 0x7f06014c

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 150
    .line 151
    .line 152
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    .line 153
    .line 154
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->k:I

    .line 155
    .line 156
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->l:I

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->a:Z

    .line 169
    .line 170
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->f:Landroid/view/View;

    .line 171
    .line 172
    const/16 v3, 0x8

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    .line 178
    .line 179
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-wide v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->d:J

    .line 187
    .line 188
    const-wide/16 v6, 0x3e8

    .line 189
    .line 190
    mul-long v4, v4, v6

    .line 191
    .line 192
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->e:Z

    .line 200
    .line 201
    if-eqz v2, :cond_2

    .line 202
    .line 203
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->e:Landroid/widget/TextView;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    :goto_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->j:Z

    .line 215
    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_3
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->h:Landroid/widget/ImageView;

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :goto_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 230
    .line 231
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->b:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v2, v4}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 237
    .line 238
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l;

    .line 239
    .line 240
    invoke-direct {v4, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->f:I

    .line 247
    .line 248
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V

    .line 249
    .line 250
    .line 251
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->i:Landroid/widget/RelativeLayout;

    .line 252
    .line 253
    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a0(Landroid/view/View;I)V

    .line 254
    .line 255
    .line 256
    const/4 v2, 0x3

    .line 257
    new-array v2, v2, [Landroid/view/View;

    .line 258
    .line 259
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 260
    .line 261
    aput-object v4, v2, v1

    .line 262
    .line 263
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->c:Landroid/widget/TextView;

    .line 264
    .line 265
    aput-object v4, v2, v0

    .line 266
    .line 267
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->d:Landroid/widget/TextView;

    .line 268
    .line 269
    const/4 v5, 0x2

    .line 270
    aput-object v4, v2, v5

    .line 271
    .line 272
    invoke-static {v2}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    new-array v0, v0, [Landroid/view/View;

    .line 276
    .line 277
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->j:Lcom/join/mgps/customview/VipView;

    .line 278
    .line 279
    aput-object v2, v0, v1

    .line 280
    .line 281
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->a(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 293
    .line 294
    if-eqz v2, :cond_6

    .line 295
    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_5

    .line 301
    .line 302
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const v1, 0x7f0805d1

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_4

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    const/4 v2, 0x7

    .line 336
    if-ne v1, v2, :cond_4

    .line 337
    .line 338
    const-string v1, "#"

    .line 339
    .line 340
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_4

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_4
    const-string p1, "#2fccdf"

    .line 348
    .line 349
    :goto_3
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 350
    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d0;->k:Landroid/widget/TextView;

    .line 372
    .line 373
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    :cond_6
    :goto_4
    return-object p2
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->c:Landroid/widget/RelativeLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->b:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->E(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e0;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;)V

    .line 97
    .line 98
    .line 99
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;->c:I

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

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
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g0;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->X0(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;->c:I

    .line 118
    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d0684

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
    const v0, 0x7f0a01fe

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->b:Landroid/widget/Button;

    .line 39
    .line 40
    const v0, 0x7f0a1644

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a1645

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->e:Landroid/view/View;

    .line 59
    .line 60
    const v0, 0x7f0a06a1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->a:Z

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->d:Landroid/view/View;

    .line 93
    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->c:Ljava/lang/String;

    .line 111
    .line 112
    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->b:Z

    .line 113
    .line 114
    iget-boolean v6, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->f:Z

    .line 115
    .line 116
    iget-object v7, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->g:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v8, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->h:Ljava/util/List;

    .line 119
    .line 120
    iget-object v9, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->i:Ljava/util/List;

    .line 121
    .line 122
    iget v10, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->e:I

    .line 123
    .line 124
    iget-object v11, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->j:Ljava/lang/String;

    .line 125
    .line 126
    move-object v2, p0

    .line 127
    invoke-direct/range {v2 .. v11}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->I(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;->d:I

    .line 131
    .line 132
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h0;->c:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->B(Landroid/widget/TextView;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->R(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-object p2
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->b:Landroid/widget/Button;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$i0;->c:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->b:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->a:Z

    .line 68
    .line 69
    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->e:Z

    .line 70
    .line 71
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->f:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->g:Ljava/util/List;

    .line 74
    .line 75
    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->H(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;->c:I

    .line 80
    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->T(Landroid/view/View;I)V
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

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->c:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->b:Ljava/lang/String;

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
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->b:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->c:Z

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->d:Landroid/widget/Button;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->d:Z

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->e:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->e:Z

    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$v;->f:Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :goto_4
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;->a:I

    .line 171
    .line 172
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$n;

    .line 173
    .line 174
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

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

.method private w(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->g:I

    .line 42
    .line 43
    return p1
.end method

.method private x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->c:Landroid/widget/FrameLayout;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->w(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->b:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->a:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->c:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$j0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_3

    .line 97
    .line 98
    new-instance p3, Lcom/join/android/app/component/video/c$l;

    .line 99
    .line 100
    invoke-direct {p3, p1, v1, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f:Lcom/join/android/app/component/video/c;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    new-array v1, v1, [Z

    .line 107
    .line 108
    invoke-virtual {v0, p1, p3, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_1
    return-object p2
.end method


# virtual methods
.method public D(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "event"
        }
    .end annotation

    .line 1
    return-void
.end method

.method J(Landroid/view/View;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "status"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    instance-of v3, v1, Landroid/widget/TextView;

    .line 12
    .line 13
    const v4, 0x7f080f93

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const v6, -0x767677

    .line 18
    .line 19
    .line 20
    const/high16 v7, 0x41300000    # 11.0f

    .line 21
    .line 22
    const-string v8, "\u5373\u5c06\u5f00\u653e"

    .line 23
    .line 24
    const v10, 0x7f120104

    .line 25
    .line 26
    .line 27
    const/high16 v11, 0x41400000    # 12.0f

    .line 28
    .line 29
    const v12, 0x7f120108

    .line 30
    .line 31
    .line 32
    const/4 v13, 0x3

    .line 33
    const v14, 0x7f080f8b

    .line 34
    .line 35
    .line 36
    const v15, -0xc35b03

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    if-ne v2, v13, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_0
    if-ne v2, v9, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    const/high16 v2, 0x41500000    # 13.0f

    .line 103
    .line 104
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    instance-of v3, v1, Landroid/widget/Button;

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    check-cast v1, Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    if-ne v2, v13, :cond_3

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    if-ne v2, v9, :cond_4

    .line 147
    .line 148
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const/high16 v2, 0x41500000    # 13.0f

    .line 178
    .line 179
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_0
    return-void
.end method

.method K(Landroid/widget/TextView;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "payGameAmount"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    const v1, -0xc35b03

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    int-to-double v3, p2

    .line 18
    invoke-static {v3, v4}, Lcom/join/mgps/Util/t2;->n(D)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p2, v0, v3

    .line 24
    .line 25
    const p2, 0x7f12037c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x2

    .line 36
    const/high16 v0, 0x41500000    # 13.0f

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    const p2, 0x7f080f8b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method L(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;Ljava/lang/Object;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "businessBean"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v4, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 8
    .line 9
    if-eqz v4, :cond_19

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_c

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object v6, v3

    .line 24
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 43
    .line 44
    .line 45
    move-result-wide v11

    .line 46
    instance-of v13, v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 47
    .line 48
    if-eqz v13, :cond_3

    .line 49
    .line 50
    move-object v6, v3

    .line 51
    check-cast v6, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    if-eqz v15, :cond_1

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    invoke-virtual {v15}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v15, 0x0

    .line 77
    :goto_0
    if-lez v15, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v14, v6}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    :cond_2
    move-object v6, v8

    .line 95
    move-object v8, v13

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    instance-of v13, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 98
    .line 99
    if-eqz v13, :cond_6

    .line 100
    .line 101
    move-object v13, v3

    .line 102
    check-cast v13, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 103
    .line 104
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    const/4 v14, 0x0

    .line 109
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    check-cast v13, Lcom/join/mgps/dto/AppBeanMain;

    .line 114
    .line 115
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    if-eqz v14, :cond_4

    .line 124
    .line 125
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const/4 v14, 0x0

    .line 135
    :goto_1
    if-lez v14, :cond_5

    .line 136
    .line 137
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-virtual {v15, v13}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move v15, v14

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :goto_2
    const/4 v15, 0x0

    .line 155
    :goto_3
    const-string v13, "\u66f4\u65b0"

    .line 156
    .line 157
    const v14, 0x7f080f90

    .line 158
    .line 159
    .line 160
    if-nez v6, :cond_d

    .line 161
    .line 162
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_b

    .line 167
    .line 168
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v6, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-lez v15, :cond_7

    .line 177
    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    move/from16 v16, v6

    .line 182
    .line 183
    :goto_4
    if-eqz v16, :cond_9

    .line 184
    .line 185
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_8

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-ge v2, v6, :cond_8

    .line 208
    .line 209
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    const v0, 0x7f060031

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_b

    .line 226
    .line 227
    :cond_8
    const v2, 0x7f080f97

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const v2, 0x7f120105

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    const v0, 0x7f060034

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_b

    .line 258
    .line 259
    :cond_9
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    .line 261
    .line 262
    if-lez v15, :cond_a

    .line 263
    .line 264
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 265
    .line 266
    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_b

    .line 270
    .line 271
    :cond_a
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_b

    .line 275
    .line 276
    :cond_b
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    .line 278
    .line 279
    if-lez v15, :cond_c

    .line 280
    .line 281
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 282
    .line 283
    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_b

    .line 287
    .line 288
    :cond_c
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_b

    .line 292
    .line 293
    :cond_d
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-lez v15, :cond_e

    .line 298
    .line 299
    const/16 v8, 0x2b

    .line 300
    .line 301
    :cond_e
    if-eqz v8, :cond_11

    .line 302
    .line 303
    const/16 v10, 0x1b

    .line 304
    .line 305
    const-string v14, "\u6682\u505c\u4e2d"

    .line 306
    .line 307
    if-eq v8, v10, :cond_16

    .line 308
    .line 309
    const/4 v10, 0x2

    .line 310
    const-wide/16 v17, 0x0

    .line 311
    .line 312
    const-string v9, "/"

    .line 313
    .line 314
    if-eq v8, v10, :cond_14

    .line 315
    .line 316
    const/4 v10, 0x3

    .line 317
    if-eq v8, v10, :cond_12

    .line 318
    .line 319
    const/4 v10, 0x5

    .line 320
    if-eq v8, v10, :cond_10

    .line 321
    .line 322
    const/4 v10, 0x6

    .line 323
    if-eq v8, v10, :cond_12

    .line 324
    .line 325
    const/4 v10, 0x7

    .line 326
    if-eq v8, v10, :cond_11

    .line 327
    .line 328
    const/16 v7, 0x2a

    .line 329
    .line 330
    if-eq v8, v7, :cond_10

    .line 331
    .line 332
    const/16 v7, 0x2b

    .line 333
    .line 334
    if-eq v8, v7, :cond_f

    .line 335
    .line 336
    const/16 v0, 0x11

    .line 337
    .line 338
    packed-switch v8, :pswitch_data_0

    .line 339
    .line 340
    .line 341
    goto/16 :goto_b

    .line 342
    .line 343
    :pswitch_0
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 344
    .line 345
    .line 346
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 347
    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    .line 378
    .line 379
    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 380
    .line 381
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 385
    .line 386
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 387
    .line 388
    .line 389
    move-result-wide v6

    .line 390
    long-to-int v2, v6

    .line 391
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 392
    .line 393
    .line 394
    const v0, 0x7f080fb6

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 398
    .line 399
    .line 400
    const-string v0, "\u89e3\u538b"

    .line 401
    .line 402
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    const v0, 0x7f06002b

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_b

    .line 416
    .line 417
    :pswitch_1
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 421
    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    .line 452
    .line 453
    const-string v7, "\u89e3\u538b\u4e2d.."

    .line 454
    .line 455
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->l:Landroid/widget/ProgressBar;

    .line 459
    .line 460
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 461
    .line 462
    .line 463
    move-result-wide v6

    .line 464
    long-to-int v2, v6

    .line 465
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 466
    .line 467
    .line 468
    const v0, 0x7f080550

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 472
    .line 473
    .line 474
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 475
    .line 476
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    const v0, 0x7f060032

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_b

    .line 490
    .line 491
    :pswitch_2
    const/4 v0, 0x0

    .line 492
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 493
    .line 494
    .line 495
    const v0, 0x7f080f90

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 499
    .line 500
    .line 501
    const-string v0, "\u5b89\u88c5"

    .line 502
    .line 503
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    const v0, 0x7f060031

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_b

    .line 517
    .line 518
    :pswitch_3
    const/16 v0, 0x10

    .line 519
    .line 520
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 521
    .line 522
    .line 523
    const v0, 0x7f080f8b

    .line 524
    .line 525
    .line 526
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 527
    .line 528
    .line 529
    const-string v0, "\u7b49\u5f85"

    .line 530
    .line 531
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 532
    .line 533
    .line 534
    const v0, 0x7f06002b

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_b

    .line 545
    .line 546
    :pswitch_4
    const/4 v8, 0x0

    .line 547
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 548
    .line 549
    .line 550
    const v0, 0x7f080f90

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 554
    .line 555
    .line 556
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    const v0, 0x7f060031

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_b

    .line 570
    .line 571
    :cond_f
    const v0, 0x7f080f90

    .line 572
    .line 573
    .line 574
    const/4 v8, 0x0

    .line 575
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 579
    .line 580
    .line 581
    if-lez v15, :cond_18

    .line 582
    .line 583
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 584
    .line 585
    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_b

    .line 589
    .line 590
    :cond_10
    const/4 v8, 0x0

    .line 591
    goto :goto_5

    .line 592
    :cond_11
    const/4 v0, 0x0

    .line 593
    goto/16 :goto_a

    .line 594
    .line 595
    :cond_12
    const v0, 0x7f080f8b

    .line 596
    .line 597
    .line 598
    goto :goto_6

    .line 599
    :goto_5
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 600
    .line 601
    .line 602
    const v2, 0x7f080f97

    .line 603
    .line 604
    .line 605
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    const v2, 0x7f120105

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 620
    .line 621
    .line 622
    const v0, 0x7f060034

    .line 623
    .line 624
    .line 625
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_b

    .line 633
    .line 634
    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 635
    .line 636
    .line 637
    const-string v0, "\u7ee7\u7eed"

    .line 638
    .line 639
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    const v0, 0x7f06002b

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 650
    .line 651
    .line 652
    const/16 v0, 0x10

    .line 653
    .line 654
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 655
    .line 656
    .line 657
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 658
    .line 659
    .line 660
    move-result-wide v7

    .line 661
    cmp-long v0, v7, v17

    .line 662
    .line 663
    if-nez v0, :cond_13

    .line 664
    .line 665
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 666
    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 673
    .line 674
    .line 675
    move-result-wide v7

    .line 676
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    .line 699
    .line 700
    goto :goto_7

    .line 701
    :cond_13
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 702
    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 709
    .line 710
    .line 711
    move-result-wide v7

    .line 712
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    .line 735
    .line 736
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 737
    .line 738
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    long-to-int v6, v5

    .line 743
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .line 745
    .line 746
    goto :goto_8

    .line 747
    :catch_0
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 749
    .line 750
    .line 751
    :goto_8
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    .line 752
    .line 753
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_b

    .line 757
    .line 758
    :cond_14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 759
    .line 760
    .line 761
    const v0, 0x7f080f8b

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 765
    .line 766
    .line 767
    const-string v0, "\u6682\u505c"

    .line 768
    .line 769
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 770
    .line 771
    .line 772
    const v0, 0x7f06002b

    .line 773
    .line 774
    .line 775
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Y(Landroid/view/View;I)V

    .line 780
    .line 781
    .line 782
    const/16 v0, 0x10

    .line 783
    .line 784
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 788
    .line 789
    .line 790
    move-result-wide v7

    .line 791
    cmp-long v0, v7, v17

    .line 792
    .line 793
    if-nez v0, :cond_15

    .line 794
    .line 795
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 796
    .line 797
    new-instance v5, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 803
    .line 804
    .line 805
    move-result-wide v7

    .line 806
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v7

    .line 820
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    .line 829
    .line 830
    goto :goto_9

    .line 831
    :cond_15
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->i:Landroid/widget/TextView;

    .line 832
    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 839
    .line 840
    .line 841
    move-result-wide v7

    .line 842
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v7

    .line 846
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .line 865
    .line 866
    :goto_9
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->k:Landroid/widget/ProgressBar;

    .line 867
    .line 868
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 869
    .line 870
    .line 871
    move-result-wide v7

    .line 872
    long-to-int v5, v7

    .line 873
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    iget-object v2, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->j:Landroid/widget/TextView;

    .line 881
    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    const-string v0, "/S"

    .line 891
    .line 892
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    .line 901
    .line 902
    goto :goto_b

    .line 903
    :cond_16
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->X(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 904
    .line 905
    .line 906
    goto :goto_b

    .line 907
    :goto_a
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;I)V

    .line 908
    .line 909
    .line 910
    const v0, 0x7f080f90

    .line 911
    .line 912
    .line 913
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 914
    .line 915
    .line 916
    if-lez v15, :cond_17

    .line 917
    .line 918
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c0;->d:Landroid/widget/Button;

    .line 919
    .line 920
    invoke-virtual {v1, v0, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->K(Landroid/widget/TextView;I)V

    .line 921
    .line 922
    .line 923
    goto :goto_b

    .line 924
    :cond_17
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->J(Landroid/view/View;I)V

    .line 925
    .line 926
    .line 927
    :cond_18
    :goto_b
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;

    .line 928
    .line 929
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    .line 934
    .line 935
    :cond_19
    :goto_c
    return-void

    .line 936
    nop

    .line 937
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public M(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 2
    .line 3
    return-void
.end method

.method N(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
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
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    aget-object v1, p2, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-object v2, p2, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    aget-object v2, p2, v0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    mul-float v2, v2, v3

    .line 35
    .line 36
    aget-object p2, p2, v1

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-float p2, p2

    .line 43
    div-float/2addr v2, p2

    .line 44
    cmpl-float p2, v2, v3

    .line 45
    .line 46
    if-lez p2, :cond_0

    .line 47
    .line 48
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    .line 51
    .line 52
    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    .line 53
    .line 54
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    .line 61
    .line 62
    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    .line 63
    .line 64
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    .line 71
    .line 72
    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    .line 91
    .line 92
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 93
    .line 94
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$o;

    .line 98
    .line 99
    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/util/List;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/16 p2, 0x8

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method O(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$p;

    .line 72
    .line 73
    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/util/List;I)V

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

.method public P(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public Q(Lcom/join/android/app/component/optimizetext/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-void
.end method

.method public R(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public S(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public T(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public U(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e;

    .line 5
    .line 6
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public V(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->z()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance p2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;)V

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

.method public a0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
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
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

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
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f070ec2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    sub-int/2addr v0, v2

    .line 31
    const/high16 v2, 0x43520000    # 210.0f

    .line 32
    .line 33
    mul-float v2, v2, v1

    .line 34
    .line 35
    float-to-int v2, v2

    .line 36
    const/high16 v3, 0x43200000    # 160.0f

    .line 37
    .line 38
    mul-float v3, v3, v1

    .line 39
    .line 40
    float-to-int v3, v3

    .line 41
    const/high16 v4, 0x40c00000    # 6.0f

    .line 42
    .line 43
    mul-float v4, v4, v1

    .line 44
    .line 45
    float-to-int v4, v4

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
    sub-float v1, v0, v4

    .line 55
    .line 56
    float-to-int v1, v1

    .line 57
    div-int/lit8 v1, v1, 0x3

    .line 58
    .line 59
    if-le v1, v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-le v1, v3, :cond_1

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v2, v1

    .line 67
    :goto_0
    iput v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m:I

    .line 68
    .line 69
    const v1, 0x3fe66666    # 1.8f

    .line 70
    .line 71
    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    .line 74
    mul-float v3, v0, v2

    .line 75
    .line 76
    div-float/2addr v3, v1

    .line 77
    float-to-int v1, v3

    .line 78
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->r:I

    .line 79
    .line 80
    const v1, 0x3f1d70a4    # 0.615f

    .line 81
    .line 82
    .line 83
    mul-float v1, v1, v0

    .line 84
    .line 85
    float-to-int v1, v1

    .line 86
    int-to-float v3, v1

    .line 87
    mul-float v3, v3, v2

    .line 88
    .line 89
    const v4, 0x3feccccd    # 1.85f

    .line 90
    .line 91
    .line 92
    div-float/2addr v3, v4

    .line 93
    float-to-int v3, v3

    .line 94
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n:I

    .line 95
    .line 96
    iput v3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o:I

    .line 97
    .line 98
    const v1, 0x3f0a3d71    # 0.54f

    .line 99
    .line 100
    .line 101
    mul-float v0, v0, v1

    .line 102
    .line 103
    float-to-int v0, v0

    .line 104
    int-to-float v1, v0

    .line 105
    mul-float v1, v1, v2

    .line 106
    .line 107
    const v2, 0x3f59999a    # 0.85f

    .line 108
    .line 109
    .line 110
    div-float/2addr v1, v2

    .line 111
    float-to-int v1, v1

    .line 112
    iput v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p:I

    .line 113
    .line 114
    iput v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q:I

    .line 115
    .line 116
    return-void
.end method

.method e(I)Landroid/widget/LinearLayout$LayoutParams;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j:Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    return-object p1
.end method

.method g(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->i:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    .line 36
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->b()Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, -0x1

    .line 29
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v0, v1, :cond_5

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ne v0, v1, :cond_6

    .line 96
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->FAVORITE_ITEM_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ne v0, v1, :cond_7

    .line 110
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto :goto_0

    .line 116
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-ne v0, v1, :cond_8

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto :goto_0

    .line 129
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v0, v1, :cond_9

    .line 136
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    goto :goto_0

    .line 142
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-ne v0, v1, :cond_a

    .line 149
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    goto :goto_0

    .line 155
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v0, v1, :cond_b

    .line 162
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    goto :goto_0

    .line 168
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ne v0, v1, :cond_c

    .line 175
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    goto :goto_0

    .line 181
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-ne v0, v1, :cond_d

    .line 188
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    goto :goto_0

    .line 194
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-ne v0, v1, :cond_e

    .line 201
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    :cond_e
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "viewGroup"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00cb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)V

    const v3, 0x7f0a1044

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0a0790

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    const v3, 0x7f0a1042

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->d:Landroid/widget/TextView;

    const v3, 0x7f0a12f7

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a1045

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v3, 0x7f0a1043

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    const v3, 0x7f0a0e73

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->h:Landroid/widget/LinearLayout;

    const v3, 0x7f0a1764

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00f7

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    const v3, 0x7f0a0f94

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const v3, 0x7f0a129e

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    const v3, 0x7f0a12a5

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    const v3, 0x7f0a0e61

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->n:Landroid/view/View;

    const v3, 0x7f0a135c

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->o:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    move-object v3, v2

    move-object/from16 v2, p2

    .line 19
    :goto_0
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->n:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    if-nez v0, :cond_1

    return-object v2

    .line 21
    :cond_1
    iget-object v5, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v5

    .line 22
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->o:Landroid/view/View;

    const v6, 0x7f0813b3

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-ne v6, v7, :cond_2

    .line 26
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :goto_1
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    mul-double v9, v9, v11

    mul-double v9, v9, v11

    double-to-long v9, v9

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, ""

    if-eqz v11, :cond_3

    move-object v6, v12

    .line 33
    :cond_3
    iget-object v11, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v14

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v16

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v17

    iget-object v6, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    iget-object v11, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 36
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    invoke-static {v6, v2, v0}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v13}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v11, 0x7f06002b

    const v12, 0x7f080f8b

    if-eqz v6, :cond_4

    .line 38
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u5f00\u59cb"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_4
    const-string v6, "\u66f4\u65b0"

    const v8, 0x7f120105

    const v13, 0x7f080f97

    const v14, 0x7f080f90

    if-nez v0, :cond_9

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v9}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v0

    iget-object v9, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 47
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v9

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v4, :cond_7

    .line 48
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 49
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 50
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0x8d57ef

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 53
    :cond_6
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0xa81da

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 56
    :cond_7
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 58
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 59
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 61
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 62
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " dd "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "infoo"

    invoke-static {v15, v4}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    .line 64
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    const/16 v15, 0x2b

    if-lez v7, :cond_a

    const/16 v4, 0x2b

    :cond_a
    if-eqz v4, :cond_11

    const/16 v7, 0x1b

    const-string v8, "\u6682\u505c\u4e2d"

    if-eq v4, v7, :cond_10

    const/4 v7, 0x2

    const-wide/16 v16, 0x0

    const-string v13, "/"

    if-eq v4, v7, :cond_e

    const/4 v7, 0x3

    if-eq v4, v7, :cond_c

    const/4 v7, 0x5

    if-eq v4, v7, :cond_b

    const/4 v7, 0x6

    if-eq v4, v7, :cond_c

    const/4 v7, 0x7

    if-eq v4, v7, :cond_11

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_b

    if-eq v4, v15, :cond_11

    const v7, 0x7f060031

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_7

    .line 65
    :pswitch_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 66
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f080fb6

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 72
    :pswitch_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 73
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f080550

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, -0x4a4a4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 79
    :pswitch_2
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 83
    :pswitch_3
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 87
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :try_start_0
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :goto_3
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 91
    :pswitch_4
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 95
    :cond_b
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const v4, 0x7f080f97

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120105

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060034

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 99
    :cond_c
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u7ee7\u7eed"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-nez v4, :cond_d

    .line 105
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 106
    :cond_d
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_4
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 110
    :cond_e
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 111
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    const-string v6, "\u6682\u505c"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v16

    if-nez v4, :cond_f

    .line 116
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 117
    :cond_f
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_6
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 121
    :cond_10
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 122
    :cond_11
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 124
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 125
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->c0(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 127
    :goto_7
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 128
    iget-object v0, v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;

    invoke-direct {v3, v1, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-object v0
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

.method public y(Landroid/content/Context;)Lcom/danikula/videocache/i;
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

.method z()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->d:Landroid/content/Context;

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
