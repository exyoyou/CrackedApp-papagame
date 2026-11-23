.class public Lcom/byazt/lr/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lr/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lr/n$c$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public sl:Ljava/lang/String;

.field public sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/lr/n$c$c;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:J

.field public ve:J

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

.method public static synthetic a(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/lr/n$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->sp:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->da:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/lr/n$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/lr/n$c;->uj:J

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/lr/n$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/lr/n$c;->ve:J

    return-wide v0
.end method

.method public static synthetic x(Lcom/byazt/lr/n$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lr/n$c;->sl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->i:Ljava/lang/String;

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/lr/n$c;->ve:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/lr/n$c$c;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/lr/n$c;->sp:Ljava/util/List;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->t:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->x:Ljava/lang/String;

    return-void
.end method

.method public sp(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->da:Ljava/lang/String;

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/lr/n$c;->uj:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->tt:Ljava/lang/String;

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->a:Ljava/lang/String;

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->n:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/lr/n$c;->sl:Ljava/lang/String;

    return-void
.end method
