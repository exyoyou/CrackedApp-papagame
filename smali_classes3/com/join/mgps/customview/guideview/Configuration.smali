.class Lcom/join/mgps/customview/guideview/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/customview/guideview/Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Landroid/view/View;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:I

.field t:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/guideview/Configuration$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/customview/guideview/Configuration$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/customview/guideview/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/Configuration;->b:Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->c:I

    .line 9
    .line 10
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->d:I

    .line 11
    .line 12
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->e:I

    .line 13
    .line 14
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->f:I

    .line 15
    .line 16
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->g:I

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->h:Z

    .line 19
    .line 20
    const/16 v2, 0xff

    .line 21
    .line 22
    iput v2, p0, Lcom/join/mgps/customview/guideview/Configuration;->i:I

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    iput v2, p0, Lcom/join/mgps/customview/guideview/Configuration;->j:I

    .line 26
    .line 27
    iput v2, p0, Lcom/join/mgps/customview/guideview/Configuration;->k:I

    .line 28
    .line 29
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->l:I

    .line 30
    .line 31
    iput v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->m:I

    .line 32
    .line 33
    const v3, 0x106000c

    .line 34
    .line 35
    .line 36
    iput v3, p0, Lcom/join/mgps/customview/guideview/Configuration;->n:I

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    iput-boolean v3, p0, Lcom/join/mgps/customview/guideview/Configuration;->o:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->p:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/join/mgps/customview/guideview/Configuration;->q:Z

    .line 44
    .line 45
    iput v2, p0, Lcom/join/mgps/customview/guideview/Configuration;->r:I

    .line 46
    .line 47
    iput v2, p0, Lcom/join/mgps/customview/guideview/Configuration;->s:I

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/customview/guideview/Configuration;->t:Landroid/graphics/Rect;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->i:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->j:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->k:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->n:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->l:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->c:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->d:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->e:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->f:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->g:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->m:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->o:Z

    .line 57
    .line 58
    int-to-byte p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    .line 61
    .line 62
    iget-boolean p2, p0, Lcom/join/mgps/customview/guideview/Configuration;->p:Z

    .line 63
    .line 64
    int-to-byte p2, p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
