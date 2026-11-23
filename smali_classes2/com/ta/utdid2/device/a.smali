.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->e:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/ta/utdid2/device/a;->f:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->f:J

    .line 2
    .line 3
    return-void
.end method

.method h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->e:J

    .line 2
    .line 3
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
