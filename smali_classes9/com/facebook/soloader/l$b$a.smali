.class final Lcom/facebook/soloader/l$b$a;
.super Lcom/facebook/soloader/w$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/facebook/soloader/l$b;


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/l$b$a;->c:Lcom/facebook/soloader/l$b;

    invoke-direct {p0}, Lcom/facebook/soloader/w$e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/soloader/l$b;Lcom/facebook/soloader/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/soloader/l$b$a;-><init>(Lcom/facebook/soloader/l$b;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/soloader/l$b$a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/soloader/l$b$a;->c:Lcom/facebook/soloader/l$b;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/facebook/soloader/l$b;->e(Lcom/facebook/soloader/l$b;)[Lcom/facebook/soloader/l$c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public d()Lcom/facebook/soloader/w$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/l$b$a;->c:Lcom/facebook/soloader/l$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/soloader/l$b;->e(Lcom/facebook/soloader/l$b;)[Lcom/facebook/soloader/l$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/facebook/soloader/l$b$a;->b:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/facebook/soloader/l$b$a;->b:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    new-instance v1, Ljava/io/FileInputStream;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/facebook/soloader/l$c;->d:Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/w$d;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/w$d;-><init>(Lcom/facebook/soloader/w$b;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
