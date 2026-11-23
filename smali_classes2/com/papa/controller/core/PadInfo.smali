.class public Lcom/papa/controller/core/PadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A:B = 0x0t

.field public static final B:B = 0x1t

.field public static final C:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/papa/controller/core/PadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:B = -0x1t


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:B

.field protected q:B

.field protected r:I

.field protected s:I

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Ljava/lang/String;

.field protected y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/controller/core/PadInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/controller/core/PadInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa/controller/core/PadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 16
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 17
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 18
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 20
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 21
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 22
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 23
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 24
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 71
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 72
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 73
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 75
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 76
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 77
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 78
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 79
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    const/4 v1, -0x1

    .line 41
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 42
    iput-byte v1, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 43
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 45
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 46
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 47
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 48
    iput-boolean v1, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 49
    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    return-void
.end method

.method private D(Lcom/papa/controller/core/hardware/d;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa/controller/core/hardware/d;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    new-array v2, v1, [I

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->r()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aput v4, v3, v5

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->E()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    aput v6, v3, v4

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->s()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    aput v6, v3, v4

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->x()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    aput v6, v3, v4

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->A()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    aput v6, v3, v4

    .line 49
    .line 50
    const/4 v4, 0x5

    .line 51
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->k()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    aput v6, v3, v4

    .line 56
    .line 57
    const/4 v4, 0x6

    .line 58
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->q()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    aput v6, v3, v4

    .line 63
    .line 64
    const/4 v4, 0x7

    .line 65
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->F()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    aput v6, v3, v4

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->G()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/16 v6, 0x8

    .line 76
    .line 77
    aput v4, v3, v6

    .line 78
    .line 79
    const/16 v4, 0x9

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->v()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    aput v7, v3, v4

    .line 86
    .line 87
    const/16 v4, 0xa

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->y()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    aput v7, v3, v4

    .line 94
    .line 95
    const/16 v4, 0xb

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->w()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    aput v7, v3, v4

    .line 102
    .line 103
    const/16 v4, 0xc

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->z()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    aput v7, v3, v4

    .line 110
    .line 111
    const/16 v4, 0xd

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->C()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    aput v7, v3, v4

    .line 118
    .line 119
    const/16 v4, 0xe

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->D()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    aput v7, v3, v4

    .line 126
    .line 127
    const/16 v4, 0xf

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->B()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    aput v7, v3, v4

    .line 134
    .line 135
    const/16 v4, 0x10

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->t()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    aput v7, v3, v4

    .line 142
    .line 143
    const/16 v4, 0x11

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->u()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    aput v7, v3, v4

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->l()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    shl-int/2addr v4, v6

    .line 156
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->m()I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    or-int/2addr v4, v7

    .line 161
    const/16 v7, 0x12

    .line 162
    .line 163
    aput v4, v3, v7

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->n()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    shl-int/2addr v4, v6

    .line 170
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->o()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    or-int/2addr p1, v4

    .line 175
    const/16 v4, 0x13

    .line 176
    .line 177
    aput p1, v3, v4

    .line 178
    .line 179
    iget-object p1, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_0

    .line 186
    .line 187
    const/4 p1, 0x0

    .line 188
    :goto_0
    if-ge p1, v1, :cond_0

    .line 189
    .line 190
    aget v4, v2, p1

    .line 191
    .line 192
    iget-object v6, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    const/4 v7, 0x0

    .line 199
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    add-int/lit8 p1, p1, 0x1

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_0
    :goto_1
    if-ge v5, v1, :cond_1

    .line 210
    .line 211
    aget p1, v2, v5

    .line 212
    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    aget v4, v3, v5

    .line 218
    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_1
    return-object v0

    .line 230
    nop

    .line 231
    :array_0
    .array-data 4
        0x6d
        0x13
        0x14
        0x15
        0x16
        0x60
        0x61
        0x63
        0x64
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0xc6
        0xc7
        0xc8
        0xc9
    .end array-data
.end method

.method private G(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->m()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 v0, v0, -0x80

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    mul-float v0, v0, v1

    .line 15
    .line 16
    const/high16 v2, 0x43000000    # 128.0f

    .line 17
    .line 18
    div-float v9, v0, v2

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x80

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    mul-float p1, p1, v1

    .line 24
    .line 25
    div-float v10, p1, v2

    .line 26
    .line 27
    new-instance p1, Lcom/papa/controller/core/PadMotionEvent;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget v6, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 34
    .line 35
    iget-object v7, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v8, 0xc8

    .line 38
    .line 39
    move-object v3, p1

    .line 40
    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    return-object p1
.end method

.method private H(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/hardware/d;->o()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 v0, v0, -0x80

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    mul-float v0, v0, v1

    .line 15
    .line 16
    const/high16 v2, 0x43000000    # 128.0f

    .line 17
    .line 18
    div-float v9, v0, v2

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x80

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    mul-float p1, p1, v1

    .line 24
    .line 25
    div-float v10, p1, v2

    .line 26
    .line 27
    new-instance p1, Lcom/papa/controller/core/PadMotionEvent;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget v6, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 34
    .line 35
    iget-object v7, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v8, 0xc9

    .line 38
    .line 39
    move-object v3, p1

    .line 40
    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 2
    .line 3
    return v0
.end method

.method public I()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 2
    .line 3
    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public W(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    .locals 23

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
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->D(Lcom/papa/controller/core/hardware/d;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    new-array v5, v4, [I

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x1

    .line 23
    if-ge v7, v4, :cond_7

    .line 24
    .line 25
    aget v15, v5, v7

    .line 26
    .line 27
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_6

    .line 36
    .line 37
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    if-eqz v11, :cond_6

    .line 48
    .line 49
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    check-cast v11, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    int-to-float v11, v11

    .line 64
    mul-float v19, v11, v8

    .line 65
    .line 66
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    check-cast v11, Ljava/lang/Float;

    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    cmpl-float v11, v11, v19

    .line 83
    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    const/4 v11, 0x0

    .line 89
    :goto_1
    if-nez v11, :cond_1

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_1
    cmpl-float v8, v19, v8

    .line 93
    .line 94
    if-nez v8, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v10, 0x0

    .line 98
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v12

    .line 102
    iget v14, v0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 103
    .line 104
    xor-int/lit8 v17, v10, 0x1

    .line 105
    .line 106
    if-eqz v10, :cond_3

    .line 107
    .line 108
    move/from16 v18, v19

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    const/16 v18, 0x0

    .line 112
    .line 113
    :goto_3
    new-instance v8, Lcom/papa/controller/core/PadKeyEvent;

    .line 114
    .line 115
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v16, v11

    .line 118
    .line 119
    move-object v11, v8

    .line 120
    move/from16 v20, v15

    .line 121
    .line 122
    move-object/from16 v15, v16

    .line 123
    .line 124
    move/from16 v16, v20

    .line 125
    .line 126
    invoke-direct/range {v11 .. v18}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 127
    .line 128
    .line 129
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    move/from16 v9, v19

    .line 138
    .line 139
    :cond_4
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    if-eqz v10, :cond_5

    .line 147
    .line 148
    move/from16 v9, v20

    .line 149
    .line 150
    invoke-interface {v1, v9, v8}, Lcom/papa/controller/core/c;->onKeyDown(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    move/from16 v9, v20

    .line 155
    .line 156
    invoke-interface {v1, v9, v8}, Lcom/papa/controller/core/c;->onKeyUp(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_7
    const/16 v4, 0x8

    .line 164
    .line 165
    new-array v5, v4, [I

    .line 166
    .line 167
    fill-array-data v5, :array_1

    .line 168
    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    :goto_5
    if-ge v7, v4, :cond_d

    .line 172
    .line 173
    aget v15, v5, v7

    .line 174
    .line 175
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_c

    .line 184
    .line 185
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_c

    .line 196
    .line 197
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    check-cast v11, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    int-to-float v11, v11

    .line 212
    mul-float v11, v11, v8

    .line 213
    .line 214
    const/high16 v12, 0x437f0000    # 255.0f

    .line 215
    .line 216
    div-float v14, v11, v12

    .line 217
    .line 218
    iget-object v11, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Ljava/lang/Float;

    .line 229
    .line 230
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    cmpl-float v11, v11, v14

    .line 235
    .line 236
    if-eqz v11, :cond_8

    .line 237
    .line 238
    const/4 v11, 0x1

    .line 239
    goto :goto_6

    .line 240
    :cond_8
    const/4 v11, 0x0

    .line 241
    :goto_6
    if-nez v11, :cond_9

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_9
    cmpl-float v11, v14, v9

    .line 245
    .line 246
    if-lez v11, :cond_a

    .line 247
    .line 248
    const/16 v19, 0x1

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_a
    const/16 v19, 0x0

    .line 252
    .line 253
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    .line 255
    .line 256
    move-result-wide v12

    .line 257
    iget v11, v0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 258
    .line 259
    xor-int/lit8 v17, v19, 0x1

    .line 260
    .line 261
    new-instance v6, Lcom/papa/controller/core/PadKeyEvent;

    .line 262
    .line 263
    iget-object v8, v0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 264
    .line 265
    move/from16 v16, v11

    .line 266
    .line 267
    move-object v11, v6

    .line 268
    move/from16 v21, v14

    .line 269
    .line 270
    move/from16 v14, v16

    .line 271
    .line 272
    move/from16 v22, v15

    .line 273
    .line 274
    move-object v15, v8

    .line 275
    move/from16 v16, v22

    .line 276
    .line 277
    move/from16 v18, v21

    .line 278
    .line 279
    invoke-direct/range {v11 .. v18}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 280
    .line 281
    .line 282
    iget-object v8, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 283
    .line 284
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    if-eqz v19, :cond_b

    .line 289
    .line 290
    move/from16 v14, v21

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_b
    const/4 v14, 0x0

    .line 294
    :goto_8
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move/from16 v11, v21

    .line 302
    .line 303
    move/from16 v8, v22

    .line 304
    .line 305
    invoke-interface {v1, v8, v11, v6}, Lcom/papa/controller/core/c;->onKeyPressure(IFLcom/papa/controller/core/PadKeyEvent;)V

    .line 306
    .line 307
    .line 308
    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 309
    .line 310
    const/high16 v8, 0x3f800000    # 1.0f

    .line 311
    .line 312
    goto/16 :goto_5

    .line 313
    .line 314
    :cond_d
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->G(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    if-eqz v3, :cond_f

    .line 319
    .line 320
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->l()I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    shl-int/2addr v5, v4

    .line 325
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->m()I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    or-int/2addr v5, v6

    .line 330
    int-to-float v5, v5

    .line 331
    iget-object v6, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, Ljava/lang/Float;

    .line 346
    .line 347
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    cmpl-float v6, v6, v5

    .line 352
    .line 353
    if-eqz v6, :cond_e

    .line 354
    .line 355
    const/4 v6, 0x1

    .line 356
    goto :goto_a

    .line 357
    :cond_e
    const/4 v6, 0x0

    .line 358
    :goto_a
    if-eqz v6, :cond_f

    .line 359
    .line 360
    iget-object v6, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->y()F

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->A()F

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    invoke-interface {v1, v5, v6, v3}, Lcom/papa/controller/core/c;->onLeftStick(FFLcom/papa/controller/core/PadMotionEvent;)V

    .line 386
    .line 387
    .line 388
    :cond_f
    invoke-direct {v0, v2}, Lcom/papa/controller/core/PadInfo;->H(Lcom/papa/controller/core/hardware/d;)Lcom/papa/controller/core/PadMotionEvent;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    if-eqz v3, :cond_11

    .line 393
    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->n()I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    shl-int/lit8 v4, v5, 0x8

    .line 399
    .line 400
    invoke-virtual/range {p2 .. p2}, Lcom/papa/controller/core/hardware/d;->o()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    or-int/2addr v2, v4

    .line 405
    int-to-float v2, v2

    .line 406
    iget-object v4, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 407
    .line 408
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    check-cast v4, Ljava/lang/Float;

    .line 421
    .line 422
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    cmpl-float v4, v4, v2

    .line 427
    .line 428
    if-eqz v4, :cond_10

    .line 429
    .line 430
    const/4 v6, 0x1

    .line 431
    goto :goto_b

    .line 432
    :cond_10
    const/4 v6, 0x0

    .line 433
    :goto_b
    if-eqz v6, :cond_11

    .line 434
    .line 435
    iget-object v4, v0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 436
    .line 437
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->y()F

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-virtual {v3}, Lcom/papa/controller/core/PadMotionEvent;->A()F

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    invoke-interface {v1, v2, v4, v3}, Lcom/papa/controller/core/c;->onRightStick(FFLcom/papa/controller/core/PadMotionEvent;)V

    .line 461
    .line 462
    .line 463
    :cond_11
    return-void

    .line 464
    nop

    .line 465
    :array_0
    .array-data 4
        0x6d
        0x13
        0x14
        0x15
        0x16
        0x6a
        0x6b
        0x6c
        0xc6
        0xc7
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_1
    .array-data 4
        0x60
        0x61
        0x63
        0x64
        0x66
        0x67
        0x68
        0x69
    .end array-data
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public b0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public c0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public d0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e0(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g0(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 2
    .line 3
    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h0(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 2
    .line 3
    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public n0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->h:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->i:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->j:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->k:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->l:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->m:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->n:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->o:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-byte p2, p0, Lcom/papa/controller/core/PadInfo;->p:B

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    .line 75
    .line 76
    iget-byte p2, p0, Lcom/papa/controller/core/PadInfo;->q:B

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/papa/controller/core/PadInfo;->r:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Lcom/papa/controller/core/PadInfo;->s:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->t:Z

    .line 92
    .line 93
    int-to-byte p2, p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    .line 96
    .line 97
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->u:Z

    .line 98
    .line 99
    int-to-byte p2, p2

    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    .line 102
    .line 103
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->v:Z

    .line 104
    .line 105
    int-to-byte p2, p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    .line 108
    .line 109
    iget-boolean p2, p0, Lcom/papa/controller/core/PadInfo;->w:Z

    .line 110
    .line 111
    int-to-byte p2, p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->x:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p0, Lcom/papa/controller/core/PadInfo;->y:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/PadInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
