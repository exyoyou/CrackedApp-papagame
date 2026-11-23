.class public final Lcom/xinzhu/overmind/server/user/MindUserHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/user/MindUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:I = 0x186a0

.field public static final d:I = -0x1

.field public static final e:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final f:I = -0x2

.field public static final g:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final h:I = -0x3

.field public static final i:I = -0x4

.field public static final j:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final k:I = -0x2710

.field public static final l:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:I = 0x0

.field public static final o:I = 0x0

.field public static final p:Lcom/xinzhu/overmind/server/user/MindUserHandle;

.field public static final q:Z = true

.field public static final r:I = -0x1

.field public static final s:I = 0x0

.field public static final t:I = 0x2710

.field public static final u:I = 0x4e1f

.field public static final v:I = 0xc350

.field public static final w:I = 0x4e20


# instance fields
.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->e:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->g:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 18
    .line 19
    const/4 v1, -0x3

    .line 20
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->j:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->m:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 39
    .line 40
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle$a;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle$a;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    return-void
.end method

.method public static B(II)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x3e8

    .line 15
    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v0

    .line 22
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eq p0, v1, :cond_4

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-ne p1, p0, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v2, 0x0

    .line 36
    :cond_4
    :goto_1
    return v2
.end method

.method public static C(II)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static E()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static F(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :goto_0
    return-object p0
.end method

.method public static G(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "all"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v0, "current"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    const-string v0, "cur"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Bad user number: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    :goto_0
    const/4 p0, -0x2

    .line 57
    :goto_1
    return p0
.end method

.method public static H(Landroid/os/Parcel;)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, -0x2710

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public static J(Lcom/xinzhu/overmind/server/user/MindUserHandle;Landroid/os/Parcel;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, -0x2710

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    const v0, 0x186a0

    .line 2
    .line 3
    .line 4
    rem-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static b(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->c(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static c(II)I
    .locals 2

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x4e1f

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p1, v0

    .line 10
    add-int/lit16 p1, p1, 0x4e20

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public static d()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static f()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static m(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->n(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static n(II)I
    .locals 1

    .line 1
    const/16 p0, 0x2710

    if-lt p1, p0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    const p0, 0xc350

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static t(II)I
    .locals 1

    .line 1
    const v0, 0x186a0

    .line 2
    .line 3
    .line 4
    mul-int p0, p0, v0

    .line 5
    .line 6
    rem-int/2addr p1, v0

    .line 7
    add-int/2addr p0, p1

    .line 8
    return p0
.end method

.method public static u(I)I
    .locals 1

    .line 1
    const/16 v0, 0x270d

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static w(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->F(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static x(I)I
    .locals 1

    .line 1
    const v0, 0x186a0

    .line 2
    .line 3
    .line 4
    div-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static y(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/16 v1, 0x2710

    .line 9
    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x4e1f

    .line 13
    .line 14
    if-gt p0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    return v0
.end method

.method public static z(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/16 v1, 0x2710

    .line 9
    .line 10
    if-ge p0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :cond_0
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->m:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->p:Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public I()Landroid/os/UserHandle;
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/x;->c(I)Lcom/xinzhu/haunted/android/os/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/xinzhu/haunted/android/os/x;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/os/UserHandle;

    .line 10
    .line 11
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    check-cast p1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 5
    .line 6
    iget v1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 7
    .line 8
    iget p1, p1, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "UserHandle{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "}"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/xinzhu/overmind/server/user/MindUserHandle;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
