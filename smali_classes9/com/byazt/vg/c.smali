.class public Lcom/byazt/vg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3dd,
        0x14
    }
.end annotation


# instance fields
.field public c:[Ljava/io/File;

.field public tt:I


# direct methods
.method public constructor <init>([Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vg/c;->c:[Ljava/io/File;

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/vg/c;->tt:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vg/c;->c:[Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vg/c;->tt:I

    .line 2
    .line 3
    return v0
.end method
