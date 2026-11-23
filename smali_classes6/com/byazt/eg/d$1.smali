.class public final Lcom/byazt/eg/d$1;
.super Lcom/byazt/eg/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x264
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/eg/d;->c(Lcom/byazt/eg/rl;JLcom/byazt/mk/n;)Lcom/byazt/eg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/eg/rl;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/mk/n;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/rl;JLcom/byazt/mk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eg/d$1;->c:Lcom/byazt/eg/rl;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/eg/d$1;->tt:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/eg/d$1;->ve:Lcom/byazt/mk/n;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/eg/d;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/eg/rl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/d$1;->c:Lcom/byazt/eg/rl;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/eg/d$1;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()Lcom/byazt/mk/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/d$1;->ve:Lcom/byazt/mk/n;

    .line 2
    .line 3
    return-object v0
.end method
