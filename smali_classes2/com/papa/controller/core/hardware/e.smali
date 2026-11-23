.class public Lcom/papa/controller/core/hardware/e;
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
.method public k(I)[B
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    aput-byte v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    int-to-byte p1, p1

    .line 11
    aput-byte p1, v0, v1

    .line 12
    .line 13
    invoke-super {p0, v0}, Lcom/papa/controller/core/hardware/a;->b([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
