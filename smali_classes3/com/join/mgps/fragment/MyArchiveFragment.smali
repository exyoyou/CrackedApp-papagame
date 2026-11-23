.class public Lcom/join/mgps/fragment/MyArchiveFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lw6/c;
.implements Lcom/join/android/app/common/http/g;
.implements Lw6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;,
        Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;,
        Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;,
        Lcom/join/mgps/fragment/MyArchiveFragment$u;,
        Lcom/join/mgps/fragment/MyArchiveFragment$v;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d03b8
.end annotation


# instance fields
.field A:Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;

.field B:Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;

.field C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

.field D:Z

.field E:Z

.field F:Lcom/join/mgps/dialog/x;

.field G:Lcom/join/mgps/dialog/f1;

.field H:Lcom/join/mgps/dto/ArchiveDataBean;

.field I:Z

.field J:Lcom/join/mgps/dialog/f1;

.field private K:Z

.field L:Z

.field M:Z

.field N:I

.field O:Z

.field P:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field R:I

.field S:J

.field T:J

.field U:J

.field V:J

.field W:I

.field X:Ljava/lang/String;

.field c:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/wufan/user/service/protobuf/UserInfo;

.field t:Lcom/join/mgps/rpc/d;

.field u:Ljava/lang/String;

.field v:I

.field w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field x:Landroid/content/IntentFilter;

.field y:Landroid/content/IntentFilter;

.field z:Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->D:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->E:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->K:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->M:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->N:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->S:J

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->T:J

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->U:J

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->V:J

    .line 33
    .line 34
    iput v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->W:I

    .line 35
    .line 36
    return-void
.end method

.method private E0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->Q:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 9
    .line 10
    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 16
    .line 17
    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 24
    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$j;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$j;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->G0(Lcom/join/mgps/dto/CloudListDataBean;Lw6/e;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private F0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->Q:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->Q:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 22
    .line 23
    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 29
    .line 30
    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->G0(Lcom/join/mgps/dto/CloudListDataBean;Lw6/e;)V

    .line 58
    .line 59
    .line 60
    iget p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 61
    .line 62
    add-int/2addr p1, v0

    .line 63
    iput p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method private I0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/MyArchiveFragment$v;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "inputStream",
            "bytehead",
            "fileOld",
            "recoderCheckInterface"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "default"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_3
    new-instance v2, Lcom/join/mgps/dto/RecoverFileJson;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/join/mgps/dto/RecoverFileJson;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RecoverFileJson;->setGameID(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RecoverFileJson;->setUserID(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->v0(Ljava/lang/String;)[B

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    const/4 v5, 0x1

    .line 91
    add-int/2addr v4, v5

    .line 92
    int-to-short v4, v4

    .line 93
    invoke-static {v4}, Lcom/join/mgps/fragment/MyArchiveFragment;->r0(S)[B

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    add-int/lit8 v6, v6, 0x3

    .line 102
    .line 103
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v4}, Lcom/join/mgps/Util/i1;->a([B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {p0, v4}, Lcom/join/mgps/fragment/MyArchiveFragment;->v0(Ljava/lang/String;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    add-int/lit8 v2, v2, 0x27

    .line 134
    .line 135
    add-int/lit8 v2, v2, 0x3

    .line 136
    .line 137
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v7, "WFSTE"

    .line 142
    .line 143
    invoke-virtual {p0, v7}, Lcom/join/mgps/fragment/MyArchiveFragment;->v0(Ljava/lang/String;)[B

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 180
    .line 181
    .line 182
    if-eqz p3, :cond_1

    .line 183
    .line 184
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    .line 186
    .line 187
    :cond_1
    const/16 p3, 0x400

    .line 188
    .line 189
    new-array p3, p3, [B

    .line 190
    .line 191
    :goto_1
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const/4 v4, -0x1

    .line 196
    if-eq v2, v4, :cond_2

    .line 197
    .line 198
    invoke-virtual {v1, p3, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 206
    .line 207
    .line 208
    invoke-static {p4}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 212
    .line 213
    .line 214
    invoke-interface {p5, v5, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    .line 217
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catch_1
    move-exception p1

    .line 225
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catchall_0
    move-exception p1

    .line 230
    goto :goto_3

    .line 231
    :catch_2
    move-exception p1

    .line 232
    :try_start_6
    const-string p3, "\u5199\u5165\u4fe1\u606f\u5f02\u5e38"

    .line 233
    .line 234
    invoke-virtual {p0, p3}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    .line 239
    .line 240
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 241
    .line 242
    .line 243
    if-eqz p2, :cond_4

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :catch_3
    move-exception p1

    .line 250
    goto :goto_2

    .line 251
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 252
    .line 253
    .line 254
    if-eqz p2, :cond_3

    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :catch_4
    move-exception p2

    .line 261
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_3
    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 265
    :catchall_1
    move-exception p1

    .line 266
    throw p1

    .line 267
    :catch_5
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    const-string p1, "\u6587\u4ef6\u6ca1\u627e\u5230\u5f02\u5e38"

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_4
    :goto_5
    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/MyArchiveFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/MyArchiveFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->a0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/MyArchiveFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->K:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/MyArchiveFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->K:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic R(Lcom/join/mgps/fragment/MyArchiveFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->F0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->Z(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->E0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "delfile"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " "

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v0, 0x0

    .line 59
    aput-object p1, v1, v0

    .line 60
    .line 61
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    return-void
.end method

.method private Z(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "isMarcket"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/join/mgps/Util/z;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/join/mgps/Util/z;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 63
    .line 64
    const-string v0, "com.cloud.downCloud"

    .line 65
    .line 66
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "downCloud"

    .line 70
    .line 71
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private a0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.cloud.downCloud.all"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "downClouds"

    .line 9
    .line 10
    check-cast p1, Ljava/io/Serializable;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private b0()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "\u8bf7\u5148\u767b\u5f55"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveColud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method private e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recoverFilename"
        }
    .end annotation

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "0"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string p1, "\u5feb\u901f\u5b58\u6863"

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    const-string v0, "99"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string p1, "\u81ea\u52a8\u4fdd\u5b58\u7684\u5b58\u6863"

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "\u5b58\u6863"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method private g0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 59
    return v0
.end method

.method private l0(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "status"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/event/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/join/mgps/event/i;->j(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private m0(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->b0()Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_8

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_8

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->t:Lcom/join/mgps/rpc/d;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->g(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDataBean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->H:Lcom/join/mgps/dto/ArchiveDataBean;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    if-ne p1, v1, :cond_7

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, -0x1

    .line 72
    if-ne v0, v1, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->H:Lcom/join/mgps/dto/ArchiveDataBean;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getMsg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "701"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->y0()V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->H:Lcom/join/mgps/dto/ArchiveDataBean;

    .line 107
    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;->getCloudList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v2, v1}, Lcom/join/mgps/Util/o3;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->p:Ljava/util/List;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 165
    .line 166
    const/4 v3, 0x6

    .line 167
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->p:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_4

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_5

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_5

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->updateUi(Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDataBean$DataInfoBean;->getCloudList()Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->r:Ljava/util/List;

    .line 241
    .line 242
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->p:Ljava/util/List;

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->A0(Ljava/util/List;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    const/4 v0, 0x2

    .line 257
    if-ne p1, v0, :cond_9

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->d0()V

    .line 260
    .line 261
    .line 262
    :cond_9
    :goto_2
    return-void
.end method

.method private n0()V
    .locals 11

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/join/mgps/Util/o3;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "31"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "_v2"

    .line 42
    .line 43
    if-eqz v2, :cond_8

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Lcom/join/mgps/dto/RomArchived;

    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v8, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_8

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lcom/join/mgps/dto/RomArchived;

    .line 92
    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    if-nez v7, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-static {v9}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    if-eqz v8, :cond_3

    .line 113
    .line 114
    if-eqz v7, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-static {v10}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_6

    .line 125
    .line 126
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_3

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual {v9}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_10

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v3, 0x0

    .line 170
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_a

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Lcom/join/mgps/dto/RomArchived;

    .line 181
    .line 182
    invoke-virtual {v7}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_9

    .line 191
    .line 192
    const/4 v5, 0x1

    .line 193
    goto :goto_2

    .line 194
    :cond_9
    const/4 v3, 0x1

    .line 195
    goto :goto_2

    .line 196
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_10

    .line 205
    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 211
    .line 212
    if-eqz v3, :cond_d

    .line 213
    .line 214
    if-nez v5, :cond_d

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v4}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_c

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_d
    if-eqz v3, :cond_b

    .line 232
    .line 233
    if-eqz v5, :cond_b

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v7}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_e

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_b

    .line 254
    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_e
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_f

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_10
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/MyArchiveFragment;->A0(Ljava/util/List;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public static r0(S)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Ljava/lang/Integer;

    .line 8
    .line 9
    and-int/lit16 v4, p0, 0xff

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput-byte v3, v1, v2

    .line 19
    .line 20
    shr-int/lit8 p0, p0, 0x8

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v1
.end method


# virtual methods
.method A0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordRoms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->p:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_7

    .line 26
    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/join/mgps/dto/RomArchived;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    new-instance v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/join/mgps/dto/CloudListDataBean;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setAddTime(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v5, "file://"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveCover(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveCoverFilePath(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFileName(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {p0, v4}, Lcom/join/mgps/fragment/MyArchiveFragment;->e0(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveName(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getSize()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setFileSize(J)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/join/mgps/dto/RomArchived;

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setFileMd5(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->r:Ljava/util/List;

    .line 179
    .line 180
    if-eqz v4, :cond_3

    .line 181
    .line 182
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_3

    .line 191
    .line 192
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    new-instance v7, Ljava/io/File;

    .line 203
    .line 204
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 209
    .line 210
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_2

    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getMd5()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_2

    .line 246
    .line 247
    const/4 v4, 0x5

    .line 248
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 249
    .line 250
    .line 251
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 252
    .line 253
    if-eqz v4, :cond_5

    .line 254
    .line 255
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_5

    .line 264
    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 270
    .line 271
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    new-instance v7, Ljava/io/File;

    .line 276
    .line 277
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 282
    .line 283
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-eqz v6, :cond_4

    .line 299
    .line 300
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    const/4 v7, 0x7

    .line 305
    if-ne v6, v7, :cond_4

    .line 306
    .line 307
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .line 317
    .line 318
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :catch_0
    move-exception p1

    .line 323
    move-object v0, v1

    .line 324
    goto :goto_4

    .line 325
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->z0(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :catch_1
    move-exception p1

    .line 330
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    move-object v1, v0

    .line 334
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/MyArchiveFragment;->updateUi(Ljava/util/List;)V

    .line 335
    .line 336
    .line 337
    return-void
.end method

.method public B(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataBean",
            "isMarcket"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->Z(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/w;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f13017f

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "\u4e0b\u8f7d\u987b\u77e5"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "\u4e0b\u8f7d\u540e\uff0c\u5c06\u4ee5\u5907\u4efd\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u672c\u5730\u540c\u540d\u5b58\u6863"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "\u786e\u5b9a"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "\u53d6\u6d88"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$a;

    .line 67
    .line 68
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment$a;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Lcom/join/mgps/fragment/MyArchiveFragment$t;

    .line 76
    .line 77
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$t;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Lcom/join/mgps/fragment/MyArchiveFragment$s;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$s;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method B0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downSize"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->Q:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const-string v1, "/S"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v0, v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "/"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->Q:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->U:J

    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->W:I

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-wide v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->U:J

    .line 79
    .line 80
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->W:I

    .line 95
    .line 96
    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method C0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->E:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public D(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->H0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method D0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->E:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public G(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "commentType"
        }
    .end annotation

    .line 1
    return-void
.end method

.method G0(Lcom/join/mgps/dto/CloudListDataBean;Lw6/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "listerner"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x7

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->l0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v2, v0, [Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object v0, v2, v1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v0, v2, v1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, ""

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    move-object v9, p0

    .line 85
    invoke-virtual/range {v1 .. v9}, Lcom/join/android/app/common/http/h;->j([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x4

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-class v3, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 101
    .line 102
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/16 v3, 0x258

    .line 113
    .line 114
    if-ne v1, v3, :cond_2

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 117
    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    invoke-interface {p2, p1}, Lw6/e;->J(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x5

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->l0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, p1}, Lw6/e;->D(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    const-string v1, "701"

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->y0()V

    .line 145
    .line 146
    .line 147
    const-string v0, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    invoke-interface {p2, p1}, Lw6/e;->J(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->l0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    invoke-interface {p2, p1}, Lw6/e;->J(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->l0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-interface {p2, p1}, Lw6/e;->J(Lcom/join/mgps/dto/CloudListDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-void
.end method

.method H0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->G0(Lcom/join/mgps/dto/CloudListDataBean;Lw6/e;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    iput p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v3, 0x7f08018e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x5

    .line 49
    if-ge v2, v4, :cond_2

    .line 50
    .line 51
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ne v4, v1, :cond_1

    .line 64
    .line 65
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eq v4, v5, :cond_1

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "\u5df2\u9009\u62e9"

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, "\u4e2a\u5b58\u6863"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroid/content/Intent;

    .line 118
    .line 119
    const-string v0, "com.join.mgps.activity.quitManage"

    .line 120
    .line 121
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method

.method public J(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->G0(Lcom/join/mgps/dto/CloudListDataBean;Lw6/e;)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->R:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method M()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/MApplication;->Q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->l:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->m:Landroid/widget/TextView;

    .line 14
    .line 15
    sget-object v1, Lcom/MApplication;->R:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->n:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$o;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$o;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->l:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public U([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data1",
            "data2"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p2

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p1, p1

    .line 12
    array-length v1, p2

    .line 13
    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.mgps.activity.quitManage"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public W([B)S
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    int-to-short v0, v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aget-byte p1, p1, v1

    .line 9
    .line 10
    and-int/lit16 p1, p1, 0xff

    .line 11
    .line 12
    int-to-short p1, p1

    .line 13
    shl-int/lit8 p1, p1, 0x8

    .line 14
    .line 15
    int-to-short p1, p1

    .line 16
    or-int/2addr p1, v0

    .line 17
    int-to-short p1, p1

    .line 18
    return p1
.end method

.method Y(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "gameId"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v2, "uid"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, ""

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v2, "token"

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v0, "archiveName"

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->t:Lcom/join/mgps/rpc/d;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->c(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/16 v2, 0x258

    .line 89
    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->D0()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    if-eqz v0, :cond_4

    .line 132
    .line 133
    const-string p1, "701"

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->y0()V

    .line 146
    .line 147
    .line 148
    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->J:Lcom/join/mgps/dialog/f1;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->k()Lcom/join/mgps/rpc/impl/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->t:Lcom/join/mgps/rpc/d;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "gameid"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "type"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 93
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    .line 95
    .line 96
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->x:Landroid/content/IntentFilter;

    .line 100
    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    .line 102
    .line 103
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->y:Landroid/content/IntentFilter;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->x:Landroid/content/IntentFilter;

    .line 109
    .line 110
    const-string v1, "com.join.mgps.activity.joinManage"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->y:Landroid/content/IntentFilter;

    .line 116
    .line 117
    const-string v1, "com.join.mgps.activity.quitManage"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->z:Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;

    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->A:Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->z:Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->x:Landroid/content/IntentFilter;

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->A:Lcom/join/mgps/fragment/MyArchiveFragment$QuitReceive;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->y:Landroid/content/IntentFilter;

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    .line 155
    .line 156
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "com.wufun.cloud.showUploadDialog"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;

    .line 165
    .line 166
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 167
    .line 168
    .line 169
    iput-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->B:Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 172
    .line 173
    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 182
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->r:Ljava/util/List;

    .line 189
    .line 190
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 191
    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/MyArchiveFragment$u;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/join/mgps/dialog/x;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const v2, 0x7f13017f

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    .line 216
    .line 217
    .line 218
    const-string v1, "\u5b58\u6863\u5907\u4efd\u4e2d"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "\u53d6\u6d88\u5907\u4efd"

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$m;

    .line 237
    .line 238
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$m;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$k;

    .line 246
    .line 247
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$k;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 255
    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->G:Lcom/join/mgps/dialog/f1;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->f:Landroid/widget/Button;

    .line 275
    .line 276
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 277
    .line 278
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$n;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->M()V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public c0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->d0()V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->m0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public d0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->n0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method i0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->k:Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v1, "\u8bf7\u5148\u4ece\u672c\u5730\u5907\u4efd\u5b58\u6863"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->k:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v1, "\u8bf7\u5148\u542f\u52a8\u6e38\u620f\u4fdd\u5b58\u5b58\u6863"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method j0()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 10
    .line 11
    iget v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 12
    .line 13
    const v5, 0x7f08018f

    .line 14
    .line 15
    .line 16
    const-string v6, "\u4e2a\u5b58\u6863"

    .line 17
    .line 18
    const-string v7, "\u5df2\u9009\u62e9"

    .line 19
    .line 20
    if-ne v4, v1, :cond_5

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    iget-object v8, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-ge v1, v8, :cond_1

    .line 31
    .line 32
    iget-object v8, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lcom/join/mgps/dto/CloudListDataBean;

    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eq v8, v2, :cond_0

    .line 45
    .line 46
    iget-object v8, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/join/mgps/dto/CloudListDataBean;

    .line 53
    .line 54
    invoke-virtual {v8, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ge v3, v1, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ne v1, v2, :cond_2

    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    sub-int/2addr v1, v0

    .line 97
    if-ne v4, v1, :cond_4

    .line 98
    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sub-int/2addr v1, v0

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_5
    const/4 v1, 0x0

    .line 141
    const/4 v2, 0x0

    .line 142
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-ge v1, v4, :cond_7

    .line 149
    .line 150
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    iget-object v4, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 171
    .line 172
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    const/4 v0, 0x0

    .line 181
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-ge v3, v1, :cond_9

    .line 188
    .line 189
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_8

    .line 202
    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    .line 205
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    sub-int/2addr v1, v0

    .line 215
    if-ne v2, v1, :cond_a

    .line 216
    .line 217
    if-eqz v2, :cond_a

    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    sub-int/2addr v1, v0

    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    .line 232
    .line 233
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 234
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    iput-boolean v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->L:Z

    .line 258
    .line 259
    iget v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 260
    .line 261
    const-string v4, "\u5df2\u9009\u62e90\u4e2a\u5b58\u6863"

    .line 262
    .line 263
    const v5, 0x7f08018e

    .line 264
    .line 265
    .line 266
    if-ne v0, v1, :cond_e

    .line 267
    .line 268
    const/4 v0, 0x0

    .line 269
    :goto_4
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 270
    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-ge v0, v1, :cond_d

    .line 276
    .line 277
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 278
    .line 279
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eq v1, v2, :cond_c

    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 292
    .line 293
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 300
    .line 301
    .line 302
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 306
    .line 307
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_e
    const/4 v0, 0x0

    .line 317
    :goto_5
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-ge v0, v1, :cond_10

    .line 324
    .line 325
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 326
    .line 327
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_f

    .line 338
    .line 339
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 340
    .line 341
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 346
    .line 347
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    .line 348
    .line 349
    .line 350
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->d:Landroid/widget/ImageView;

    .line 354
    .line 355
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->e:Landroid/widget/TextView;

    .line 359
    .line 360
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 364
    .line 365
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public k(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "type"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->Y(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 5
    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_5

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "file://"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const-string v2, ""

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 66
    .line 67
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->X(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->M4(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    new-instance v4, Ljava/io/File;

    .line 97
    .line 98
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v5, "/emus/"

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "/"

    .line 146
    .line 147
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v3, Ljava/io/File;

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-instance v1, Ljava/io/File;

    .line 196
    .line 197
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 201
    .line 202
    .line 203
    new-instance v2, Ljava/io/File;

    .line 204
    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->X(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->p:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eqz p2, :cond_4

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Lcom/join/mgps/dto/RomArchived;

    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_4

    .line 264
    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 266
    .line 267
    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->C0()V

    .line 269
    .line 270
    .line 271
    :cond_5
    :goto_0
    return-void
.end method

.method k0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->F0(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/w;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f13017f

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "\u5907\u4efd\u987b\u77e5"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "\u4e0a\u4f20\u540e\uff0c\u5c06\u4ee5\u672c\u5730\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u4e91\u7aef\u540c\u540d\u5b58\u6863\u3002"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "\u786e\u5b9a"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "\u53d6\u6d88"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$r;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$r;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$q;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$q;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$p;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$p;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method o0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "isBAckup",
            "recoderCheckInterface"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    .line 9
    .line 10
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 11
    .line 12
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    new-array v3, v0, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x57

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x46

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x53

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x54

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    const/16 v1, 0x45

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    const/16 v0, 0x21

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    new-array v5, v0, [B

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5}, Lcom/join/mgps/fragment/MyArchiveFragment;->W([B)S

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    new-array v7, v6, [B

    .line 87
    .line 88
    invoke-virtual {v2, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 89
    .line 90
    .line 91
    new-instance v8, Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 94
    .line 95
    .line 96
    add-int/2addr v0, v6

    .line 97
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/join/mgps/Util/i1;->a([B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/16 v5, 0x20

    .line 116
    .line 117
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-class v1, Lcom/join/mgps/dto/RecoverFileJson;

    .line 132
    .line 133
    invoke-virtual {v0, v8, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lcom/join/mgps/dto/RecoverFileJson;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecoverFileJson;->getUserID()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v3, "0"

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    move-object v0, p0

    .line 153
    move-object v1, p1

    .line 154
    move-object v5, p3

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/MyArchiveFragment;->I0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecoverFileJson;->getUserID()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const/4 v1, 0x1

    .line 180
    if-eqz v0, :cond_1

    .line 181
    .line 182
    invoke-interface {p3, v1, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_1
    if-eqz p2, :cond_2

    .line 187
    .line 188
    invoke-interface {p3, v1, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_2
    const-string p1, "\u8bf7\u52ff\u5206\u4eab\u4ed6\u4eba\u539f\u521b\u5b58\u6863"

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_3
    const-string p1, "\u5b58\u6863\u4e0d\u5408\u6cd5"

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_4
    move-object v0, p0

    .line 205
    move-object v1, p1

    .line 206
    move-object v5, p3

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/MyArchiveFragment;->I0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/io/InputStream;[BLjava/io/File;Lcom/join/mgps/fragment/MyArchiveFragment$v;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catch_0
    move-exception p1

    .line 212
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    const-string p1, "\u5199\u5165\u4fe1\u606f\u5f02\u5e38"

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :catch_1
    move-exception p1

    .line 222
    :try_start_4
    const-string p2, "\u6587\u4ef6\u6ca1\u627e\u5230"

    .line 223
    .line 224
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :catch_2
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    const-string p1, "\u5199\u5165\u4fe1\u606f\u5f02\u5e382"

    .line 236
    .line 237
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->E:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->z:Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->B:Lcom/join/mgps/fragment/MyArchiveFragment$ShowProgressDialogReceive;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->w:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->z:Lcom/join/mgps/fragment/MyArchiveFragment$JoinReceive;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->a()Lcom/join/mgps/dto/CloudListDataBean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->e()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x3

    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->e()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v2, v3, :cond_0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->e()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->a()Lcom/join/mgps/dto/CloudListDataBean;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->c0(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->M()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRequestProgress(JJZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytesWritten",
            "contentLength",
            "b",
            "filename"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const/4 p3, 0x4

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/fragment/MyArchiveFragment;->l0(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "/"

    .line 52
    .line 53
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p3, p4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, "K"

    .line 64
    .line 65
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p6

    .line 72
    iput-object p6, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->X:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->V:J

    .line 79
    .line 80
    sub-long v2, v0, v2

    .line 81
    .line 82
    const-wide/16 v4, 0x3e8

    .line 83
    .line 84
    cmp-long p6, v2, v4

    .line 85
    .line 86
    if-lez p6, :cond_3

    .line 87
    .line 88
    iget-wide v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->T:J

    .line 89
    .line 90
    sub-long v6, p1, v6

    .line 91
    .line 92
    mul-long v6, v6, v4

    .line 93
    .line 94
    div-long/2addr v6, v2

    .line 95
    iput-wide v6, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->U:J

    .line 96
    .line 97
    iput-wide v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->V:J

    .line 98
    .line 99
    iput-wide p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->T:J

    .line 100
    .line 101
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iput-wide v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->S:J

    .line 106
    .line 107
    iget-object p6, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 108
    .line 109
    if-eqz p6, :cond_4

    .line 110
    .line 111
    invoke-virtual {p6}, Landroid/app/Dialog;->isShowing()Z

    .line 112
    .line 113
    .line 114
    move-result p6

    .line 115
    if-eqz p6, :cond_4

    .line 116
    .line 117
    const-wide/16 v0, 0x64

    .line 118
    .line 119
    mul-long p1, p1, v0

    .line 120
    .line 121
    div-long/2addr p1, p3

    .line 122
    long-to-int p2, p1

    .line 123
    iput p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->W:I

    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->X:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->B0(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    if-eqz p5, :cond_5

    .line 131
    .line 132
    const-wide/16 p1, 0x0

    .line 133
    .line 134
    iput-wide p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->T:J

    .line 135
    .line 136
    iput-wide p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->S:J

    .line 137
    .line 138
    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->c0(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->f:Landroid/widget/Button;

    .line 27
    .line 28
    const-string v1, "\u4e0b\u8f7d"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->f:Landroid/widget/Button;

    .line 35
    .line 36
    const-string v1, "\u5907\u4efd"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->c0(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public onUploadFailed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method p0(Ljava/util/List;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "dataBeans",
            "isBackup",
            "recoderCheckInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;Z",
            "Lcom/join/mgps/fragment/MyArchiveFragment$v;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/fragment/MyArchiveFragment;->o0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    invoke-interface {p3, v3, v1}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput v3, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->N:I

    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge v3, v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 40
    .line 41
    new-instance v4, Lcom/join/mgps/fragment/MyArchiveFragment$f;

    .line 42
    .line 43
    invoke-direct {v4, p0, p3}, Lcom/join/mgps/fragment/MyArchiveFragment$f;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p2, v4}, Lcom/join/mgps/fragment/MyArchiveFragment;->o0(Lcom/join/mgps/dto/CloudListDataBean;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->N:I

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p2, p1, :cond_3

    .line 59
    .line 60
    invoke-interface {p3, v2, v1}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method q0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "\u5206\u4eab\u5931\u8d25"

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->u0(Z)V

    .line 8
    .line 9
    .line 10
    iget v4, v1, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const-string v6, ""

    .line 14
    .line 15
    if-ne v4, v0, :cond_0

    .line 16
    .line 17
    :try_start_1
    new-array v4, v5, [Ljava/lang/String;

    .line 18
    .line 19
    aput-object v6, v4, v3

    .line 20
    .line 21
    aput-object v6, v4, v0

    .line 22
    .line 23
    :goto_0
    move-object v8, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-array v4, v5, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    aput-object v5, v4, v3

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoverFilePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    aput-object v5, v4, v0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    new-instance v14, Lcom/join/mgps/fragment/MyArchiveFragment$l;

    .line 48
    .line 49
    invoke-direct {v14, v1}, Lcom/join/mgps/fragment/MyArchiveFragment$l;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iget-object v11, v1, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    iget v0, v1, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 102
    .line 103
    move-object/from16 v15, p2

    .line 104
    .line 105
    move/from16 v16, v0

    .line 106
    .line 107
    invoke-virtual/range {v7 .. v16}, Lcom/join/android/app/common/http/h;->d([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;Ljava/lang/String;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 116
    .line 117
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const-class v5, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 122
    .line 123
    invoke-virtual {v4, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/join/mgps/dto/CLoudUploadMain;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getCode()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const/16 v5, 0x258

    .line 134
    .line 135
    if-ne v4, v5, :cond_2

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/MyArchiveFragment;->u0(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getData_info()Lcom/join/mgps/dto/CloudUploadDatainfo;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudUploadDatainfo;->getMsg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_2
    const-string v4, "701"

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_3

    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->y0()V

    .line 165
    .line 166
    .line 167
    const-string v0, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CLoudUploadMain;->getMsg()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/MyArchiveFragment;->u0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/MyArchiveFragment;->u0(Z)V

    .line 196
    .line 197
    .line 198
    :goto_3
    return-void
.end method

.method s0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->w0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Lcom/join/mgps/fragment/MyArchiveFragment$i;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$i;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->p0(Ljava/util/List;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :cond_2
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txt"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method u0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->G:Lcom/join/mgps/dialog/f1;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->G:Lcom/join/mgps/dialog/f1;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->i0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->h0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->E:Z

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->C:Lcom/join/mgps/fragment/MyArchiveFragment$u;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public v0(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public w(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\u5df2\u6709\u5907\u4efd\u8fdb\u884c\u4e2d"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->F:Lcom/join/mgps/dialog/x;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/fragment/MyArchiveFragment$b;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$b;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v0, v1, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->p0(Ljava/util/List;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method w0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/MyArchiveFragment;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "31"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "_v2"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "\u6b64\u7248\u672c\u5b58\u6863\u4e0d\u80fd\u5206\u4eab"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->s:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-long v2, v2

    .line 79
    cmp-long v4, v0, v2

    .line 80
    .line 81
    if-gez v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "\u94dc\u677f\u4f59\u989d\u4e0d\u8db3"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    new-instance v0, Lcom/join/mgps/dialog/a0;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const v2, 0x7f13017f

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/a0;-><init>(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "\u53d1\u5e03\u9700\u8981\u5148\u6263\u9664\u60a8"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "\u94dc\u677f\u4fdd\u8bc1\u91d1\uff0c\u4ed6\u4eba\u4e0b\u8f7d\u6240\u652f\u4ed8\u94dc\u677f\u5c06\u5b8c\u5168\u5f52\u4f60\u6240\u6709\u3002"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, "\u786e\u5b9a"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "\u53d6\u6d88"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->c(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$h;

    .line 158
    .line 159
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$h;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a0;->f(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$g;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$g;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/a0;->b(Lcom/join/mgps/dialog/a0$c;)Lcom/join/mgps/dialog/a0;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, "\u94dc\u677f"

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/a0;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/a0;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public x(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/activity/DocumentManageActivity;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->isFromEMU()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method x0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment;->E0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/w;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f13017f

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "\u5907\u4efd\u987b\u77e5"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "\u4e0a\u4f20\u540e\uff0c\u5c06\u4ee5\u672c\u5730\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u4e91\u7aef\u540c\u540d\u5b58\u6863\u3002"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "\u786e\u5b9a"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "\u53d6\u6d88"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/join/mgps/fragment/MyArchiveFragment$e;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$e;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$d;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$d;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Lcom/join/mgps/fragment/MyArchiveFragment$c;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/MyArchiveFragment$c;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->h(Z)Lcom/join/mgps/dialog/w;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method z0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordRoms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->k:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->i:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->k:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v1, "\u8bf7\u5148\u542f\u52a8\u6e38\u620f\u4fdd\u5b58\u5b58\u6863"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->k:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v1, "\u8bf7\u5148\u4ece\u672c\u5730\u5907\u4efd\u5b58\u6863"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    return-void
.end method
