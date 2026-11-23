.class Lcom/papa91/arc/ext/Log$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/Log;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/papa91/arc/ext/Log;->closed:Z

    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "WF-LOG"

    .line 24
    .line 25
    const-string v2, "Log close: I/O"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method
