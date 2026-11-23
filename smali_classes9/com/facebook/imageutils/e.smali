.class public Lcom/facebook/imageutils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I = 0xff

.field public static final b:I = 0x0

.field public static final c:I = 0xd8

.field public static final d:I = 0x1

.field public static final e:I = 0xd9

.field public static final f:I = 0xda

.field public static final g:I = 0xe1

.field public static final h:I = 0xc0

.field public static final i:I = 0xd0

.field public static final j:I = 0xd7

.field public static final k:I = 0x45786966


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/imageutils/g;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageutils/e;->e(Ljava/io/InputStream;)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/imageutils/g;->d(Ljava/io/InputStream;I)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0
.end method

.method public static c([B)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpeg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/facebook/imageutils/e;->b(Ljava/io/InputStream;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static d(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static e(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xe1

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/facebook/imageutils/e;->f(Ljava/io/InputStream;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v2, v0

    .line 16
    const/4 v3, 0x6

    .line 17
    if-le v2, v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {p0, v3, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    add-int/lit8 v2, v2, -0x4

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/lit8 v2, v2, -0x2

    .line 31
    .line 32
    const v0, 0x45786966

    .line 33
    .line 34
    .line 35
    if-ne v3, v0, :cond_0

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    return v1
.end method

.method public static f(Ljava/io/InputStream;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "markerToFind"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0xff

    .line 11
    .line 12
    if-ne v2, v3, :cond_6

    .line 13
    .line 14
    const/16 v2, 0xff

    .line 15
    .line 16
    :goto_1
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/16 v3, 0xc0

    .line 24
    .line 25
    if-ne p1, v3, :cond_2

    .line 26
    .line 27
    invoke-static {v2}, Lcom/facebook/imageutils/e;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    if-ne v2, p1, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    const/16 v3, 0xd8

    .line 38
    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    if-ne v2, v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/16 v0, 0xd9

    .line 45
    .line 46
    if-eq v2, v0, :cond_6

    .line 47
    .line 48
    const/16 v0, 0xda

    .line 49
    .line 50
    if-ne v2, v0, :cond_5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    const/4 v0, 0x2

    .line 54
    invoke-static {p0, v0, v1}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;IZ)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, v0

    .line 59
    int-to-long v0, v1

    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    :goto_2
    return v1
.end method
