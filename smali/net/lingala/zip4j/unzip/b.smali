.class Lnet/lingala/zip4j/unzip/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic b:Lnet/lingala/zip4j/unzip/c;

.field private final synthetic c:Lpc/h;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lpc/k;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lqc/a;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/c;Ljava/lang/String;Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/b;->b:Lnet/lingala/zip4j/unzip/c;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/lingala/zip4j/unzip/b;->c:Lpc/h;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/lingala/zip4j/unzip/b;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/lingala/zip4j/unzip/b;->e:Lpc/k;

    .line 11
    .line 12
    iput-object p6, p0, Lnet/lingala/zip4j/unzip/b;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lnet/lingala/zip4j/unzip/b;->g:Lqc/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/b;->b:Lnet/lingala/zip4j/unzip/c;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/b;->c:Lpc/h;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/b;->e:Lpc/k;

    .line 8
    .line 9
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/b;->f:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/b;->g:Lqc/a;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/c;->b(Lnet/lingala/zip4j/unzip/c;Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/b;->g:Lqc/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lqc/a;->c()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    return-void
.end method
