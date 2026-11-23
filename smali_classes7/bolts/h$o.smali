.class Lbolts/h$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->l(Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/g<",
        "Ljava/lang/Void;",
        "Lbolts/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/c;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Lbolts/g;

.field final synthetic d:Ljava/util/concurrent/Executor;

.field final synthetic e:Lbolts/f;

.field final synthetic f:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/h;Lbolts/c;Ljava/util/concurrent/Callable;Lbolts/g;Ljava/util/concurrent/Executor;Lbolts/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$o;->f:Lbolts/h;

    .line 2
    .line 3
    iput-object p2, p0, Lbolts/h$o;->a:Lbolts/c;

    .line 4
    .line 5
    iput-object p3, p0, Lbolts/h$o;->b:Ljava/util/concurrent/Callable;

    .line 6
    .line 7
    iput-object p4, p0, Lbolts/h$o;->c:Lbolts/g;

    .line 8
    .line 9
    iput-object p5, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iput-object p6, p0, Lbolts/h$o;->e:Lbolts/f;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbolts/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lbolts/h$o;->b(Lbolts/h;)Lbolts/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lbolts/h;)Lbolts/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lbolts/h$o;->a:Lbolts/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lbolts/c;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lbolts/h;->e()Lbolts/h;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object p1, p0, Lbolts/h$o;->b:Ljava/util/concurrent/Callable;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lbolts/h$o;->c:Lbolts/g;

    .line 36
    .line 37
    iget-object v1, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lbolts/h;->N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lbolts/h$o;->e:Lbolts/f;

    .line 44
    .line 45
    invoke-virtual {v0}, Lbolts/f;->a()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lbolts/g;

    .line 50
    .line 51
    iget-object v1, p0, Lbolts/h$o;->d:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lbolts/h;->N(Lbolts/g;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_1
    invoke-static {v0}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
