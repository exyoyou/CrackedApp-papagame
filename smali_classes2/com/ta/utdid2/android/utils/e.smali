.class public Lcom/ta/utdid2/android/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(I)[B
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    rem-int/lit16 v1, p0, 0x100

    .line 5
    .line 6
    int-to-byte v1, v1

    .line 7
    const/4 v2, 0x3

    .line 8
    aput-byte v1, v0, v2

    .line 9
    .line 10
    shr-int/lit8 p0, p0, 0x8

    .line 11
    .line 12
    rem-int/lit16 v1, p0, 0x100

    .line 13
    .line 14
    int-to-byte v1, v1

    .line 15
    const/4 v2, 0x2

    .line 16
    aput-byte v1, v0, v2

    .line 17
    .line 18
    shr-int/lit8 p0, p0, 0x8

    .line 19
    .line 20
    rem-int/lit16 v1, p0, 0x100

    .line 21
    .line 22
    int-to-byte v1, v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-byte v1, v0, v2

    .line 25
    .line 26
    shr-int/lit8 p0, p0, 0x8

    .line 27
    .line 28
    rem-int/lit16 p0, p0, 0x100

    .line 29
    .line 30
    int-to-byte p0, p0

    .line 31
    const/4 v1, 0x0

    .line 32
    aput-byte p0, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method public static b([BI)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    rem-int/lit16 v0, p1, 0x100

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    const/4 v1, 0x3

    .line 9
    aput-byte v0, p0, v1

    .line 10
    .line 11
    shr-int/lit8 p1, p1, 0x8

    .line 12
    .line 13
    rem-int/lit16 v0, p1, 0x100

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    const/4 v1, 0x2

    .line 17
    aput-byte v0, p0, v1

    .line 18
    .line 19
    shr-int/lit8 p1, p1, 0x8

    .line 20
    .line 21
    rem-int/lit16 v0, p1, 0x100

    .line 22
    .line 23
    int-to-byte v0, v0

    .line 24
    const/4 v1, 0x1

    .line 25
    aput-byte v0, p0, v1

    .line 26
    .line 27
    shr-int/lit8 p1, p1, 0x8

    .line 28
    .line 29
    rem-int/lit16 p1, p1, 0x100

    .line 30
    .line 31
    int-to-byte p1, p1

    .line 32
    const/4 v0, 0x0

    .line 33
    aput-byte p1, p0, v0

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method
