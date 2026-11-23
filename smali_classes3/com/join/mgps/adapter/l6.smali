.class public Lcom/join/mgps/adapter/l6;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/l6$a;,
        Lcom/join/mgps/adapter/l6$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/join/mgps/adapter/l6$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
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
    iput-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/adapter/l6;->e:I

    .line 13
    .line 14
    const-string v1, "0"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/adapter/l6;->f:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/adapter/l6;->h:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/l6;->i:Lcom/join/mgps/adapter/l6$a;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/join/mgps/adapter/l6;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/adapter/l6;->c:Landroid/view/LayoutInflater;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/join/mgps/adapter/l6;->f:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/l6;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/l6$b;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/l6;->c(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/l6$b;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/l6$b;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    const/4 p4, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p4, p2, Lcom/join/mgps/adapter/l6$b;->k:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x4

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x4

    .line 32
    :goto_1
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p2, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/join/mgps/adapter/l6;->i:Lcom/join/mgps/adapter/l6$a;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/l6$a;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method private g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2
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
            "tvGameTags",
            "llInfo",
            "progressBar",
            "progressBarZip",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/l6;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public e(Lcom/join/mgps/adapter/l6$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/l6;->i:Lcom/join/mgps/adapter/l6$a;

    .line 2
    .line 3
    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/l6;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
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
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object v1, v8, Lcom/join/mgps/adapter/l6;->c:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    const v2, 0x7f0d0803

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/join/mgps/adapter/l6$b;

    .line 18
    .line 19
    invoke-direct {v2, v8}, Lcom/join/mgps/adapter/l6$b;-><init>(Lcom/join/mgps/adapter/l6;)V

    .line 20
    .line 21
    .line 22
    const v3, 0x7f0a1889

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->a:Landroid/widget/TextView;

    .line 32
    .line 33
    const v3, 0x7f0a18ef

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v3, 0x7f0a1857

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v3, 0x7f0a09cc

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    const v3, 0x7f0a0eab

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const v3, 0x7f0a00f7

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 87
    .line 88
    const v3, 0x7f0a0f94

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 98
    .line 99
    const v3, 0x7f0a12a5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/widget/ProgressBar;

    .line 107
    .line 108
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 109
    .line 110
    const v3, 0x7f0a129e

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Landroid/widget/ProgressBar;

    .line 118
    .line 119
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 120
    .line 121
    const v3, 0x7f0a0642

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroid/widget/FrameLayout;

    .line 129
    .line 130
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->j:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    const v3, 0x7f0a0f6c

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroid/widget/ProgressBar;

    .line 140
    .line 141
    iput-object v3, v2, Lcom/join/mgps/adapter/l6$b;->k:Landroid/widget/ProgressBar;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    move-object v9, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    move-object v2, v1

    .line 153
    check-cast v2, Lcom/join/mgps/adapter/l6$b;

    .line 154
    .line 155
    move-object/from16 v9, p2

    .line 156
    .line 157
    :goto_0
    move-object v10, v2

    .line 158
    iget-object v1, v8, Lcom/join/mgps/adapter/l6;->d:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 165
    .line 166
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 173
    .line 174
    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/4 v3, 0x3

    .line 182
    const/4 v4, 0x0

    .line 183
    if-eqz v2, :cond_4

    .line 184
    .line 185
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->a:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_3

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, ","

    .line 226
    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const/4 v6, 0x0

    .line 232
    :goto_1
    array-length v7, v5

    .line 233
    if-ge v6, v7, :cond_2

    .line 234
    .line 235
    aget-object v7, v5, v6

    .line 236
    .line 237
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, " | "

    .line 241
    .line 242
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const/4 v7, 0x1

    .line 246
    if-lt v6, v7, :cond_1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_2
    :goto_2
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    sub-int/2addr v6, v3

    .line 259
    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    :cond_3
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 267
    .line 268
    new-instance v5, Lcom/join/mgps/adapter/k6;

    .line 269
    .line 270
    invoke-direct {v5, v8, v1, v10, v0}, Lcom/join/mgps/adapter/k6;-><init>(Lcom/join/mgps/adapter/l6;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/l6$b;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    :cond_4
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 282
    .line 283
    const-string v2, "\u83b7\u53d6"

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->k:Landroid/widget/ProgressBar;

    .line 289
    .line 290
    const/4 v4, 0x4

    .line 291
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    if-eqz v0, :cond_5

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    move-wide v14, v4

    .line 309
    goto :goto_3

    .line 310
    :cond_5
    const-wide/16 v14, 0x0

    .line 311
    .line 312
    :goto_3
    if-eqz v11, :cond_6

    .line 313
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 320
    .line 321
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v4, ""

    .line 329
    .line 330
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_6

    .line 346
    .line 347
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 348
    .line 349
    const-string v1, "\u5f00\u59cb"

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->a:Landroid/widget/TextView;

    .line 355
    .line 356
    const/16 v1, 0x8

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_8

    .line 362
    .line 363
    :cond_6
    const-string v7, "\u66f4\u65b0"

    .line 364
    .line 365
    const-string v6, "\u542f\u52a8"

    .line 366
    .line 367
    if-nez v0, :cond_b

    .line 368
    .line 369
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 370
    .line 371
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 372
    .line 373
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 374
    .line 375
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 376
    .line 377
    const/4 v0, 0x1

    .line 378
    const/4 v12, 0x0

    .line 379
    move-object/from16 v1, p0

    .line 380
    .line 381
    move-object v13, v6

    .line 382
    move v6, v0

    .line 383
    move-object v0, v7

    .line 384
    move v7, v12

    .line 385
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 386
    .line 387
    .line 388
    if-nez v11, :cond_7

    .line 389
    .line 390
    return-object v9

    .line 391
    :cond_7
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_a

    .line 400
    .line 401
    iget-object v1, v8, Lcom/join/mgps/adapter/l6;->b:Landroid/content/Context;

    .line 402
    .line 403
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    iget-object v2, v8, Lcom/join/mgps/adapter/l6;->b:Landroid/content/Context;

    .line 408
    .line 409
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_9

    .line 418
    .line 419
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_9

    .line 432
    .line 433
    iget-object v1, v8, Lcom/join/mgps/adapter/l6;->b:Landroid/content/Context;

    .line 434
    .line 435
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    iget-object v2, v8, Lcom/join/mgps/adapter/l6;->b:Landroid/content/Context;

    .line 440
    .line 441
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_8

    .line 458
    .line 459
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-ge v1, v2, :cond_8

    .line 472
    .line 473
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 474
    .line 475
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_8

    .line 479
    .line 480
    :cond_8
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 481
    .line 482
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_8

    .line 486
    .line 487
    :cond_9
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 499
    .line 500
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->j:Landroid/widget/FrameLayout;

    .line 501
    .line 502
    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_8

    .line 506
    .line 507
    :cond_a
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 519
    .line 520
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->j:Landroid/widget/FrameLayout;

    .line 521
    .line 522
    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_8

    .line 526
    .line 527
    :cond_b
    move-object v4, v6

    .line 528
    move-object v1, v7

    .line 529
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    const/16 v6, 0x2b

    .line 534
    .line 535
    if-eqz v11, :cond_c

    .line 536
    .line 537
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v12

    .line 545
    invoke-static {v7, v12}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v7

    .line 549
    if-lez v7, :cond_c

    .line 550
    .line 551
    const/16 v5, 0x2b

    .line 552
    .line 553
    :cond_c
    if-eqz v5, :cond_14

    .line 554
    .line 555
    const/16 v7, 0x1b

    .line 556
    .line 557
    const-string v12, "\u6682\u505c\u4e2d"

    .line 558
    .line 559
    if-eq v5, v7, :cond_13

    .line 560
    .line 561
    const/16 v7, 0x30

    .line 562
    .line 563
    if-eq v5, v7, :cond_12

    .line 564
    .line 565
    const/4 v7, 0x2

    .line 566
    const-string v13, "/"

    .line 567
    .line 568
    if-eq v5, v7, :cond_10

    .line 569
    .line 570
    if-eq v5, v3, :cond_e

    .line 571
    .line 572
    const/4 v3, 0x5

    .line 573
    if-eq v5, v3, :cond_d

    .line 574
    .line 575
    const/4 v3, 0x6

    .line 576
    if-eq v5, v3, :cond_e

    .line 577
    .line 578
    const/4 v3, 0x7

    .line 579
    if-eq v5, v3, :cond_14

    .line 580
    .line 581
    const/16 v3, 0x2a

    .line 582
    .line 583
    if-eq v5, v3, :cond_d

    .line 584
    .line 585
    if-eq v5, v6, :cond_14

    .line 586
    .line 587
    packed-switch v5, :pswitch_data_0

    .line 588
    .line 589
    .line 590
    goto/16 :goto_8

    .line 591
    .line 592
    :pswitch_0
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 593
    .line 594
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 595
    .line 596
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 597
    .line 598
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 599
    .line 600
    const/4 v6, 0x0

    .line 601
    const/4 v7, 0x1

    .line 602
    move-object/from16 v1, p0

    .line 603
    .line 604
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 605
    .line 606
    .line 607
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 608
    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 639
    .line 640
    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 641
    .line 642
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 646
    .line 647
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 648
    .line 649
    .line 650
    move-result-wide v2

    .line 651
    long-to-int v0, v2

    .line 652
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 656
    .line 657
    const-string v1, "\u89e3\u538b"

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_8

    .line 663
    .line 664
    :pswitch_1
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 665
    .line 666
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 667
    .line 668
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 669
    .line 670
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 671
    .line 672
    const/4 v6, 0x0

    .line 673
    const/4 v7, 0x1

    .line 674
    move-object/from16 v1, p0

    .line 675
    .line 676
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 677
    .line 678
    .line 679
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 680
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    .line 709
    .line 710
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 711
    .line 712
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 713
    .line 714
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    .line 716
    .line 717
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 718
    .line 719
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 720
    .line 721
    .line 722
    move-result-wide v2

    .line 723
    long-to-int v0, v2

    .line 724
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 725
    .line 726
    .line 727
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 728
    .line 729
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_8

    .line 735
    .line 736
    :pswitch_2
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 737
    .line 738
    const-string v1, "\u5b89\u88c5"

    .line 739
    .line 740
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .line 742
    .line 743
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 744
    .line 745
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 746
    .line 747
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 748
    .line 749
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 750
    .line 751
    const/4 v6, 0x1

    .line 752
    const/4 v7, 0x0

    .line 753
    move-object/from16 v1, p0

    .line 754
    .line 755
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_8

    .line 759
    .line 760
    :pswitch_3
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 761
    .line 762
    const-string v11, "\u7b49\u5f85"

    .line 763
    .line 764
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    .line 766
    .line 767
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 768
    .line 769
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 770
    .line 771
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 772
    .line 773
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 774
    .line 775
    const/4 v6, 0x0

    .line 776
    const/4 v7, 0x0

    .line 777
    move-object/from16 v1, p0

    .line 778
    .line 779
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 780
    .line 781
    .line 782
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 783
    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 790
    .line 791
    .line 792
    move-result-wide v3

    .line 793
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    .line 816
    .line 817
    :try_start_0
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 818
    .line 819
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 820
    .line 821
    .line 822
    move-result-wide v2

    .line 823
    long-to-int v0, v2

    .line 824
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .line 826
    .line 827
    goto :goto_4

    .line 828
    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 830
    .line 831
    .line 832
    :goto_4
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 833
    .line 834
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    .line 836
    .line 837
    goto/16 :goto_8

    .line 838
    .line 839
    :pswitch_4
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 840
    .line 841
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    .line 843
    .line 844
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 845
    .line 846
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 847
    .line 848
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 849
    .line 850
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 851
    .line 852
    const/4 v6, 0x1

    .line 853
    const/4 v7, 0x0

    .line 854
    move-object/from16 v1, p0

    .line 855
    .line 856
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_8

    .line 860
    .line 861
    :cond_d
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 862
    .line 863
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .line 865
    .line 866
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 867
    .line 868
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 869
    .line 870
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 871
    .line 872
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 873
    .line 874
    const/4 v6, 0x1

    .line 875
    const/4 v7, 0x1

    .line 876
    move-object/from16 v1, p0

    .line 877
    .line 878
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 879
    .line 880
    .line 881
    goto/16 :goto_8

    .line 882
    .line 883
    :cond_e
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 884
    .line 885
    const-string v2, "\u7ee7\u7eed"

    .line 886
    .line 887
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 891
    .line 892
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 893
    .line 894
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 895
    .line 896
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 897
    .line 898
    const/4 v6, 0x0

    .line 899
    const/4 v7, 0x0

    .line 900
    move-object/from16 v1, p0

    .line 901
    .line 902
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 903
    .line 904
    .line 905
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 906
    .line 907
    .line 908
    move-result-wide v1

    .line 909
    const-wide/16 v3, 0x0

    .line 910
    .line 911
    cmp-long v5, v1, v3

    .line 912
    .line 913
    if-nez v5, :cond_f

    .line 914
    .line 915
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 916
    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    .line 918
    .line 919
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 923
    .line 924
    .line 925
    move-result-wide v3

    .line 926
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v3

    .line 940
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    .line 949
    .line 950
    goto :goto_5

    .line 951
    :cond_f
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 952
    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    .line 954
    .line 955
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 959
    .line 960
    .line 961
    move-result-wide v3

    .line 962
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    .line 985
    .line 986
    :goto_5
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 987
    .line 988
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 989
    .line 990
    .line 991
    move-result-wide v2

    .line 992
    long-to-int v0, v2

    .line 993
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 994
    .line 995
    .line 996
    goto :goto_6

    .line 997
    :catch_1
    move-exception v0

    .line 998
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 999
    .line 1000
    .line 1001
    :goto_6
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 1002
    .line 1003
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_8

    .line 1007
    .line 1008
    :cond_10
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 1012
    .line 1013
    const-string v2, "\u6682\u505c"

    .line 1014
    .line 1015
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .line 1017
    .line 1018
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 1019
    .line 1020
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 1021
    .line 1022
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 1023
    .line 1024
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 1025
    .line 1026
    const/4 v6, 0x0

    .line 1027
    const/4 v7, 0x0

    .line 1028
    move-object/from16 v1, p0

    .line 1029
    .line 1030
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v1

    .line 1037
    const-wide/16 v3, 0x0

    .line 1038
    .line 1039
    cmp-long v5, v1, v3

    .line 1040
    .line 1041
    if-nez v5, :cond_11

    .line 1042
    .line 1043
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 1044
    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v3

    .line 1054
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v3

    .line 1058
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_7

    .line 1079
    :cond_11
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->f:Landroid/widget/TextView;

    .line 1080
    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v3

    .line 1090
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v3

    .line 1104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    .line 1113
    .line 1114
    :goto_7
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 1115
    .line 1116
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 1117
    .line 1118
    .line 1119
    move-result-wide v2

    .line 1120
    long-to-int v3, v2

    .line 1121
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->g:Landroid/widget/TextView;

    .line 1129
    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    const-string v0, "/S"

    .line 1139
    .line 1140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    .line 1149
    .line 1150
    goto :goto_8

    .line 1151
    :cond_12
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 1152
    .line 1153
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 1154
    .line 1155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 1159
    .line 1160
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 1161
    .line 1162
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 1163
    .line 1164
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 1165
    .line 1166
    const/4 v6, 0x1

    .line 1167
    const/4 v7, 0x0

    .line 1168
    move-object/from16 v1, p0

    .line 1169
    .line 1170
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 1171
    .line 1172
    .line 1173
    goto :goto_8

    .line 1174
    :cond_13
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 1175
    .line 1176
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_8

    .line 1180
    :cond_14
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 1181
    .line 1182
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v1

    .line 1193
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 1194
    .line 1195
    .line 1196
    iget-object v0, v10, Lcom/join/mgps/adapter/l6$b;->c:Landroid/widget/TextView;

    .line 1197
    .line 1198
    iget-object v1, v10, Lcom/join/mgps/adapter/l6$b;->j:Landroid/widget/FrameLayout;

    .line 1199
    .line 1200
    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v2, v10, Lcom/join/mgps/adapter/l6$b;->b:Landroid/widget/TextView;

    .line 1204
    .line 1205
    iget-object v3, v10, Lcom/join/mgps/adapter/l6$b;->e:Landroid/widget/LinearLayout;

    .line 1206
    .line 1207
    iget-object v4, v10, Lcom/join/mgps/adapter/l6$b;->i:Landroid/widget/ProgressBar;

    .line 1208
    .line 1209
    iget-object v5, v10, Lcom/join/mgps/adapter/l6$b;->h:Landroid/widget/ProgressBar;

    .line 1210
    .line 1211
    const/4 v6, 0x1

    .line 1212
    const/4 v7, 0x0

    .line 1213
    move-object/from16 v1, p0

    .line 1214
    .line 1215
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/l6;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 1216
    .line 1217
    .line 1218
    :goto_8
    return-object v9

    .line 1219
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
