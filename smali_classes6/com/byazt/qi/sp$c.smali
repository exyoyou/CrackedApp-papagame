.class public Lcom/byazt/qi/sp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20f,
        0xb4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qi/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public n:Lcom/byazt/qi/x;

.field public final tt:Ljava/lang/String;

.field public uj:Z

.field public final ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qi/sp$c;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/qi/sp$c;->ve:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/qi/sp$c;->tt:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/qi/sp$c;->uj:Z

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/byazt/qi/sp$c;->n:Lcom/byazt/qi/x;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Z)Lcom/byazt/qi/sp$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/qi/sp$c;->uj:Z

    return-object p0
.end method

.method public c()Lcom/byazt/qi/sp;
    .locals 2

    .line 3
    new-instance v0, Lcom/byazt/qi/sp;

    invoke-direct {v0}, Lcom/byazt/qi/sp;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/byazt/qi/sp$c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/byazt/qi/sp;->c(Lcom/byazt/qi/sp;Landroid/content/Context;)Landroid/content/Context;

    .line 5
    iget-object v1, p0, Lcom/byazt/qi/sp$c;->tt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/qi/sp;->c(Lcom/byazt/qi/sp;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/byazt/qi/sp$c;->ve:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/qi/sp;->tt(Lcom/byazt/qi/sp;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/byazt/qi/sp$c;->n:Lcom/byazt/qi/x;

    invoke-static {v0, v1}, Lcom/byazt/qi/sp;->c(Lcom/byazt/qi/sp;Lcom/byazt/qi/x;)Lcom/byazt/qi/x;

    .line 8
    iget-boolean v1, p0, Lcom/byazt/qi/sp$c;->uj:Z

    invoke-static {v0, v1}, Lcom/byazt/qi/sp;->c(Lcom/byazt/qi/sp;Z)Z

    return-object v0
.end method

.method public c(Lcom/byazt/qi/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qi/sp$c;->n:Lcom/byazt/qi/x;

    return-void
.end method
