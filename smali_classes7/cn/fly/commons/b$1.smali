.class Lcn/fly/commons/b$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/fly/commons/b;


# direct methods
.method constructor <init>(Lcn/fly/commons/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/commons/b$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/commons/b$1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 5
    .line 6
    invoke-static {v1}, Lcn/fly/commons/b;->a(Lcn/fly/commons/b;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcn/fly/commons/b$1;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lcn/fly/commons/b$1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 18
    .line 19
    invoke-static {v1}, Lcn/fly/commons/b;->b(Lcn/fly/commons/b;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 24
    .line 25
    invoke-static {v2}, Lcn/fly/commons/b;->c(Lcn/fly/commons/b;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcn/fly/commons/b$1;->c:Lcn/fly/commons/b;

    .line 30
    .line 31
    invoke-static {v3}, Lcn/fly/commons/b;->a(Lcn/fly/commons/b;)Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Lcn/fly/commons/r;->a(Ljava/io/File;[BLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v1
.end method
