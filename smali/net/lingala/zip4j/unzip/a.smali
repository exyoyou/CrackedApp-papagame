.class Lnet/lingala/zip4j/unzip/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic b:Lnet/lingala/zip4j/unzip/c;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Lpc/k;

.field private final synthetic e:Lqc/a;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/c;Ljava/lang/String;Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/a;->b:Lnet/lingala/zip4j/unzip/c;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/lingala/zip4j/unzip/a;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/lingala/zip4j/unzip/a;->d:Lpc/k;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/lingala/zip4j/unzip/a;->e:Lqc/a;

    .line 11
    .line 12
    iput-object p6, p0, Lnet/lingala/zip4j/unzip/a;->f:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/a;->b:Lnet/lingala/zip4j/unzip/c;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/a;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/a;->d:Lpc/k;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/a;->e:Lqc/a;

    .line 8
    .line 9
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/a;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/unzip/c;->a(Lnet/lingala/zip4j/unzip/c;Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/a;->e:Lqc/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lqc/a;->c()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method
