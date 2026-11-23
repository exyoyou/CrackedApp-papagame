.class public Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/FullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 24
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1
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
            "playUrl",
            "coverUrl",
            "playPosition",
            "isPlaying",
            "isPaused",
            "currentPosition"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    .line 31
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 34
    iput-boolean p4, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 35
    iput-boolean p5, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 36
    iput p6, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playUrl",
            "coverUrl",
            "mediaPlayer"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 13
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coverUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public D(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public E(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlayer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-void
.end method

.method public F(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paused"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public G(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public I(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VideoInfo{playUrl=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", coverUrl=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", mediaPlayer="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", playPosition="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", isPlaying="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", isPaused="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", currentPosition="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x7d

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 2
    .line 3
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
    iget-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
