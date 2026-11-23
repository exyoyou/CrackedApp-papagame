.class public Lcom/join/mgps/customview/ClouldItemView3;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field b:Lcom/join/mgps/customview/CloudDownButn;

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/content/Context;

.field k:Landroid/view/View;

.field l:Lcom/facebook/imagepipeline/core/h;

.field m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field n:Landroid/widget/LinearLayout;

.field o:Landroid/widget/LinearLayout;

.field private p:Lq/rorbin/badgeview/a;

.field q:Lcom/join/mgps/dto/CloudListDataBean;

.field r:Ljava/lang/String;

.field s:I

.field t:Z

.field u:Lw6/c;

.field v:[Ljava/lang/String;

.field w:Z

.field x:Z

.field y:Z


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
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    const-string v1, "ftsc3"

    const-string v2, "lkrexe2"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:[Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->y:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

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
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    const-string v0, "ftsc3"

    const-string v1, "lkrexe2"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:[Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->y:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

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
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    const-string p3, "ftsc3"

    const-string v0, "lkrexe2"

    .line 17
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:[Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->y:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ClouldItemView3;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView3;->getVipUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private b()Z
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

.method private c(Ljava/lang/String;)Ljava/lang/String;
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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->v:[Ljava/lang/String;

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

.method private e(Landroid/content/Context;)V
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
    const v1, 0x7f0d014f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->l:Lcom/facebook/imagepipeline/core/h;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 36
    .line 37
    const v0, 0x7f0a15aa

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a19d3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 62
    .line 63
    const v0, 0x7f0a1518

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 75
    .line 76
    const v0, 0x7f0a0149

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 88
    .line 89
    const v0, 0x7f0a0126

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->g:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 101
    .line 102
    const v0, 0x7f0a1a72

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 114
    .line 115
    const v0, 0x7f0a0f54

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 127
    .line 128
    const v0, 0x7f0a0f03

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/widget/LinearLayout;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->o:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->k:Landroid/view/View;

    .line 140
    .line 141
    const v0, 0x7f0a1a73

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 151
    .line 152
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
    const-string v1, "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->p:Lq/rorbin/badgeview/a;

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

.method f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/content/Context;

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
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView3$a;

    .line 54
    .line 55
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/ClouldItemView3$a;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    .line 63
    .line 64
    if-nez p1, :cond_17

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v8}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v8, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:I

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:I

    .line 285
    .line 286
    if-eq p1, v4, :cond_9

    .line 287
    .line 288
    if-ne p1, v3, :cond_b

    .line 289
    .line 290
    :cond_9
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->y:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 341
    .line 342
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    const-string v0, "com.wufun.cloud.game.main.showDownDialog"

    .line 352
    .line 353
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    invoke-direct {p0}, Lcom/join/mgps/customview/ClouldItemView3;->b()Z

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/customview/ClouldItemView3$e;

    .line 442
    .line 443
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ClouldItemView3$e;-><init>(Lcom/join/mgps/customview/ClouldItemView3;)V

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
    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_popup_page:Lcom/papa/sim/statistic/Event;

    .line 462
    .line 463
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 464
    .line 465
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 466
    .line 467
    .line 468
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 479
    .line 480
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    iget-object v5, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 497
    .line 498
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:I

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 672
    .line 673
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 674
    .line 675
    invoke-interface {p1, v0}, Lw6/c;->x(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 676
    .line 677
    .line 678
    goto :goto_4

    .line 679
    :cond_15
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    .line 680
    .line 681
    if-nez p1, :cond_16

    .line 682
    .line 683
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 684
    .line 685
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->u:Lw6/c;

    .line 2
    .line 3
    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V
    .locals 7
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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->r:Ljava/lang/String;

    .line 2
    .line 3
    iput p3, p0, Lcom/join/mgps/customview/ClouldItemView3;->s:I

    .line 4
    .line 5
    iput-boolean p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->t:Z

    .line 6
    .line 7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p4, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    iput-object p4, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 18
    .line 19
    iget-object p4, p0, Lcom/join/mgps/customview/ClouldItemView3;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getAvatar()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p6

    .line 25
    invoke-static {p4, p6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 p4, 0x8

    .line 29
    .line 30
    const/4 p6, 0x0

    .line 31
    const/4 p7, 0x2

    .line 32
    if-ne p3, p7, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0, p6}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 v0, 0x3

    .line 46
    const/4 v1, 0x4

    .line 47
    if-eq p3, v0, :cond_2

    .line 48
    .line 49
    if-ne p3, v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->d:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->g:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getNickname()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->h:Landroid/widget/TextView;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getDownNum()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, ""

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v3, "33"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->m:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClouldItemView3;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v4, " \u4e0d\u517c\u5bb9"

    .line 170
    .line 171
    const-string v5, "vba"

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    const-string v6, "VBA"

    .line 176
    .line 177
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_3

    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-nez v6, :cond_3

    .line 188
    .line 189
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_3
    const-string v6, "GBA"

    .line 215
    .line 216
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_6

    .line 221
    .line 222
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_6

    .line 227
    .line 228
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 229
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_4
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 254
    .line 255
    if-eqz v3, :cond_5

    .line 256
    .line 257
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_5

    .line 262
    .line 263
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_5
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

    .line 289
    .line 290
    if-nez v3, :cond_6

    .line 291
    .line 292
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_6

    .line 297
    .line 298
    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3;->i:Landroid/widget/TextView;

    .line 299
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    :cond_6
    :goto_2
    if-nez p5, :cond_7

    .line 323
    .line 324
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 325
    .line 326
    invoke-virtual {p5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {p5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    iget-object p5, p0, Lcom/join/mgps/customview/ClouldItemView3;->e:Landroid/widget/TextView;

    .line 335
    .line 336
    invoke-virtual {p5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    :cond_7
    const/4 p5, 0x1

    .line 340
    if-ne p3, p5, :cond_8

    .line 341
    .line 342
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 343
    .line 344
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_6

    .line 352
    .line 353
    :cond_8
    if-eq p3, v0, :cond_e

    .line 354
    .line 355
    if-ne p3, v1, :cond_9

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_9
    if-ne p3, p7, :cond_d

    .line 359
    .line 360
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 361
    .line 362
    invoke-virtual {p1, p6}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_c

    .line 372
    .line 373
    const/4 p2, 0x7

    .line 374
    if-eq p1, p2, :cond_b

    .line 375
    .line 376
    if-eq p1, v1, :cond_c

    .line 377
    .line 378
    const/4 p2, 0x5

    .line 379
    if-eq p1, p2, :cond_a

    .line 380
    .line 381
    goto/16 :goto_6

    .line 382
    .line 383
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 384
    .line 385
    const-string p2, "\u5df2\u5907\u4efd"

    .line 386
    .line 387
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 391
    .line 392
    invoke-virtual {p1, p6}, Landroid/view/View;->setClickable(Z)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_6

    .line 396
    .line 397
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 398
    .line 399
    const-string p2, "\u5907\u4efd\u4e2d"

    .line 400
    .line 401
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual {p1, p5}, Landroid/view/View;->setClickable(Z)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 412
    .line 413
    const-string p2, "\u5907\u4efd"

    .line 414
    .line 415
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->f:Landroid/widget/TextView;

    .line 419
    .line 420
    invoke-virtual {p1, p5}, Landroid/view/View;->setClickable(Z)V

    .line 421
    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 425
    .line 426
    const/4 p2, 0x6

    .line 427
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_e
    :goto_3
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 432
    .line 433
    .line 434
    move-result-object p3

    .line 435
    invoke-virtual {p3, p1}, Lt6/i;->n(Ljava/lang/String;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    :cond_f
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result p3

    .line 447
    if-eqz p3, :cond_11

    .line 448
    .line 449
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p3

    .line 453
    check-cast p3, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 454
    .line 455
    new-instance p7, Ljava/io/File;

    .line 456
    .line 457
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-direct {p7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p7}, Ljava/io/File;->exists()Z

    .line 465
    .line 466
    .line 467
    move-result p7

    .line 468
    if-nez p7, :cond_10

    .line 469
    .line 470
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 471
    .line 472
    .line 473
    move-result-object p7

    .line 474
    invoke-virtual {p7, p3}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 475
    .line 476
    .line 477
    goto :goto_4

    .line 478
    :cond_10
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p7

    .line 482
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result p7

    .line 490
    if-eqz p7, :cond_f

    .line 491
    .line 492
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 493
    .line 494
    invoke-virtual {p3}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getFilePath()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p2

    .line 498
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    const/4 p1, 0x1

    .line 502
    goto :goto_5

    .line 503
    :cond_11
    const/4 p1, 0x0

    .line 504
    :goto_5
    if-eqz p1, :cond_12

    .line 505
    .line 506
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 507
    .line 508
    invoke-virtual {p1, p6}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 509
    .line 510
    .line 511
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 512
    .line 513
    invoke-virtual {p1, p6}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 514
    .line 515
    .line 516
    goto :goto_6

    .line 517
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 518
    .line 519
    iget-object p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 520
    .line 521
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 522
    .line 523
    .line 524
    move-result p2

    .line 525
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setStatu(I)V

    .line 526
    .line 527
    .line 528
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->q:Lcom/join/mgps/dto/CloudListDataBean;

    .line 529
    .line 530
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-ne p1, p5, :cond_13

    .line 535
    .line 536
    const p1, 0x7f080274

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    .line 541
    .line 542
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 543
    .line 544
    const-string p2, "#FFD5BC"

    .line 545
    .line 546
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result p2

    .line 550
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 551
    .line 552
    .line 553
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 554
    .line 555
    const p2, 0x7f0810c8

    .line 556
    .line 557
    .line 558
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 559
    .line 560
    .line 561
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    .line 562
    .line 563
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    .line 564
    .line 565
    .line 566
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->o:Landroid/widget/LinearLayout;

    .line 567
    .line 568
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 569
    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_13
    const-string p1, "#8F0A1521"

    .line 573
    .line 574
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 579
    .line 580
    .line 581
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 582
    .line 583
    const-string p2, "#FFFFFF"

    .line 584
    .line 585
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    move-result p2

    .line 589
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/CloudDownButn;->setTextColor(I)V

    .line 590
    .line 591
    .line 592
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->b:Lcom/join/mgps/customview/CloudDownButn;

    .line 593
    .line 594
    const p2, 0x7f0810c7

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 598
    .line 599
    .line 600
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->n:Landroid/widget/LinearLayout;

    .line 601
    .line 602
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 603
    .line 604
    .line 605
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->o:Landroid/widget/LinearLayout;

    .line 606
    .line 607
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    .line 608
    .line 609
    .line 610
    :goto_7
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
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->w:Z

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
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->x:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView3;->y:Z

    .line 4
    .line 5
    return-void
.end method

.method setPoPoWindow2(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islast"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3;->j:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f0d07f9

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Landroid/widget/PopupWindow;

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a07b0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    const v3, 0x7f0a0969

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/TextView;

    .line 39
    .line 40
    const v4, 0x7f0a1257

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const v5, 0x7f06049a

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lcom/join/mgps/customview/ClouldItemView3$b;

    .line 72
    .line 73
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$b;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/customview/ClouldItemView3$c;

    .line 80
    .line 81
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$c;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/customview/ClouldItemView3$d;

    .line 88
    .line 89
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/ClouldItemView3$d;-><init>(Lcom/join/mgps/customview/ClouldItemView3;Landroid/widget/PopupWindow;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
