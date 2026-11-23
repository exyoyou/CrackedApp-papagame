.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/aggmoread/sdk/z/c/a/a/c/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/k;)Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->e:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/i;
    .locals 2

    .line 3
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/i$a;)V

    iget v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->a:I

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;I)I

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->b:Z

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Z)Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->e:Lcom/aggmoread/sdk/z/c/a/a/c/k;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Lcom/aggmoread/sdk/z/c/a/a/c/k;)Lcom/aggmoread/sdk/z/c/a/a/c/k;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/i$b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/i;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/i;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
