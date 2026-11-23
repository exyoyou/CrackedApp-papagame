.class public Lcom/join/mgps/Util/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/u2$e;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "TCUploadHelper"

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/Util/u2$e;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/Util/u2$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/u2;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/Util/u2;->b:Lcom/join/mgps/Util/u2$e;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/join/mgps/Util/u2$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/u2$a;-><init>(Lcom/join/mgps/Util/u2;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/join/mgps/Util/u2;->c:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/u2;)Lcom/join/mgps/Util/u2$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/u2;->b:Lcom/join/mgps/Util/u2$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/u2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/u2;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/u2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/Util/u2;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "sig",
            "appid",
            "bucket",
            "directory"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/Util/u2$c;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/u2$c;-><init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/papa/sim/statistic/http/b;->W(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "sig",
            "appid",
            "bucket",
            "directory"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/u2;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/tencent/cos/COSClientConfig;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/tencent/cos/COSClientConfig;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/tencent/cos/COSConfig;->setEndPoint(Lcom/tencent/cos/common/COSEndPoint;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/tencent/cos/COSClient;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v0, p3, v1, v3}, Lcom/tencent/cos/COSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance p5, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    new-instance p5, Lcom/tencent/cos/model/PutObjectRequest;

    .line 56
    .line 57
    invoke-direct {p5}, Lcom/tencent/cos/model/PutObjectRequest;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p5, p4}, Lcom/tencent/cos/model/COSRequest;->setBucket(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p5, p3}, Lcom/tencent/cos/model/COSRequest;->setCosPath(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/PutObjectRequest;->setSrcPath(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p5, p2}, Lcom/tencent/cos/model/COSRequest;->setSign(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "0"

    .line 73
    .line 74
    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/PutObjectRequest;->setInsertOnly(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/join/mgps/Util/u2$b;

    .line 78
    .line 79
    invoke-direct {p1, p0, p3}, Lcom/join/mgps/Util/u2$b;-><init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p5, p1}, Lcom/tencent/cos/model/COSRequest;->setListener(Lcom/tencent/cos/task/listener/ITaskListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p5}, Lcom/tencent/cos/COSClient;->putObject(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/PutObjectResult;

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "uid",
            "token"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, ""

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v1, "uid"

    .line 24
    .line 25
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p2, "token"

    .line 29
    .line 30
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance p2, Lcom/join/mgps/Util/u2$d;

    .line 34
    .line 35
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/Util/u2$d;-><init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object p3, Lcom/join/mgps/rpc/h;->w:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, "/interface/getcossign"

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/u2;->e(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
