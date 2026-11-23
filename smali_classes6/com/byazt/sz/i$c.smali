.class public Lcom/byazt/sz/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x40
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/sz/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/sz/i$c;

.field public c:Ljava/lang/String;

.field public da:Z

.field public i:Z

.field public n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/byazt/sz/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Z

.field public sp:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Lorg/json/JSONObject;

.field public ve:Lorg/json/JSONObject;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sz/i$c;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/i$c;->a:Lcom/byazt/sz/i$c;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/i$c;->tt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/sz/i$c;->ve:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/sz/i$c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/sz/i$c;->i:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/i$c;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/i$c;->uj:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic uj(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/i$c;->x:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/i$c;->sp:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/sz/i$c;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/sz/i$c;->ve:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sz/i$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/sz/i$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(ILcom/byazt/sz/i$c;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/sz/i$c;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/sz/i$c;->tt:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/sz/i$c;->da:Z

    return-void
.end method

.method public n()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/i$c;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/i$c;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UGNode{id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/sz/i$c;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", name=\'"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/sz/i$c;->tt:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7d

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/sz/i$c;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Lcom/byazt/sz/i$c;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/sz/i$c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/sz/i$c;->sl:Z

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/sz/i$c;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/sz/i$c;->i:Z

    return v0
.end method
