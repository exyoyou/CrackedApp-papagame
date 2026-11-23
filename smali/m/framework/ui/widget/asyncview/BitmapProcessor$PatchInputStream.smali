.class Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatchInputStream"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :goto_0
    cmp-long v4, v2, p1

    .line 5
    .line 6
    if-ltz v4, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    .line 10
    .line 11
    sub-long v5, p1, v2

    .line 12
    .line 13
    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    cmp-long v6, v4, v0

    .line 18
    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    :goto_1
    return-wide v2

    .line 22
    :cond_1
    add-long/2addr v2, v4

    .line 23
    goto :goto_0
.end method
