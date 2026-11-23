.class Lcom/join/mgps/activity/ForumPostsActivity$f0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsActivity$f0$c;,
        Lcom/join/mgps/activity/ForumPostsActivity$f0$d;
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

.field private e:Lcom/join/mgps/activity/ForumPostsActivity$f0$c;


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
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/ForumPostsActivity$f0;)Lcom/join/mgps/activity/ForumPostsActivity$f0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->e:Lcom/join/mgps/activity/ForumPostsActivity$f0$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()Lcom/join/android/app/component/album/lib/ImageLoader;
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

.method private e(Landroid/view/View;Landroid/view/View;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 24
    .line 25
    const/high16 v1, 0x43480000    # 200.0f

    .line 26
    .line 27
    mul-float v0, v0, v1

    .line 28
    .line 29
    float-to-int v0, v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    div-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    add-int/lit8 v1, v1, -0xa

    .line 45
    .line 46
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 47
    .line 48
    const/4 v3, -0x1

    .line 49
    invoke-direct {v2, v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .line 57
    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    check-cast p2, Landroid/view/ViewGroup;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {p2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

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

.method public d(Z)V
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
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/join/mgps/activity/ForumPostsActivity$f0$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->e:Lcom/join/mgps/activity/ForumPostsActivity$f0$c;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

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
    .locals 4
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
    check-cast v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->c:Landroid/content/Context;

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
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

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
    iput-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->a:Landroid/widget/ImageView;

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
    iput-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->b:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->a:Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->b:Landroid/widget/ImageView;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->getCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    if-ne p1, v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "add_image"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object p1, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->b:Landroid/widget/ImageView;

    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->a:Landroid/widget/ImageView;

    .line 97
    .line 98
    const v0, 0x7f080f1c

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->a:Landroid/widget/ImageView;

    .line 105
    .line 106
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$f0$a;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->a:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$d;->b:Landroid/widget/ImageView;

    .line 133
    .line 134
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$f0$b;

    .line 135
    .line 136
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$f0$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$f0;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->e(Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
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
