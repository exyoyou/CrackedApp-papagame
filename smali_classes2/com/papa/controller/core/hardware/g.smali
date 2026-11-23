.class public Lcom/papa/controller/core/hardware/g;
.super Lcom/papa/controller/core/hardware/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/hardware/a;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    return-void
.end method


# virtual methods
.method public k(II)[B
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    aput-byte v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    int-to-byte p1, p1

    .line 10
    aput-byte p1, v0, v1

    .line 11
    .line 12
    int-to-byte p1, p2

    .line 13
    aput-byte p1, v0, v2

    .line 14
    .line 15
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
