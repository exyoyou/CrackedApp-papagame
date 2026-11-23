.class public Lcom/join/mgps/customview/ClouldItemView2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field b:Lcom/join/mgps/customview/CloudDownButn;

.field c:Landroid/widget/LinearLayout;

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/ImageView;

.field m:Landroid/content/Context;

.field n:Landroid/view/View;

.field o:Landroid/widget/TextView;

.field p:Lcom/facebook/imagepipeline/core/h;

.field q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/LinearLayout;

.field private t:Lq/rorbin/badgeview/a;

.field u:Lcom/join/mgps/dto/CloudListDataBean;

.field v:Ljava/lang/String;

.field w:I

.field x:Z

.field y:Lw6/c;

.field z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    const-string v1, "ftsc3"

    const-string v2, "lkrexe2"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:[Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->C:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    const-string v0, "ftsc3"

    const-string v1, "lkrexe2"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:[Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->C:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    const-string p3, "ftsc3"

    const-string v0, "lkrexe2"

    .line 17
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:[Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->C:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/ClouldItemView2;ZIILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/ClouldItemView2;->g(ZIILandroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/ClouldItemView2;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView2;->getVipUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const-string v2, "VBA"

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    const-string v0, "kdygmyhbs3"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    const-string v0, "kdyg"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v1, "GBA"

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->z:[Ljava/lang/String;

    .line 31
    .line 32
    array-length v3, v0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-ge v5, v3, :cond_4

    .line 36
    .line 37
    aget-object v6, v0, v5

    .line 38
    .line 39
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    move-object v5, v0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_1
    const/16 v6, 0x64

    .line 53
    .line 54
    if-gt v3, v6, :cond_7

    .line 55
    .line 56
    new-instance v6, Ljava/io/File;

    .line 57
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v8, "."

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    new-instance v7, Ljava/util/Date;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 94
    .line 95
    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    invoke-virtual {v7, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    :cond_5
    move-object v5, v7

    .line 105
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    :goto_2
    if-gt v4, v6, :cond_a

    .line 109
    .line 110
    new-instance v3, Ljava/io/File;

    .line 111
    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v8, "vba."

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_9

    .line 140
    .line 141
    new-instance v7, Ljava/util/Date;

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 144
    .line 145
    .line 146
    move-result-wide v8

    .line 147
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 148
    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual {v7, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_9

    .line 157
    .line 158
    :cond_8
    move-object v0, v7

    .line 159
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_a
    if-eqz v5, :cond_c

    .line 163
    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_b

    .line 171
    .line 172
    return-object v1

    .line 173
    :cond_b
    return-object v2

    .line 174
    :cond_c
    if-nez v5, :cond_d

    .line 175
    .line 176
    return-object v2

    .line 177
    :cond_d
    return-object v1
.end method

.method private f(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d014e

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/facebook/imagepipeline/core/h;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 23
    .line 24
    const v0, 0x7f0a04f4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/mgps/customview/CloudDownButn;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 36
    .line 37
    const v0, 0x7f0a0a62

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a15aa

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 62
    .line 63
    const v0, 0x7f0a19d3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 75
    .line 76
    const v0, 0x7f0a1518

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 88
    .line 89
    const v0, 0x7f0a0149

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 101
    .line 102
    const v0, 0x7f0a0126

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 114
    .line 115
    const v0, 0x7f0a0a9b

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/ImageView;

    .line 123
    .line 124
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/widget/ImageView;

    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 127
    .line 128
    const v0, 0x7f0a07b1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->o:Landroid/widget/TextView;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 140
    .line 141
    const v0, 0x7f0a1a72

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 153
    .line 154
    const v0, 0x7f0a1a73

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 166
    .line 167
    const v0, 0x7f0a1963

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/widget/TextView;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 179
    .line 180
    const v0, 0x7f0a0f54

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/widget/LinearLayout;

    .line 188
    .line 189
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    .line 190
    .line 191
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->n:Landroid/view/View;

    .line 192
    .line 193
    const v0, 0x7f0a0f03

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Landroid/widget/LinearLayout;

    .line 201
    .line 202
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->s:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    return-void
.end method

.method private synthetic g(ZIILandroid/view/View;)V
    .locals 0

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p2, p1, :cond_2

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x3

    .line 11
    const/4 p4, 0x4

    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    .line 14
    if-ne p3, p4, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/customview/ClouldItemView2;->h()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-ne p2, p4, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/ClouldItemView2;->h()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/ClouldItemView2;->h()V

    .line 27
    .line 28
    .line 29
    :cond_3
    :goto_1
    return-void
.end method

.method private getVipUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "http://anv3btapi.wufan88.com/user/activity/cloud_archive?gameId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Lw6/c;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v1, "?"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "&gameId="

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "?gameId="

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lq/rorbin/badgeview/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f8

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/widget/PopupWindow;

    .line 16
    .line 17
    const/4 v2, -0x2

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a194d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const v4, 0x7f06049a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const v4, 0x7f071306

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    neg-float v3, v3

    .line 69
    float-to-int v3, v3

    .line 70
    iget-object v4, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const v5, 0x7f0715d7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    neg-float v4, v4

    .line 84
    float-to-int v4, v4

    .line 85
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView2$c;

    .line 89
    .line 90
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$c;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0149

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_15

    .line 9
    .line 10
    const v0, 0x7f0a04f4

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const v0, 0x7f0a1518

    .line 16
    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lw6/c;->t(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Lcom/papa/sim/statistic/Event;->shareArchive:Lcom/papa/sim/statistic/Event;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    .line 63
    .line 64
    if-nez p1, :cond_17

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const-string v0, "GBA"

    .line 73
    .line 74
    const-string v1, "VBA"

    .line 75
    .line 76
    const-string v2, "33"

    .line 77
    .line 78
    const/4 v3, 0x4

    .line 79
    const/4 v4, 0x3

    .line 80
    const/4 v5, 0x1

    .line 81
    const-string v6, "\u5f53\u524d\u7cfb\u7edf\u7248\u672c\u65e0\u6cd5\u8fd0\u884c\u8be5\u5b58\u6863"

    .line 82
    .line 83
    const-string v7, "vba"

    .line 84
    .line 85
    if-eqz p1, :cond_d

    .line 86
    .line 87
    const-string v8, "fileMd5"

    .line 88
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :pswitch_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_4
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 179
    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_5

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_5
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 201
    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_6
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:I

    .line 223
    .line 224
    if-eq p1, v4, :cond_8

    .line 225
    .line 226
    if-ne p1, v3, :cond_7

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    sget-object v0, Lcom/papa/sim/statistic/Event;->downloadCloudArchive:Lcom/papa/sim/statistic/Event;

    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    sget-object v0, Lcom/papa/sim/statistic/Event;->makeStoreArchive:Lcom/papa/sim/statistic/Event;

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:I

    .line 285
    .line 286
    if-eq p1, v4, :cond_9

    .line 287
    .line 288
    if-ne p1, v3, :cond_b

    .line 289
    .line 290
    :cond_9
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 291
    .line 292
    if-nez v0, :cond_a

    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-string v0, "\u672c\u5730\u4e3av1\u6838\u5fc3\u4e0d\u80fd\u4e0b\u8f7dv2\u6838\u5fc3\u5b58\u6863"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :cond_a
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->C:Z

    .line 310
    .line 311
    if-nez v0, :cond_b

    .line 312
    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    const-string v0, "\u672c\u5730\u6709\u53cc\u6838\u5fc3PGM\u6e38\u620f\u4e0d\u80fd\u4e0b\u8f7d\u5b58\u6863"

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_4

    .line 327
    .line 328
    :cond_b
    if-ne p1, v5, :cond_c

    .line 329
    .line 330
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    invoke-interface {p1, v0, v1}, Lw6/c;->B(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_4

    .line 339
    .line 340
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 341
    .line 342
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 343
    .line 344
    invoke-interface {p1, v0, v5}, Lw6/c;->B(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 350
    .line 351
    const-string v0, "com.wufun.cloud.showDownDialog"

    .line 352
    .line 353
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 375
    .line 376
    const-string v0, "com.wufun.cloud.showUploadDialog"

    .line 377
    .line 378
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_d
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 400
    .line 401
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-ne p1, v5, :cond_e

    .line 406
    .line 407
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView2;->c()Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-nez p1, :cond_e

    .line 412
    .line 413
    new-instance p1, Lcom/join/mgps/dialog/y;

    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 416
    .line 417
    const v1, 0x7f13017f

    .line 418
    .line 419
    .line 420
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/dialog/y;-><init>(Landroid/content/Context;I)V

    .line 421
    .line 422
    .line 423
    const-string v0, "\u83b7\u53d6\u987b\u77e5"

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    const-string v0, "\u672c\u5b58\u6863\u662f\u609f\u996d\u5e73\u53f0VIP\u4f1a\u5458\u6240\u4eab\u5185\u5bb9\uff0c\u8bf7\u5f00\u901aVIP\u4f1a\u5458\u540e\u4f7f\u7528"

    .line 430
    .line 431
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    const-string v0, "\u5f00\u901aVIP\u4f1a\u5458"

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/y;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    new-instance v0, Lcom/join/mgps/customview/ClouldItemView2$g;

    .line 442
    .line 443
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ClouldItemView2$g;-><init>(Lcom/join/mgps/customview/ClouldItemView2;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y;->a(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_popup_emulator:Lcom/papa/sim/statistic/Event;

    .line 462
    .line 463
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 464
    .line 465
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 466
    .line 467
    .line 468
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 479
    .line 480
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    iget-object v5, p0, Lcom/join/mgps/customview/ClouldItemView2;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 485
    .line 486
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_12

    .line 495
    .line 496
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 497
    .line 498
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/ClouldItemView2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    if-eqz v2, :cond_10

    .line 507
    .line 508
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_f

    .line 513
    .line 514
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    if-nez v1, :cond_f

    .line 519
    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_12

    .line 537
    .line 538
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_12

    .line 543
    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :cond_10
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 557
    .line 558
    if-eqz v0, :cond_11

    .line 559
    .line 560
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-nez v0, :cond_11

    .line 565
    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_11
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 579
    .line 580
    if-nez v0, :cond_12

    .line 581
    .line 582
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-eqz v0, :cond_12

    .line 587
    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    invoke-virtual {p1, v6}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    return-void

    .line 600
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 601
    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-static {v0, v1, p1}, Lcom/join/mgps/Util/UtilsMy;->v4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->w:I

    .line 610
    .line 611
    if-eq p1, v4, :cond_14

    .line 612
    .line 613
    if-ne p1, v3, :cond_13

    .line 614
    .line 615
    goto :goto_2

    .line 616
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    sget-object v0, Lcom/papa/sim/statistic/Event;->startMeArchive:Lcom/papa/sim/statistic/Event;

    .line 625
    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_3

    .line 644
    :cond_14
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    sget-object v0, Lcom/papa/sim/statistic/Event;->startStoreArchive:Lcom/papa/sim/statistic/Event;

    .line 653
    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 672
    .line 673
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 674
    .line 675
    invoke-interface {p1, v0}, Lw6/c;->x(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 676
    .line 677
    .line 678
    goto :goto_4

    .line 679
    :cond_15
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    .line 680
    .line 681
    if-nez p1, :cond_16

    .line 682
    .line 683
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 684
    .line 685
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 686
    .line 687
    invoke-interface {p1, v0}, Lw6/c;->w(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 688
    .line 689
    .line 690
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    sget-object v0, Lcom/papa/sim/statistic/Event;->backupLocalArchive:Lcom/papa/sim/statistic/Event;

    .line 699
    .line 700
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    :cond_17
    :goto_4
    return-void

    .line 718
    nop

    .line 719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setCloudItemListener(Lw6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->y:Lw6/c;

    .line 2
    .line 3
    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "gamId",
            "data",
            "type",
            "tabtype",
            "isSelecter",
            "isLast",
            "listener"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    iput-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->v:Ljava/lang/String;

    .line 14
    .line 15
    iput v3, v0, Lcom/join/mgps/customview/ClouldItemView2;->w:I

    .line 16
    .line 17
    iput-boolean v5, v0, Lcom/join/mgps/customview/ClouldItemView2;->x:Z

    .line 18
    .line 19
    iput-object v2, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v7, "file://"

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/facebook/imagepipeline/core/h;

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 44
    .line 45
    .line 46
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/facebook/imagepipeline/core/h;

    .line 47
    .line 48
    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->p:Lcom/facebook/imagepipeline/core/h;

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    iget-object v7, v0, Lcom/join/mgps/customview/ClouldItemView2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    invoke-virtual {v7, v6}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v6, v0, Lcom/join/mgps/customview/ClouldItemView2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    const/4 v6, 0x2

    .line 72
    const/16 v7, 0x8

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    if-ne v3, v6, :cond_1

    .line 76
    .line 77
    iget-object v9, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v9, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    const/4 v9, 0x3

    .line 89
    const/4 v10, 0x4

    .line 90
    if-eq v3, v9, :cond_3

    .line 91
    .line 92
    if-ne v3, v10, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_3
    :goto_2
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->e:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->h:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getNickname()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    if-eqz v11, :cond_4

    .line 139
    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-nez v11, :cond_4

    .line 149
    .line 150
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->l:Landroid/widget/ImageView;

    .line 171
    .line 172
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getTag()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->o:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    :goto_3
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->j:Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getDownNum()I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v13, ""

    .line 204
    .line 205
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 216
    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v11, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    iput-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    const-string v12, "33"

    .line 254
    .line 255
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-eqz v11, :cond_8

    .line 260
    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 266
    .line 267
    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    invoke-direct {v0, v12}, Lcom/join/mgps/customview/ClouldItemView2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    const-string v13, " \u4e0d\u517c\u5bb9"

    .line 276
    .line 277
    const-string v14, "vba"

    .line 278
    .line 279
    if-eqz v12, :cond_6

    .line 280
    .line 281
    const-string v15, "VBA"

    .line 282
    .line 283
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    if-eqz v15, :cond_5

    .line 288
    .line 289
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-nez v15, :cond_5

    .line 294
    .line 295
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 296
    .line 297
    new-instance v12, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 303
    .line 304
    .line 305
    move-result v14

    .line 306
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_5
    const-string v15, "GBA"

    .line 321
    .line 322
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-eqz v12, :cond_8

    .line 327
    .line 328
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-eqz v11, :cond_8

    .line 333
    .line 334
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 335
    .line 336
    new-instance v12, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_6
    iget-boolean v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 360
    .line 361
    if-eqz v12, :cond_7

    .line 362
    .line 363
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    if-nez v12, :cond_7

    .line 368
    .line 369
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 370
    .line 371
    new-instance v12, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 377
    .line 378
    .line 379
    move-result v14

    .line 380
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_7
    iget-boolean v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 395
    .line 396
    if-nez v12, :cond_8

    .line 397
    .line 398
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    if-eqz v11, :cond_8

    .line 403
    .line 404
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->k:Landroid/widget/TextView;

    .line 405
    .line 406
    new-instance v12, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    :cond_8
    :goto_4
    iget-object v11, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 429
    .line 430
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    const/4 v11, 0x1

    .line 434
    if-ne v3, v9, :cond_a

    .line 435
    .line 436
    if-eq v4, v10, :cond_9

    .line 437
    .line 438
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 439
    .line 440
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_9
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 445
    .line 446
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    :goto_5
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 450
    .line 451
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_a
    if-ne v3, v10, :cond_d

    .line 456
    .line 457
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 458
    .line 459
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsComment()I

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-nez v12, :cond_c

    .line 467
    .line 468
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lq/rorbin/badgeview/a;

    .line 469
    .line 470
    if-eqz v12, :cond_b

    .line 471
    .line 472
    invoke-interface {v12, v8}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 473
    .line 474
    .line 475
    :cond_b
    new-instance v12, Lq/rorbin/badgeview/QBadgeView;

    .line 476
    .line 477
    iget-object v13, v0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 478
    .line 479
    invoke-direct {v12, v13}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    iget-object v13, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 483
    .line 484
    invoke-virtual {v12, v13}, Lq/rorbin/badgeview/QBadgeView;->n(Landroid/view/View;)Lq/rorbin/badgeview/a;

    .line 485
    .line 486
    .line 487
    move-result-object v12

    .line 488
    const/4 v13, -0x1

    .line 489
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    const/high16 v14, 0x40400000    # 3.0f

    .line 494
    .line 495
    invoke-interface {v12, v14, v11}, Lq/rorbin/badgeview/a;->k(FZ)Lq/rorbin/badgeview/a;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    const/high16 v14, -0x10000

    .line 500
    .line 501
    invoke-interface {v12, v14}, Lq/rorbin/badgeview/a;->d(I)Lq/rorbin/badgeview/a;

    .line 502
    .line 503
    .line 504
    move-result-object v12

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    const v15, 0x7f07133c

    .line 510
    .line 511
    .line 512
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 513
    .line 514
    .line 515
    move-result v14

    .line 516
    int-to-float v14, v14

    .line 517
    invoke-interface {v12, v14, v8}, Lq/rorbin/badgeview/a;->w(FZ)Lq/rorbin/badgeview/a;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    const v14, 0x800055

    .line 522
    .line 523
    .line 524
    invoke-interface {v12, v14}, Lq/rorbin/badgeview/a;->u(I)Lq/rorbin/badgeview/a;

    .line 525
    .line 526
    .line 527
    move-result-object v12

    .line 528
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->s(I)Lq/rorbin/badgeview/a;

    .line 529
    .line 530
    .line 531
    move-result-object v12

    .line 532
    new-instance v13, Lcom/join/mgps/customview/ClouldItemView2$a;

    .line 533
    .line 534
    invoke-direct {v13, v0}, Lcom/join/mgps/customview/ClouldItemView2$a;-><init>(Lcom/join/mgps/customview/ClouldItemView2;)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v12, v13}, Lq/rorbin/badgeview/a;->q(Lq/rorbin/badgeview/a$a;)Lq/rorbin/badgeview/a;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    iput-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->t:Lq/rorbin/badgeview/a;

    .line 542
    .line 543
    goto :goto_6

    .line 544
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsComment()I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    if-ne v12, v11, :cond_e

    .line 549
    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/ClouldItemView2;->e()V

    .line 551
    .line 552
    .line 553
    goto :goto_6

    .line 554
    :cond_d
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 555
    .line 556
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    :cond_e
    :goto_6
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->i:Landroid/widget/TextView;

    .line 560
    .line 561
    new-instance v13, Lcom/join/mgps/customview/ClouldItemView2$b;

    .line 562
    .line 563
    move/from16 v14, p6

    .line 564
    .line 565
    invoke-direct {v13, v0, v2, v14}, Lcom/join/mgps/customview/ClouldItemView2$b;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    .line 570
    .line 571
    iget-object v12, v0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 572
    .line 573
    new-instance v13, Lcom/join/mgps/customview/c;

    .line 574
    .line 575
    invoke-direct {v13, v0, v5, v3, v4}, Lcom/join/mgps/customview/c;-><init>(Lcom/join/mgps/customview/ClouldItemView2;ZII)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    .line 580
    .line 581
    if-nez v5, :cond_f

    .line 582
    .line 583
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 584
    .line 585
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    .line 587
    .line 588
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 589
    .line 590
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    .line 592
    .line 593
    iget-object v4, v0, Lcom/join/mgps/customview/ClouldItemView2;->f:Landroid/widget/TextView;

    .line 594
    .line 595
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    .line 597
    .line 598
    :cond_f
    if-ne v3, v11, :cond_10

    .line 599
    .line 600
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 601
    .line 602
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_a

    .line 610
    .line 611
    :cond_10
    if-eq v3, v9, :cond_16

    .line 612
    .line 613
    if-ne v3, v10, :cond_11

    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_11
    if-ne v3, v6, :cond_15

    .line 617
    .line 618
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 619
    .line 620
    invoke-virtual {v1, v8}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 621
    .line 622
    .line 623
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-eqz v1, :cond_14

    .line 630
    .line 631
    const/4 v2, 0x7

    .line 632
    if-eq v1, v2, :cond_13

    .line 633
    .line 634
    if-eq v1, v10, :cond_14

    .line 635
    .line 636
    const/4 v2, 0x5

    .line 637
    if-eq v1, v2, :cond_12

    .line 638
    .line 639
    goto/16 :goto_a

    .line 640
    .line 641
    :cond_12
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 642
    .line 643
    const-string v2, "\u5df2\u5907\u4efd"

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 649
    .line 650
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_a

    .line 654
    .line 655
    :cond_13
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 656
    .line 657
    const-string v2, "\u5907\u4efd\u4e2d"

    .line 658
    .line 659
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    .line 661
    .line 662
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 663
    .line 664
    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_a

    .line 668
    .line 669
    :cond_14
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 670
    .line 671
    const-string v2, "\u5907\u4efd"

    .line 672
    .line 673
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->g:Landroid/widget/TextView;

    .line 677
    .line 678
    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    .line 679
    .line 680
    .line 681
    goto :goto_a

    .line 682
    :cond_15
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 683
    .line 684
    const/4 v2, 0x6

    .line 685
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 686
    .line 687
    .line 688
    goto :goto_a

    .line 689
    :cond_16
    :goto_7
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v3, v1}, Lt6/i;->n(Ljava/lang/String;)Ljava/util/List;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    :cond_17
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    if-eqz v3, :cond_19

    .line 706
    .line 707
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    check-cast v3, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 712
    .line 713
    new-instance v4, Ljava/io/File;

    .line 714
    .line 715
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 723
    .line 724
    .line 725
    move-result v4

    .line 726
    if-nez v4, :cond_18

    .line 727
    .line 728
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v4, v3}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 733
    .line 734
    .line 735
    goto :goto_8

    .line 736
    :cond_18
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    if-eqz v4, :cond_17

    .line 749
    .line 750
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 751
    .line 752
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    const/4 v1, 0x1

    .line 760
    goto :goto_9

    .line 761
    :cond_19
    const/4 v1, 0x0

    .line 762
    :goto_9
    if-eqz v1, :cond_1a

    .line 763
    .line 764
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 765
    .line 766
    invoke-virtual {v1, v8}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 767
    .line 768
    .line 769
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 770
    .line 771
    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 772
    .line 773
    .line 774
    goto :goto_a

    .line 775
    :cond_1a
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 776
    .line 777
    iget-object v2, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 778
    .line 779
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 784
    .line 785
    .line 786
    :goto_a
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->u:Lcom/join/mgps/dto/CloudListDataBean;

    .line 787
    .line 788
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 789
    .line 790
    .line 791
    move-result v1

    .line 792
    if-ne v1, v11, :cond_1b

    .line 793
    .line 794
    const v1, 0x7f080273

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 798
    .line 799
    .line 800
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 801
    .line 802
    const-string v2, "#ADADF1"

    .line 803
    .line 804
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 809
    .line 810
    .line 811
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    .line 812
    .line 813
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 814
    .line 815
    .line 816
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->s:Landroid/widget/LinearLayout;

    .line 817
    .line 818
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 819
    .line 820
    .line 821
    goto :goto_b

    .line 822
    :cond_1b
    const-string v1, "#800A1521"

    .line 823
    .line 824
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 829
    .line 830
    .line 831
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 832
    .line 833
    const-string v2, "#9FABB7"

    .line 834
    .line 835
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 840
    .line 841
    .line 842
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->r:Landroid/widget/LinearLayout;

    .line 843
    .line 844
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 845
    .line 846
    .line 847
    iget-object v1, v0, Lcom/join/mgps/customview/ClouldItemView2;->s:Landroid/widget/LinearLayout;

    .line 848
    .line 849
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 850
    .line 851
    .line 852
    :goto_b
    return-void
.end method

.method public setGBAType(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVBA"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPGN(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "marcketDownEnable",
            "marcketPGNEnable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->B:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView2;->C:Z

    .line 4
    .line 5
    return-void
.end method

.method setPoPoWindow2(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islast"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f9

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/widget/PopupWindow;

    .line 16
    .line 17
    const/4 v2, -0x2

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a07b0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    const v4, 0x7f0a0969

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/widget/TextView;

    .line 39
    .line 40
    const v5, 0x7f0a1257

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const v7, 0x7f06049a

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    new-array v5, v5, [I

    .line 73
    .line 74
    iget-object v6, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    .line 78
    .line 79
    const v6, 0x7f071375

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    if-ne p1, v3, :cond_0

    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    aget v8, v5, v7

    .line 88
    .line 89
    iget-object v9, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    float-to-int v6, v6

    .line 100
    sub-int/2addr v8, v6

    .line 101
    aget v3, v5, v3

    .line 102
    .line 103
    invoke-virtual {v1, p1, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2;->c:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    aget v8, v5, v7

    .line 110
    .line 111
    iget-object v9, p0, Lcom/join/mgps/customview/ClouldItemView2;->m:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    float-to-int v6, v6

    .line 122
    sub-int/2addr v8, v6

    .line 123
    aget v3, v5, v3

    .line 124
    .line 125
    invoke-virtual {v1, p1, v7, v8, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 126
    .line 127
    .line 128
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$d;

    .line 129
    .line 130
    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$d;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$e;

    .line 137
    .line 138
    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$e;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    new-instance p1, Lcom/join/mgps/customview/ClouldItemView2$f;

    .line 145
    .line 146
    invoke-direct {p1, p0, v1}, Lcom/join/mgps/customview/ClouldItemView2$f;-><init>(Lcom/join/mgps/customview/ClouldItemView2;Landroid/widget/PopupWindow;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
