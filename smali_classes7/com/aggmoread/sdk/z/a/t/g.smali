.class public Lcom/aggmoread/sdk/z/a/t/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/t/g$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/aggmoread/sdk/z/a/t/g$b;

.field private e:Lcom/aggmoread/sdk/z/a/j/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/g;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/aggmoread/sdk/z/a/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/g;)Lcom/aggmoread/sdk/z/a/t/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/g;->d:Lcom/aggmoread/sdk/z/a/t/g$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    const-string v0, "JuHeVideoPreloadTag"

    const-string v1, "cancel "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/g;->e:Lcom/aggmoread/sdk/z/a/j/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/j/n;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/g;->e:Lcom/aggmoread/sdk/z/a/j/n;

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/g$b;)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g;->d:Lcom/aggmoread/sdk/z/a/t/g$b;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/j/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/a/j/n$a;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/a/j/n$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/j/n$a;->c(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/j/n$a;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->b(Ljava/lang/String;)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->a(Z)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->b(I)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->a(I)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->a(Lcom/aggmoread/sdk/z/a/j/k;)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/a/t/g$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/t/g$a;-><init>(Lcom/aggmoread/sdk/z/a/t/g;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/j/n$a;->a(Lcom/aggmoread/sdk/z/a/j/i;)Lcom/aggmoread/sdk/z/a/j/n$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/j/n$a;->a()Lcom/aggmoread/sdk/z/a/j/n;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/g;->e:Lcom/aggmoread/sdk/z/a/j/n;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/j/n;->m()V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "JuHeVideoPreloadTag"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/j/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/t/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp delete  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp delete err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
