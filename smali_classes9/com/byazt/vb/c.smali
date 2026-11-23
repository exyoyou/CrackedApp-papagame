.class public Lcom/byazt/vb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x763,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vb/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/rz/c;

.field public c:I

.field public da:Lcom/byazt/rz/c;

.field public i:Lcom/byazt/rz/c;

.field public m:I

.field public n:Landroid/content/Context;

.field public sl:Z

.field public sp:Lcom/byazt/rz/c;

.field public t:Lcom/byazt/vb/uj;

.field public tt:Lcom/byazt/vb/a;

.field public u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/vb/sl;

.field public x:Lcom/byazt/rz/c;

.field public yp:I

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/vb/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0xc8

    .line 4
    iput v0, p0, Lcom/byazt/vb/c;->yp:I

    const/16 v0, 0xa

    .line 5
    iput v0, p0, Lcom/byazt/vb/c;->z:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/byazt/vb/c;->m:I

    .line 7
    iput v0, p0, Lcom/byazt/vb/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/vb/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/vb/c;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/vb/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/vb/c;->z:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vb/c;->n:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/vb/c;->a:Lcom/byazt/rz/c;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Lcom/byazt/vb/a;)Lcom/byazt/vb/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/vb/c;->tt:Lcom/byazt/vb/a;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Lcom/byazt/vb/sl;)Lcom/byazt/vb/sl;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/vb/c;->ve:Lcom/byazt/vb/sl;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Lcom/byazt/vb/uj;)Lcom/byazt/vb/uj;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/vb/c;->t:Lcom/byazt/vb/uj;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/vb/c;->uj:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/vb/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/vb/c;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/vb/c;->sl:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/vb/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/vb/c;->yp:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vb/c;->sp:Lcom/byazt/rz/c;

    return-object p1
.end method

.method public static synthetic uj(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vb/c;->i:Lcom/byazt/rz/c;

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/vb/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/vb/c;->m:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vb/c;->x:Lcom/byazt/rz/c;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/byazt/rz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->da:Lcom/byazt/rz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/byazt/rz/c;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/vb/c;->i:Lcom/byazt/rz/c;

    return-object v0
.end method

.method public c(Lcom/byazt/vb/a;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/vb/c;->tt:Lcom/byazt/vb/a;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/vb/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public da()Lcom/byazt/vb/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->ve:Lcom/byazt/vb/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->n:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/rz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->x:Lcom/byazt/rz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/vb/c;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()Lcom/byazt/rz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->a:Lcom/byazt/rz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vb/c;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Lcom/byazt/vb/a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/vb/c;->tt:Lcom/byazt/vb/a;

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vb/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()Lcom/byazt/vb/uj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/vb/c;->t:Lcom/byazt/vb/uj;

    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/vb/c;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public x()Lcom/byazt/rz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vb/c;->sp:Lcom/byazt/rz/c;

    .line 2
    .line 3
    return-object v0
.end method
