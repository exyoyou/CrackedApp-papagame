.class Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->U()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;)Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->b(I)Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:[Ljava/io/File;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method
