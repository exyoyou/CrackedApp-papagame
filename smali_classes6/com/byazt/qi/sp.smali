.class public Lcom/byazt/qi/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20f,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qi/sp$c;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public n:Lcom/byazt/qi/x;

.field public tt:Ljava/lang/String;

.field public uj:Z

.field public ve:Ljava/lang/String;


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

.method public static synthetic c(Lcom/byazt/qi/sp;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qi/sp;->c:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/qi/sp;Lcom/byazt/qi/x;)Lcom/byazt/qi/x;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/qi/sp;->n:Lcom/byazt/qi/x;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/qi/sp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/qi/sp;->tt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/qi/sp;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/qi/sp;->uj:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/qi/sp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qi/sp;->ve:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public c()Landroid/content/Context;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/qi/sp;->c:Landroid/content/Context;

    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/qi/sp;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public uj()Lcom/byazt/qi/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qi/sp;->n:Lcom/byazt/qi/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qi/sp;->uj:Z

    .line 2
    .line 3
    return v0
.end method
