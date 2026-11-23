.class Lcom/papa/gsyvideoplayer/utils/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/g;->m(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/papa/gsyvideoplayer/utils/g;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/g;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->b:Ljava/io/File;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/g;->a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->b(Lcom/papa/gsyvideoplayer/utils/g;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->c(Lcom/papa/gsyvideoplayer/utils/g;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->d(Lcom/papa/gsyvideoplayer/utils/g;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->e(Lcom/papa/gsyvideoplayer/utils/g;)Lv7/c;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual/range {v2 .. v8}, Lcom/papa/gsyvideoplayer/utils/g;->j(Ljava/io/File;Ljava/util/List;IIILv7/c;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g$a;->c:Lcom/papa/gsyvideoplayer/utils/g;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/g;->e(Lcom/papa/gsyvideoplayer/utils/g;)Lv7/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-interface {v0, v1, v2}, Lv7/c;->a(ZLjava/io/File;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
