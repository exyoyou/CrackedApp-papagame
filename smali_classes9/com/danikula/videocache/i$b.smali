.class public final Lcom/danikula/videocache/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final f:J = 0x20000000L


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/danikula/videocache/file/c;

.field private c:Lcom/danikula/videocache/file/a;

.field private d:Lcom/danikula/videocache/sourcestorage/c;

.field private e:Ly2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/danikula/videocache/sourcestorage/d;->b(Landroid/content/Context;)Lcom/danikula/videocache/sourcestorage/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/danikula/videocache/i$b;->d:Lcom/danikula/videocache/sourcestorage/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/danikula/videocache/s;->c(Landroid/content/Context;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    .line 15
    .line 16
    new-instance p1, Lcom/danikula/videocache/file/h;

    .line 17
    .line 18
    const-wide/32 v0, 0x20000000

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcom/danikula/videocache/file/h;-><init>(J)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 25
    .line 26
    new-instance p1, Lcom/danikula/videocache/file/f;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/danikula/videocache/file/f;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    .line 32
    .line 33
    new-instance p1, Ly2/a;

    .line 34
    .line 35
    invoke-direct {p1}, Ly2/a;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->e:Ly2/b;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic a(Lcom/danikula/videocache/i$b;)Lcom/danikula/videocache/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/i$b;->c()Lcom/danikula/videocache/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c()Lcom/danikula/videocache/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/danikula/videocache/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/danikula/videocache/i$b;->d:Lcom/danikula/videocache/sourcestorage/c;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/danikula/videocache/i$b;->e:Ly2/b;

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/danikula/videocache/e;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/c;Lcom/danikula/videocache/file/a;Lcom/danikula/videocache/sourcestorage/c;Ly2/b;)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method


# virtual methods
.method public b()Lcom/danikula/videocache/i;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/i$b;->c()Lcom/danikula/videocache/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/danikula/videocache/i;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/i;-><init>(Lcom/danikula/videocache/e;Lcom/danikula/videocache/i$a;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public d(Ljava/io/File;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/io/File;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->a:Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public e(Lcom/danikula/videocache/file/a;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/danikula/videocache/file/a;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public f(Lcom/danikula/videocache/file/c;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/danikula/videocache/file/c;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->b:Lcom/danikula/videocache/file/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public g(Ly2/b;)Lcom/danikula/videocache/i$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ly2/b;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/danikula/videocache/i$b;->e:Ly2/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public h(I)Lcom/danikula/videocache/i$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/file/g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/danikula/videocache/file/g;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 7
    .line 8
    return-object p0
.end method

.method public i(J)Lcom/danikula/videocache/i$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/file/h;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/danikula/videocache/file/h;-><init>(J)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/danikula/videocache/i$b;->c:Lcom/danikula/videocache/file/a;

    .line 7
    .line 8
    return-object p0
.end method
