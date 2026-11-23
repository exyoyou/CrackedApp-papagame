.class public Lcom/byazt/rc/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26c,
        0x36
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Z

.field public uj:Lcom/byazt/yj/gt;

.field public ve:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/byazt/yj/gt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/rc/ve;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/byazt/rc/ve;->tt:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/byazt/rc/ve;->ve:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/rc/ve;->uj:Lcom/byazt/yj/gt;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/ve;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/rc/ve;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()Lcom/byazt/yj/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/ve;->uj:Lcom/byazt/yj/gt;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/rc/ve;->ve:Z

    .line 2
    .line 3
    return v0
.end method
