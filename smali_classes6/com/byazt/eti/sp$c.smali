.class public Lcom/byazt/eti/sp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0xb4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eti/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/eti/sp$c$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final c:Ljava/lang/String;

.field public final n:I

.field public final sp:I

.field public final tt:I

.field public final uj:Z

.field public final ve:I


# direct methods
.method private constructor <init>(Lcom/byazt/eti/sp$c$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->c(Lcom/byazt/eti/sp$c$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/eti/sp$c;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->tt(Lcom/byazt/eti/sp$c$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/eti/sp$c;->tt:I

    .line 5
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->ve(Lcom/byazt/eti/sp$c$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/eti/sp$c;->ve:I

    .line 6
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->uj(Lcom/byazt/eti/sp$c$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/eti/sp$c;->uj:Z

    .line 7
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->n(Lcom/byazt/eti/sp$c$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/eti/sp$c;->a:I

    .line 8
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->a(Lcom/byazt/eti/sp$c$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/eti/sp$c;->sp:I

    .line 9
    invoke-static {p1}, Lcom/byazt/eti/sp$c$c;->sp(Lcom/byazt/eti/sp$c$c;)I

    move-result p1

    iput p1, p0, Lcom/byazt/eti/sp$c;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/eti/sp$c$c;Lcom/byazt/eti/sp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/eti/sp$c;-><init>(Lcom/byazt/eti/sp$c$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/eti/sp$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c;->a:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/eti/sp$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/eti/sp$c;->tt:I

    return p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/eti/sp$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eti/sp$c;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/eti/sp$c;->tt:I

    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eti/sp$c;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eti/sp$c;->uj:Z

    .line 2
    .line 3
    return v0
.end method
