.class final Lcn/fly/tools/a/e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/a/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/fly/tools/a/e$a$b;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcn/fly/tools/a/e$a$b;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcn/fly/tools/a/e$a$b;->c:Z

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/fly/tools/a/e$a$b;->d:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;ZLcn/fly/tools/a/e$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/fly/tools/a/e$a$b;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcn/fly/tools/a/e$a$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/fly/tools/a/e$a$b;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcn/fly/tools/a/e$a$b;->e:Ljava/lang/Class;

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lcn/fly/tools/a/e$a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:TT;>(",
            "Ljava/lang/Class<",
            "TT;>;TO;)",
            "Lcn/fly/tools/a/e$a$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/a/e$a$b;->d:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/tools/a/e$a$b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 4
    new-array v6, v0, [Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcn/fly/tools/a/e$a$b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcn/fly/tools/a/e$a$b;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 7
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lcn/fly/tools/a/e$a;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 8
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/fly/tools/a/e$a$b;->e:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "V"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcn/fly/tools/a/e$a;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 10
    iget-object v1, p0, Lcn/fly/tools/a/e$a$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcn/fly/tools/a/e$a$b;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/fly/tools/a/e$a$b;->c:Z

    invoke-static/range {v1 .. v6}, Lcn/fly/tools/xcrash/XCrash;->inv0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
