.class public final Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(La0/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lq/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lq/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lq/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lq/b;->d:Ljava/lang/String;

    iget-object v0, p1, La0/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lq/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lq/b;->b:Ljava/lang/String;

    iget-object p2, p1, La0/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lq/b;->c:Ljava/lang/String;

    iget-object p1, p1, La0/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lq/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lq/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lq/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lq/b;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->d:Ljava/lang/String;

    return-object v0
.end method
