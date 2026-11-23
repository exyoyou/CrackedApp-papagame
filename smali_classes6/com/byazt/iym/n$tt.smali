.class public Lcom/byazt/iym/n$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zd/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x3a6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/iym/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iym/n$tt$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/zd/c$c;

.field public final n:Lcom/byazt/nr/d;

.field public final tt:Lcom/byazt/iym/n$tt$c;

.field public final uj:I

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/zd/c$c;ILcom/byazt/iym/n$tt$c;Lcom/byazt/nr/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/iym/n$tt;->ve:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/byazt/iym/n$tt;->tt:Lcom/byazt/iym/n$tt$c;

    .line 10
    .line 11
    iput p2, p0, Lcom/byazt/iym/n$tt;->uj:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/byazt/iym/n$tt;->n:Lcom/byazt/nr/d;

    .line 14
    .line 15
    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/byazt/iym/n$tt;->ve:Z

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->tt:Lcom/byazt/iym/n$tt$c;

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {v0, p1}, Lcom/byazt/iym/n$tt$c;->c(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/byazt/iym/n$tt;->ve:Z

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->tt:Lcom/byazt/iym/n$tt$c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/byazt/iym/n$tt$c;->c()V

    :cond_1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/iym/n$tt;->c(Z)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/iym/n$tt;->ve:Z

    .line 8
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/byazt/zd/c$c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->n:Lcom/byazt/nr/d;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x4e20

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    long-to-float v0, p1

    .line 11
    iget v1, p0, Lcom/byazt/iym/n$tt;->uj:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/iym/n$tt;->c(Z)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/byazt/iym/n$tt;->ve:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zd/c$c;->c(JJ)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->tt:Lcom/byazt/iym/n$tt$c;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/iym/n$tt$c;->c(JJ)V

    :cond_2
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/byazt/iym/n$tt;->c(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->tt()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n$tt;->c:Lcom/byazt/zd/c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
