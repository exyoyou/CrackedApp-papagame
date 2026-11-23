.class Lnet/lingala/zip4j/util/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic b:Lnet/lingala/zip4j/util/c;

.field private final synthetic c:Lpc/o;

.field private final synthetic d:Ljava/io/File;

.field private final synthetic e:Lqc/a;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/util/c;Ljava/lang/String;Lpc/o;Ljava/io/File;Lqc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/util/b;->b:Lnet/lingala/zip4j/util/c;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/lingala/zip4j/util/b;->c:Lpc/o;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/lingala/zip4j/util/b;->d:Ljava/io/File;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/lingala/zip4j/util/b;->e:Lqc/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/b;->b:Lnet/lingala/zip4j/util/c;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/util/b;->c:Lpc/o;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/util/b;->d:Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/lingala/zip4j/util/b;->e:Lqc/a;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/util/c;->a(Lnet/lingala/zip4j/util/c;Lpc/o;Ljava/io/File;Lqc/a;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method
