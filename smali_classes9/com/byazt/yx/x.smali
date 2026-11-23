.class public final Lcom/byazt/yx/x;
.super Lcom/byazt/eg/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfc,
        0x47
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:J

.field public final ve:Lcom/byazt/mk/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/byazt/mk/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/eg/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yx/x;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/byazt/yx/x;->tt:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/byazt/yx/x;->ve:Lcom/byazt/mk/n;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/eg/rl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/x;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/eg/rl;->c(Ljava/lang/String;)Lcom/byazt/eg/rl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/yx/x;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()Lcom/byazt/mk/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/x;->ve:Lcom/byazt/mk/n;

    .line 2
    .line 3
    return-object v0
.end method
