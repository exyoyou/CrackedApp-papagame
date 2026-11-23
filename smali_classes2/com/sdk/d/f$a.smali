.class public Lcom/sdk/d/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/sdk/d/f;


# direct methods
.method public constructor <init>(Lcom/sdk/d/f;)V
    .locals 1

    iput-object p1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v0, p1, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sdk/d/f;->b()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/sdk/d/f;->a()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    .line 13
    .line 14
    :goto_0
    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    .line 15
    .line 16
    if-ne v2, v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2
    iput-object v0, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/sdk/d/f;->b()V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/sdk/d/f;->b()V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    iget-object v1, v1, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_0
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0, v1, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v1}, Lcom/sdk/d/f;->b()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
