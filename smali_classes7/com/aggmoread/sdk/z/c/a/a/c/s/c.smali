.class public Lcom/aggmoread/sdk/z/c/a/a/c/s/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/aggmoread/sdk/z/c/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    const-string v1, "default-u"

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->f:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->b:I

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->e:Lcom/aggmoread/sdk/z/c/a/a/c/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/aggmoread/sdk/z/c/a/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->e:Lcom/aggmoread/sdk/z/c/a/a/c/b;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->c:Ljava/lang/String;

    return-object v0
.end method
