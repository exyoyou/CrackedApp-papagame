.class public Lcom/coremedia/iso/boxes/j0;
.super Lcom/coremedia/iso/boxes/a;
.source "SourceFile"


# static fields
.field public static final s:Ljava/lang/String; = "nmhd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "nmhd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected g()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    return-wide v0
.end method
