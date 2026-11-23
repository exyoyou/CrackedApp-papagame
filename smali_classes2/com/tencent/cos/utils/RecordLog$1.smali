.class Lcom/tencent/cos/utils/RecordLog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/utils/RecordLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/utils/RecordLog;


# direct methods
.method constructor <init>(Lcom/tencent/cos/utils/RecordLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/tencent/cos/utils/RecordLog;->access$000(Lcom/tencent/cos/utils/RecordLog;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ".log"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog$1;->this$0:Lcom/tencent/cos/utils/RecordLog;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/tencent/cos/utils/RecordLog;->getIndexFromFile(Ljava/io/File;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, -0x1

    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    :cond_1
    return v1
.end method
