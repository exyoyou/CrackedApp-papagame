.class Lcom/join/mgps/socket/fight/arena/a$a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a0"
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "_v2_lob_2."

.field private static final z:Ljava/lang/String; = "_lob."


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/join/mgps/dto/ArchiveBean;

.field private q:Landroid/content/Context;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArchiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/widget/RelativeLayout;

.field x:Z

.field final synthetic y:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method public varargs constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "params"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    .line 13
    .line 14
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->q:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lcom/join/mgps/socket/fight/arena/a$a0;->l(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    aget-object p2, p3, p2

    .line 21
    .line 22
    check-cast p2, Lcom/join/mgps/dto/ArchiveBean;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    aget-object p1, p3, p1

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->i(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/a$a0;Lcom/join/mgps/dto/ArchiveBean;)Lcom/join/mgps/dto/ArchiveBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private h([Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "rootFile"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-string v3, "3"

    .line 9
    .line 10
    const-string v4, "2"

    .line 11
    .line 12
    const-string v5, "1"

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    aget-object v7, p1, v2

    .line 18
    .line 19
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v9, "_v2_lob_2."

    .line 32
    .line 33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_1

    .line 48
    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_1

    .line 72
    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_0

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 v0, 0x1

    .line 104
    :goto_2
    if-eqz v0, :cond_5

    .line 105
    .line 106
    array-length v2, p1

    .line 107
    :goto_3
    if-ge v1, v2, :cond_5

    .line 108
    .line 109
    aget-object v7, p1, v1

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v9, "_lob."

    .line 124
    .line 125
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-nez v8, :cond_4

    .line 140
    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_4

    .line 164
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_3

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    :goto_4
    iput-boolean v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->x:Z

    .line 194
    .line 195
    :cond_5
    return v0
.end method

.method private k(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastTime"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "HH:mm MM-dd"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private l(Landroid/content/Context;)V
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
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    new-instance v1, Landroid/app/Dialog;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/a;->j(Lcom/join/mgps/socket/fight/arena/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1c

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a;->i(Lcom/join/mgps/socket/fight/arena/a;)Landroid/app/Dialog;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const v0, 0x7f0d020c

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f0a13e8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->w:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    const v0, 0x7f0a19e6

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->u:Landroid/widget/TextView;

    .line 84
    .line 85
    const v0, 0x7f0a0ed3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->v:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->u:Landroid/widget/TextView;

    .line 97
    .line 98
    const/16 v1, 0x8

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->v:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0a0a08

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->d:Landroid/widget/ImageView;

    .line 119
    .line 120
    const v0, 0x7f0a0a09

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/ImageView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->e:Landroid/widget/ImageView;

    .line 130
    .line 131
    const v0, 0x7f0a0a0a

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->f:Landroid/widget/ImageView;

    .line 141
    .line 142
    const v0, 0x7f0a191b

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/TextView;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    .line 152
    .line 153
    const v0, 0x7f0a191c

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/TextView;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    .line 163
    .line 164
    const v0, 0x7f0a191d

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/widget/TextView;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    .line 174
    .line 175
    const v0, 0x7f0a19d4

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Landroid/widget/TextView;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    .line 185
    .line 186
    const v0, 0x7f0a19d5

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/TextView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    .line 196
    .line 197
    const v0, 0x7f0a19d6

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    .line 207
    .line 208
    const v0, 0x7f0a0a1e

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/widget/ImageView;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    .line 218
    .line 219
    const v0, 0x7f0a0a1f

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    .line 229
    .line 230
    const v0, 0x7f0a0a20

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Landroid/widget/ImageView;

    .line 238
    .line 239
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    .line 240
    .line 241
    const v0, 0x7f0a13c7

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$a;

    .line 253
    .line 254
    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$a;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    const v0, 0x7f0a13c8

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 268
    .line 269
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 270
    .line 271
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$b;

    .line 272
    .line 273
    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$b;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    const v0, 0x7f0a13c9

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 287
    .line 288
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 289
    .line 290
    new-instance v2, Lcom/join/mgps/socket/fight/arena/a$a0$c;

    .line 291
    .line 292
    invoke-direct {v2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$c;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 299
    .line 300
    invoke-static {v0, p1}, Lcom/join/mgps/socket/fight/arena/a;->c(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 304
    .line 305
    const/16 v2, 0x11

    .line 306
    .line 307
    invoke-static {v0, p1, v2, v1, v1}, Lcom/join/mgps/socket/fight/arena/a;->d(Lcom/join/mgps/socket/fight/arena/a;Landroid/view/View;III)V

    .line 308
    .line 309
    .line 310
    return-void
.end method

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/join/mgps/dto/ArchiveBean;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/join/mgps/dto/ArchiveBean;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->d:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v6, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/join/mgps/dto/ArchiveBean;

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/join/mgps/dto/ArchiveBean;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->e:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/join/mgps/dto/ArchiveBean;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    if-eqz v1, :cond_3

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 147
    .line 148
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/join/mgps/dto/ArchiveBean;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getIconFile()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->f:Landroid/widget/ImageView;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Lcom/join/mgps/dto/ArchiveBean;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveBean;->getUpdate_time()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 207
    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-ge v4, v0, :cond_5

    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->p:Lcom/join/mgps/dto/ArchiveBean;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Lcom/join/mgps/dto/ArchiveBean;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveBean;->getShowName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_4

    .line 241
    .line 242
    invoke-direct {p0, v4}, Lcom/join/mgps/socket/fight/arena/a$a0;->p(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_5
    :goto_3
    return-void
.end method

.method private o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "files",
            "suffix_name"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v6, "1"

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v6, ".png"

    .line 41
    .line 42
    const-string v7, "/"

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    .line 47
    .line 48
    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    invoke-virtual {v5, v8, v9}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-direct {p0, v8, v9}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v8, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v8, "2"

    .line 119
    .line 120
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    .line 133
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    .line 134
    .line 135
    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 168
    .line 169
    .line 170
    move-result-wide v8

    .line 171
    invoke-direct {p0, v8, v9}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 179
    .line 180
    .line 181
    move-result-wide v8

    .line 182
    invoke-virtual {v5, v8, v9}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 183
    .line 184
    .line 185
    iget-object v8, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v8, "3"

    .line 206
    .line 207
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_2

    .line 219
    .line 220
    new-instance v5, Lcom/join/mgps/dto/ArchiveBean;

    .line 221
    .line 222
    invoke-direct {v5}, Lcom/join/mgps/dto/ArchiveBean;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setRecordFile(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v9, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setIconFile(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    invoke-direct {p0, v6, v7}, Lcom/join/mgps/socket/fight/arena/a$a0;->k(J)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/ArchiveBean;->setUpdate_time(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    invoke-virtual {v5, v3, v4}, Lcom/join/mgps/dto/ArchiveBean;->setFileTime(J)V

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 282
    .line 283
    new-instance p2, Lcom/join/mgps/socket/fight/arena/a$a0$d;

    .line 284
    .line 285
    invoke-direct {p2, p0}, Lcom/join/mgps/socket/fight/arena/a$a0$d;-><init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V

    .line 286
    .line 287
    .line 288
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    .line 290
    .line 291
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 292
    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-ge v1, p1, :cond_4

    .line 298
    .line 299
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/join/mgps/dto/ArchiveBean;

    .line 306
    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string p3, "\u5b58\u6863"

    .line 313
    .line 314
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object p3, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result p3

    .line 323
    sub-int/2addr p3, v1

    .line 324
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ArchiveBean;->setShowName(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_4
    return-void
.end method

.method private p(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f080242

    .line 3
    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const v3, 0x7f080247

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq p1, v4, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq p1, v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    .line 186
    .line 187
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->a:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->b:Landroid/widget/RelativeLayout;

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->c:Landroid/widget/RelativeLayout;

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->j:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->k:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->l:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->g:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->e()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->h:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->i:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-static {}, Lcom/join/mgps/socket/fight/arena/a;->f()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->m:Landroid/widget/ImageView;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->n:Landroid/widget/ImageView;

    .line 266
    .line 267
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->o:Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    :goto_0
    return-void
.end method


# virtual methods
.method i(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-gtz p1, :cond_1

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$a0;->m()V

    .line 31
    .line 32
    .line 33
    return p1
.end method

.method j(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o3;->t(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->s:Ljava/lang/String;

    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const-string v1, "_lob."

    .line 73
    .line 74
    invoke-direct {p0, v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a$a0;->o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0;->t:Z

    .line 2
    .line 3
    return v0
.end method
