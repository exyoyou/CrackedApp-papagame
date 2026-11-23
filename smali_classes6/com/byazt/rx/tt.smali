.class public Lcom/byazt/rx/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x98,
        0xd
    }
.end annotation


# static fields
.field public static x:Lcom/byazt/zi/c;


# instance fields
.field public a:Z

.field public c:Z

.field public n:I

.field public sp:Z

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/rx/tt;->c:Z

    .line 6
    .line 7
    const-string v1, "https://apmplus.volces.com/apm/collect/crash"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/byazt/rx/tt;->tt:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "https://apmplus.volces.com/monitor/collect/c/session"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/byazt/rx/tt;->ve:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v1, 0x200

    .line 16
    .line 17
    iput v1, p0, Lcom/byazt/rx/tt;->uj:I

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/rx/tt;->n:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/byazt/rx/tt;->a:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/byazt/rx/tt;->sp:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/rx/tt;->sp:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/rx/tt;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/rx/tt;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rx/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/rx/tt;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rx/tt;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
