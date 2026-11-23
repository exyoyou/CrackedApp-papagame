.class public Lcom/byazt/pik/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x387,
        0x2e
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:J

.field public ve:J


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


# virtual methods
.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/pik/n;->tt:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/pik/n;->tt:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pik/n;->c:Ljava/lang/String;

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pik/n;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/pik/n;->ve:J

    return-wide v0
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/pik/n;->ve:J

    return-void
.end method

.method public ve()Z
    .locals 2

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/pik/n;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
